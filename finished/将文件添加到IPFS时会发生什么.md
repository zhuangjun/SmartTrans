＃ 将文件添加到IPFS时会发生什么？

> 本文翻译自：https://medium.com/textileio/whats-really-happening-when-you-add-a-file-to-ipfs-ae3b8b5e4b0f
> 
> 译者：[区块链中文字幕组](https://github.com/BlockchainTranslator/EOS) [小丹](https://github.com/zhuangjun)
> 
> 翻译时间：2018-10-28

----------------------------------------------------


## 从原始数据到Merkle DAG以及中间步骤

![][2]

照片[约翰PLENIOR] [3] [Unsplash] [4]

当你问某人他们最喜欢的[猫的视频][5]时，他们可能不会说“_啊哈，在这个服务器上，这个子域名下，这个文件路径下 猫.mp4_“。相反，他们可能会描述视频的内容：“_啊哈，那只猫将柜台上的玻璃打碎了_。这显然是一种人类思考内容的直观方式，但通常不是我们今天如何访问网络上内容的方式。话虽如此，像[IPFS][7]这样的去中心化协议实际上使用这种类型的[内容寻址][8]在去中心化的网络上查找内容。在本文中，我们将详细探讨整个过程的工作原理，深入了解在向IPFS添加文件时会发生什么。在我们参与其中的同时，我们将花费大量时间来学习IPLD，即行星际文件系统的基础数据结构。

#### 指纹识别

首先，为了支持内容寻址，我们需要提出一些方法来创建我们可用于引用所述内容的内容的“指纹”或摘要。与查找书籍类似，我们使用ISPN号码。实际上，Web上的内容寻址系统（如IPFS）使用加密哈希函数来创建指纹。基本上，我们采用原始内容（在本例中为猫照片），并通过[哈希函数][9]运行该数据，以生成摘要。保证该摘要在加密方式上对文件（或图像或其他）的内容以及该文件唯一。如果我将该文件更改一位，则哈希将变得完全不同。

![][12]

从原始图像到加密摘要到内容id（multihash）。

所以我们已经哈希化了图像（创建了一个摘要），接下来呢？我们所追求的是内容寻址/标识符。因此，我们现在需要获取该摘要，并将其转换为IPFS和其他系统可用于定位它的内容.但这并非如此简单。如果将来事情发生变化，我们想改变我们处理内容的方式会怎样？如果有人发明了更好的哈希函数怎么办？即使是我们现在拥有的IP系统也必须进行升级。我们IPFS的优秀人员也想到了这一点！

#### 多重哈希

您是否注意到IPFS哈希似乎都已`Qm`开头？这是因为那些哈希实际上叫做[多重哈希][13]。这很酷，因为本身指定了它使用的哈希函数，以及多重哈希的前两个字节中结果哈希的长度。在我们的大多数例子中，十六进制的第一部分是12，其中12表示这是[`SHA256`][14][`哈希函数`][14]，输出长度是20十六进制（或32字节） ...当我们[base58编码][15]整个对象时，我们得到`Qm`的地址。那么你可能会问，为什么base58编码整个对象？好吧，因为避免了相似的字母：0（零），O（大写o），I（大写i）和l（小写L），非字母数字字符+（加号）和/（斜杠）被删除，使它更具人性化。所有这一切都是因为我们想要一个面向未来的系统，允许多种不同的指纹识别机制共存。因此，如果这个更好的哈希函数确实被发明了，我们将简单地改变多重哈希的前几个字节，并且瞧... IPFS哈希不再以`Qm…`开头，但因为我们使用多重哈希，旧的哈希函数仍然有效，新的也是。

#### Merkle DAG ➞ IPLD

好的，我已经有了文件，并且已经哈希编码了。但这不是全部。整个事情是这样的...

![][17]

大文件会被分块，哈希并组织成IPLD（Merkle DAG对象）。

内容被分成更小的部分（每个约256k），对每个部分进行哈希，为每个块创建CID，然后将这些块组合成分层数据结构，为此计算单个基本CID。
这种数据结构基本上称为[Merkle DAG][18]，或[有向无环图][19]。

这是一个关于协议实验室的Juan Benet的精彩视频，解释了IPFS如何使用Merkle DAG作为其核心数据结构......用于所谓的[行星际关联数据（或IPLD）][20]结构：

![][21]

#### 关联数据

关联数据实际上是去中心化的网络社区中的人们已经谈论了很长一段时间。这是Tim Berners-Lee多年来一直在努力的事情，他的新公司[Solid][22]正在围绕它开展业务。

基本上我们所讨论的是一种将一切建模为一系列链接对象的结构。在IPLD世界中，我们有对象，每个对象都有`数据`和`链接数组`字段（其中`数据`可以是一小块非结构化，任意二进制数据，而`链接数组`是一个`链接`结构数组，其中只是到其他IPFS对象的链接）。说到这里，`链接数组`每个都有一个`名字`，一个链接对象的Hash（或CID），以及一个`大小`，它表示链接对象的大小。最后一点信息实际上是这样我们可以估计对象/文件大小而无需预先获取太多数据，但它非常好。

IPLD（对象）

* `Data`  - 大小 < 256 kB的非结构化二进制数据blob。
* `Links`  - 链接结构数组。这些是指向其他IPFS对象的链接。

Link结构有三个数据字段

* `Name`  - 链接的名称
* `Hash`  - 链接的IPFS对象的哈希值
* `Size`  - 链接的IPFS对象的累积大小，包括以下_its_链接

#### 边干边学

我们实际上可以使用IPFS命令行工具来探索IPLD对象。首先，确保安装了IPFS，并且熟悉使用命令行。如果您需要入门教程，请查看[构件系列的第1节][23]。一旦你准备好了，我们将快速浏览一下不同猫图像的对象结构（使用[handy dandy jq tool][24]）。从以下命令开始，该命令管道（`|`）将IPFS对象获取到`jq`命令的结果。
    
    
    ipfs object get QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ | jq


产生以下输出：
    
    
    {  
      "Links": [  
        {  
          "Name": "cat.jpg",  
          "Hash": "Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u",  
          "Size": 443362  
        }  
      ],  
      "Data": "bu0001"  
    }


请注意，此对象包含单个“链接”，我们可以使用相同的命令进一步探索：
    
    
    ipfs object get Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u | jq

反过来，产生以下输出。请注意，两个`链接数组`的大小均小于256K：
    
    
    {  
      "Links": [  
        {  
          "Name": "",  
          "Hash": "QmPEKipMh6LsXzvtLxunSPP7ZsBM8y9xQ2SQQwBXy5UY6e",  
          "Size": 262158  
        },  
        {  
          "Name": "",  
          "Hash": "QmT8onRUfPgvkoPMdMvCHPYxh98iKCfFkBYM1ufYpnkHJn",  
          "Size": 181100  
        }  
      ],  
      "Data": "bu0002u0018ކu001b ��u0010 ކu000b"  
    }

这非常酷，并且由于DAG的灵活性（简单的基于链接的图形），我们可以使用IPLD表示我们想要的任何数据结构。例如，假设您有以下目录结构，并且您想将其添加到IPFS。首先，这样做非常容易（见下文），其次，使用DAG在IPFS中表示数据的好处变得非常明显，我们稍后会看到。
    
    
    test_dir/  
    ├── bigfile.js  
    ├── *hello.txt  
    └── my_dir  
        ├── *my_file.txt  
        └── *testing.txt

在这个例子中，假设带有星号（`*`） - `hello.txt`，`my_file.txt`和`testing.txx`-的所有三个文件包含相同的文本：“`Hello World！/ n` ”。现在让我们将它们添加到IPFS：
    
    
    ipfs add -r test_dir/

执行此操作时，最终得到的DAG看起来像这样：

![][26]

目录结构图，最初来自[ConsenSys blog][27]。

在哪里（取决于目录中文件的实际内容），最终得到一系列通过其CID链接的对象。在顶层，我们有实际的文件夹，没有名称，但有一个CID。从那里我们可以直接链接到`bigfile.js`，底层的`my_dir`和`hello.txt`。从`my_dir`（中间）我们链接到`my_file.txt`和`testing.txt`，两者实际上都引用了相同的CID！这很酷。因为我们引用内容， 而不是文件本身！最后，在左下角，我们有了`bigfile.js`，它已被分成三个较小的部分，每个部分都有自己的CID，它们共同构成了更大的文件。如果您在树上跟踪所有这些CID，您将获得一个描述其下方内容的CID。这是一个关键概念......

我们有`数据`和`链接数组`的事实为我们的IPFS对象集合提供了一个类似图形的结构（或树）。 DAG意味着**D**意味着**A**循环**G** 图，而Merkle来自发明家的名字，[Ralph Merkle][18]，他实际上在1979年获得了哈希树的专利。无论如何，Merkle DAG给我们的是内容寻址，这样所有内容都由其加密哈希唯一标识，包括它引用的东西的链接。这使得结构篡改证明，因为所有内容都使用其哈希 - 右哈希，右内容进行验证。而且，由于我们正在哈希文件的内容，我们没有重复，因为在Merkle DAG世界中，所有拥有相同内容的对象被认为是相等的（即它们的哈希值是相同的），因此我们只存储他们一次， 去重复性设计。

我们可以使用Merkle DAG的这个想法，并从命令行中自己组装大型对象。例如，让我们抓住一个不错的大jpg玩。你可以`ipfs cat`它，或者只是[直接从GitHub下载][28]如果你想：
    
    
    ipfs cat QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9 > cosmos.jpg

现在你可以在本地`add`它，如果你最初`cat`它，请确保哈希匹配（这里我们将返回的哈希分配给env变量`hash`）：
    
    
    hash=`ipfs add -q cosmos.jpg`  
    echo $hash

您应该返回一个看起来与此完全相同的CID哈希值（加上一些进度）：
    
    
    QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9

现在，让我们看一下该特定图像的底层`ipfs对象：
    
    
    ipfs ls -v $hash

请注意，每个链接对象大约是256k。这些块一起构成了整个图像。因此，当从网络请求此文件时，我们实际上可以从不同的对等方获取位，然后我们的对等方将把它们全部放在一起并向我们提供我们想要的文件。真正去中心化！
    
    
    Hash                                           Size   Name  
    QmPHPs1P3JaWi53q5qqiNauPhiTqa3S1mbszcVPHKGNWRh 262158   
    QmPCuqUTNb21VDqtp5b8VsNzKEMtUsZCCVsEUBrjhERRSR 262158   
    QmS7zrNSHEt5GpcaKrwdbnv1nckBreUxWnLaV4qivjaNr3 262158   
    QmQQhY1syuqo9Sq6wLFAupHBEeqfB8jNnzYUSgZGARJrYa 76151

您还可以使用这个[超级新的有趣工具][29]在浏览器中探索DAG（IPLD obejcts）。查看一个有趣的git示例。或者甚至更好，探索[上面的DAG对象][30]。

现在，只是为了向您展示以上四个块确实构成单个图像，您可以使用以下代码“手动”将块连接在一起以创建图像文件 - 这实际上就是`cat`正在做什么引用基本CID时的背景：
    
    
    ipfs cat   
    QmPHPs1P3JaWi53q5qqiNauPhiTqa3S1mbszcVPHKGNWRh   
    QmPCuqUTNb21VDqtp5b8VsNzKEMtUsZCCVsEUBrjhERRSR   
    QmS7zrNSHEt5GpcaKrwdbnv1nckBreUxWnLaV4qivjaNr3   
    QmQQhY1syuqo9Sq6wLFAupHBEeqfB8jNnzYUSgZGARJrYa   
    > cat-cosmos.jpg  
    open cat-cosmos.jpg

或者，您可以再次使用管道更简洁地执行此操作：
    
    
    ipfs refs $hash | ipfs cat > test.jpg ; open test.jpg

你去吧它一直都是链接。最重要的是，我们已经学习了一些IPFS命令行工具来操作IPFS DAG对象。便利！

#### 回顾

那么让我们快速回顾一下。 Merkle DAG是IPFS的核心概念，但它们也是git，bitcoin，dat等许多其他技术的核心。这些DAG基本上是由内容块组成的哈希“树”，每个内容块都有一个唯一的哈希。您可以引用该树中的任何块，这意味着您可以从任何子块组合构建树。这带来了另一个关于DAG的令人敬畏的事情，特别是在处理大型文件时：要引用大型数据文件，您只需要base CID，并且您实际上已经对整个对象进行了验证引用。对于存储在网络上多个位置的大型流行文件，发送CID然后从多个对等方请求位使文件共享变得轻而易举，这意味着您只需要分享几个字节，而不是整个文件。

但是，当然，您很少直接与DAG或对象进行交互。大多数情况下，友好的`ipfs add`命令只会根据您指定的文件中的数据创建merkle DAG，为您创建基础IPNS对象，然后您将以愉快的方式继续。那么问题的答案是“将文件添加到IPFS时会发生什么？”是......密码学，数学，网络和一些魔法！

这就是全部。您现在已经知道将文件添加到IPFS时会发生什么。

[1]: https://cdn-images-1.medium.com/freeze/max/75/0*vLVPilab5OAlKSLR?q=20
[2]: https://cdn-images-1.medium.com/max/2000/0*vLVPilab5OAlKSLR
[3]: https://unsplash.com/@jplenio?utm_source=medium&utm_medium=referral
[4]: https://unsplash.com?utm_source=medium&utm_medium=referral
[5]: https://en.wikipedia.org/wiki/Cats_and_the_Internet
[6]: https://youtu.be/UoUEQYjYgf4
[7]: https://ipfs.io/
[8]: https://medium.com/textileio/enabling-the-distributed-web-abf7ab33b638
[9]: https://en.wikipedia.org/wiki/Hash_function
[10]: https://cdn-images-1.medium.com/freeze/max/75/1*CsNzyMTjpZGUOqV7NAT-mg.png?q=20
[11]: https://medium.com/textileio/undefined
[12]: https://cdn-images-1.medium.com/max/2000/1*CsNzyMTjpZGUOqV7NAT-mg.png
[13]: https://multiformats.io/multihash/
[14]: https://en.wikipedia.org/wiki/SHA-2
[15]: https://en.wikipedia.org/wiki/Base58
[16]: https://cdn-images-1.medium.com/freeze/max/75/1*47aWoFnX2SqRda94YXCcnw.png?q=20
[17]: https://cdn-images-1.medium.com/max/2000/1*47aWoFnX2SqRda94YXCcnw.png
[18]: https://en.wikipedia.org/wiki/Merkle_tree
[19]: https://en.wikipedia.org/wiki/Directed_acyclic_graph
[20]: https://ipld.io
[21]: https://i.embed.ly/1/display/resize?url=https%3A%2F%2Fi.ytimg.com%2Fvi%2FBqs_LzBjQyk%2Fhqdefault.jpg&key=a19fcc184b9711e1b4764040d3dc5c07&width=40
[22]: https://solid.mit.edu
[23]: https://youtu.be/gOzAYiT1Z4U
[24]: https://stedolan.github.io/jq/
[25]: https://cdn-images-1.medium.com/freeze/max/75/1*qyB8tGXLa_55MMG4su_FLg.jpeg?q=20
[26]: https://cdn-images-1.medium.com/max/2000/1*qyB8tGXLa_55MMG4su_FLg.jpeg
[27]: https://medium.com/@ConsenSys/an-introduction-to-ipfs-9bba4860abd0
[28]: https://raw.githubusercontent.com/flyingzumwalt/decentralized-web-primer/master/samples/tree-in-cosmos.jpg
[29]: https://explore.ipld.io
[30]: https://explore.ipld.io/#/explore/QmWNj1pTSjbauDHpdyg5HQ26vYcNWnubg1JehmwAE9NnU9
[31]: https://medium.com/textileio
[32]: https://textile.photos/join
[33]: https://www.textile.io



#### 区块链中文字幕组

致力于前沿区块链知识和信息的传播，为中国融入全球区块链世界贡献一份力量。

如果您懂一些技术、懂一些英文，欢迎加入我们，加微信号:w1791520555。

[点击查看项目GITHUB，及更多的译文...](https://github.com/BlockchainTranslator/EOS)

#### 本文译者简介

小丹 区块链技术爱好者  热衷于区块链底层技术研究

版权所有，转载需完整注明以上内容。

----------------------------------------------------