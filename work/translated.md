
[Source](https://medium.com/all-things-venture-capital/intro-to-vc-how-blockchain-protocols-work-750e9371b053 "Permalink to How Blockchain Protocols Work – All Things Venture Capital – Medium")
[来源]（https://medium.com/all-things-venture-capital/intro-to-vc-how-blockchain-protocols-work-750e9371b053“区块链协议如何工作的永久链接 - 所有事情风险投资 - 中等” ）

# How Blockchain Protocols Work – All Things Venture Capital – Medium
#区块链协议如何工作 - 所有事情风险投资 - 中等

This post kicks off part two of my three part series on blockchain technology. In the first part of the series I discussed the historical context of the blockchain, providing a history of both [the modern internet][1] and [blockchain networks][2].
这篇文章揭开了我关于区块链技术的三部分系列的第二部分。在本系列的第一部分中，我讨论了区块链的历史背景，提供了[现代互联网][1]和[区块链网络][2]的历史。

This second part of the series will focus on how the technology works, including one post on how protocols work and another on ICOs, DAPPs and DAOs. The third part of the series will then highlight a few of the most attractive areas for investment in the space. Also, if you find these posts interesting and want to see more, [follow my publication on twitter][3]! Alright, enough of the overview, let's dive in!
本系列的第二部分将重点介绍该技术的工作原理，包括关于协议如何工作的一篇文章以及关于ICO，DAPP和DAO的另一篇文章。该系列的第三部分将重点介绍一些最具吸引力的空间投资领域。此外，如果您发现这些帖子很有趣并希望了解更多信息，请[关注我在twitter上发布的内容][3]！好的，足够的概述，让我们潜入！

![][4]

So why are we starting with protocols? We're starting with protocols because they are the fundamental breakthrough of blockchain technology. When Satoshi Nakamoto published his paper in 2008, the true technological innovation of bitcoin was the blockchain protocol that powered the bitcoin network. However, before we get into the nitty-gritty of blockchain protocols, I think it's helpful to start with the protocols that power the modern internet (blockchain protocols wouldn't be possible without them). If you have a solid understanding of these, feel free to skip ahead!
那么我们为什么要从协议开始呢？我们从协议开始，因为它们是区块链技术的根本突破。当Satoshi Nakamoto在2008年发表论文时，比特币的真正技术创新是为比特币网络提供动力的区块链协议。然而，在我们深入探讨区块链协议的细节之前，我认为从为现代互联网提供动力的协议开始是有帮助的（没有它们就不可能实现区块链协议）。如果您对这些有充分的了解，请随意跳过！

### **Internet Protocols**
###**互联网协议**

The first question to ask is: what is a protocol? A protocol is [the method by which data is sent from one computer to another ][5]over the internet. The three protocols that power the modern internet are the HyperText Transfer Protocol ("HTTP"), Transmission Control Protocol ("TCP"), and Internet Protocol ("IP"). The TCP and IP are the protocols that help to route information across the network and HTTP is an application-level protocol for web browsers. If you're a little bit confused by what these terms mean, that's totally understandable. Let's break it down.
要问的第一个问题是：什么是协议？协议是[通过互联网将数据从一台计算机发送到另一台计算机的方法][5]。为现代互联网提供动力的三种协议是超文本传输​​协议（“HTTP”），传输控制协议（“TCP”）和互联网协议（“IP”）。 TCP和IP是帮助在网络上路由信息的协议，HTTP是用于Web浏览器的应用程序级协议。如果您对这些术语的含义感到有点困惑，那就完全可以理解了。让我们分解吧。

![][6]

Source: <https://www.researchgate.net/> | Uploaded by Stan Mierzwa
资料来源： <https://www.researchgate.net/> |由Stan Mierzwa上传

**TCP / IP**
**TCP / IP**

The Transmission Control Protocol and Internet Protocol make up what is known as the "internet protocol stack". This is due to the fact that they are the protocols that actually route information across a network. The graphic to the left provides a good visual of how this works. The Transmission Control Protocol takes information from your applications, breaks that information down into smaller data packets, adds headers so that the information can be repackaged in the recipient's computer, and then sends those data packets to the Internet Protocol. The IP then takes those data packets, adds IP headers (which includes the IP address of both the sender and the receiver) and routes that information across the internet. Once the data packets arrive at the recipient's computer, the recipient's IP passes them along to the TCP, which repackages them and sends them to the appropriate application.
传输控制协议和互联网协议构成了所谓的“互联网协议栈”。这是因为它们是实际通过网络路由信息的协议。左侧的图形提供了良好的视觉效果。传输控制协议从您的应用程序获取信息，将该信息分解为较小的数据包，添加标头以便可以在收件人的计算机中重新打包信息，然后将这些数据包发送到Internet协议。然后，IP获取这些数据包，添加IP头（包括发送者和接收者的IP地址）并在互联网上路由该信息。一旦数据包到达收件人的计算机，收件人的IP就会将它们传递给TCP，TCP会重新打包并将它们发送到相应的应用程序。

**HTTP**
****HTTP

Like I mentioned above, the HyperText Transfer Protocol is an application-level protocol. That means it is a protocol that sends data to the TCP / IP protocol stack (which then routes it across the network). HTTP is the protocol that allows web browsers to communicate with web servers. Let's look at an example. When you type a URL into Google Chrome, the web browser connects to a Domain Name Service and identifies what IP address the website is being hosted at. After identifying the website, the browser sends an HTTP request to the server (via the TCP / IP protocol stack). If the page exists, then the web server sends the content back to the browser and the browser displays it on the requester's screen. If the page does not exist, then the server sends back an HTTP 404 error saying that the page does not exist (I'm guessing we've all experienced this annoying error before). While HTTP is one type of application protocol, it certainly isn't the only one. There are a number of protocols that we use on a daily basis, including the Simple Mail Transfer Protocol, which enables email communication.
就像我上面提到的，超文本传输​​协议是一种应用程序级协议。这意味着它是一种将数据发送到TCP / IP协议栈（然后通过网络路由）的协议。 HTTP是允许Web浏览器与Web服务器通信的协议。我们来看一个例子。当您在Google Chrome中键入网址时，网络浏览器会连接到域名服务，并确定该网站所在的IP地址。在识别网站之后，浏览器向服务器发送HTTP请求（通过TCP / IP协议栈）。如果页面存在，则Web服务器将内容发送回浏览器，浏览器将其显示在请求者的屏幕上。如果页面不存在，那么服务器会发回HTTP 404错误，说明页面不存在（我猜我们之前都遇到过这个恼人的错误）。虽然HTTP是一种应用程序协议，但它肯定不是唯一的一种。我们每天都使用许多协议，包括简单邮件传输协议，它可以实现电子邮件通信。

Alright hopefully we didn't lose you there! I think it's helpful to start with the current internet protocol stack because blockchain protocols are actually built on top of TCP / IP, similar to application protocols like HTTP. If you're looking for a more detailed overview of internet protocols, check out [this awesome white paper ][7]written by Rus Shuler. Now, let's move on and dig into into how blockchain protocols work.
好吧希望我们没有在那里失去你！我认为从当前的互联网协议栈开始是有帮助的，因为区块链协议实际上建立在TCP / IP之上，类似于HTTP等应用程序协议。如果您正在寻找有关互联网协议的更详细的概述，请查看由Rus Shuler撰写的[这篇精彩的白皮书][7]。现在，让我们继续深入探讨区块链协议的工作原理。

### **Blockchain Protocols**
###**区块链协议**

As we discussed, protocols are a method for sending information across a network. Blockchain protocols approach this a little differently than the traditional internet protocols. Although not every blockchain protocol is the same, they share a few defining characteristics. Those characteristics include (i) distributed ledgers, (ii) encryption, (iii) consensus algorithms, and (iv) integrated blocks of data. Let's briefly discuss how each of these elements work.
正如我们所讨论的，协议是一种通过网络发送信息的方法。区块链协议与传统的互联网协议略有不同。虽然并非每个区块链协议都相同，但它们共享一些定义特征。这些特征包括（i）分布式分类帐，（ii）加密，（iii）一致性算法，以及（iv）集成数据块。让我们简要讨论一下这些元素是如何工作的。

![][8]

**Distributed Ledgers**
**分布式分类帐**

Distributed ledgers are probably the best place to start. So what is a distributed ledger? A distributed ledger is a decentralized database that is shared across several locations or network participants. Said differently, a distributed ledger is a peer-to-peer network where every piece of information / transaction is shared across the network and stored by each network participant (or "node").
分布式账本可能是最好的起点。那么什么是分布式账本？分布式分类帐是去中心化的数据库，可在多个位置或网络参与者之间共享。换句话说，分布式分类帐是对等网络，其中每条信息/交易在网络上共享并由每个网络参与者（或“节点”）存储。

Distributed ledgers directly contrast the client-server architecture that powers the modern internet. [A client-server architecture][9] is a model where information is stored on central servers and may be requested by users (known as "clients"). For example, institutions like Facebook, Google and Amazon have large, centralized servers where they store their users' transaction histories, personal information, etc. Clients (aka everyday users like you and me) tap into those servers through HTTP requests, which we discussed above. Peer-to-peer networks differ from the client-server model because they don't have an intermediary that acts as a central point of storage. Rather, each connected node acts as both a client _and _a server.
分布式账本直接对比了支持现代互联网的客户端 - 服务器架构。 [客户端 - 服务器架构][9]是一种模型，其中信息存储在中央服务器上并且可以由用户请求（称为“客户端”）。例如，Facebook，谷歌和亚马逊等机构拥有大型集中式服务器，用于存储用户的交易历史记录，个人信息等。客户（也称为您和我这样的日常用户）通过HTTP请求接入这些服务器，我们已经讨论过了以上。点对点网络与客户端 - 服务器模型不同，因为它们没有充当存储中心点的中介。相反，每个连接的节点都充当客户端_和_a服务器。

So why would we do this? What's the benefit? The benefit of using a distributed ledger rather than a centralized databases is that there is [no single point of failure, which decreases the odds that a network is hacked / information is lost][10]. In addition to that, there is not a single entity that owns the data stored on the network. This means that nobody is monetizing that data or using it in a way that the user doesn't approve of. As a result, users have control over their data and can decide what they want to do with it. In the future, network participants may actually be able to sell their data if they want to. For example, if you store your search history on a blockchain version of Google, then you may be able to sell that search history to advertisers. Advertisers would pay you for the ability to send you targeted adds rather than an intermediary like Google. However, I'm getting ahead of myself as this has yet to become a reality.
那我们为什么要这样做呢？有什么好处？使用分布式账本而不是集中式数据库的好处是[没有单点故障，这降低了网络遭到黑客攻击/信息丢失的可能性][10]。除此之外，没有一个实体拥有存储在网络上的数据。这意味着没有人通过用户不赞同的方式将数据货币化或使用它。因此，用户可以控制他们的数据，并可以决定他们想要用它做什么。将来，网络参与者实际上可以根据需要出售他们的数据。例如，如果您将搜索记录存储在区块链版本的Google上，那么您可以将该搜索记录出售给广告客户。广告商会向您支付向您发送有针对性的添加内容的费用，而不是Google等中介。然而，我已经领先于自己，因为这还没有成为现实。

Okay, one more point on distributed ledgers. I'm guessing you're thinking, THIS IS INSANE. It's a total invasion of privacy. Why would I store my personal information on a bunch of strangers' computers? Luckily, blockchain protocols have a solution for this: encryption. Blockchain protocols incorporate advanced encryption methods to conceal both the identities of network participants and the content of transactions, which is what we're going to cover in the next section.
好的，还有一点关于分布式账本。我猜你在想，这是内心的。这完全是对隐私的侵犯。为什么我要将我的个人信息存储在一堆陌生人的电脑上？幸运的是，区块链协议有一个解决方案：加密。区块链协议包含高级加密方法，以隐藏网络参与者的身份和交易内容，这是我们将在下一节中介绍的内容。

![][11]

**Encryption**
**加密**

Like I mentioned above, transactions executed on the blockchain are secured through advanced encryption algorithms. This is the key reason why blockchain networks are considered to be more secure than traditional internet protocols. So how does this encryption work? Unfortunately, it's a little bit complicated but I'm going to do my best to simplify it here. Encryption on the blockchain works through three core features: hashing, public / private key authentication, and digital signatures. Before we dive in, keep in mind that these encryption methods were not invented as a part of blockchain technology. Rather, blockchain incorporated existing encryption methods into its protocol.
就像我上面提到的，在区块链上执行的交易是通过高级加密算法来保护的。这是区块链网络被认为比传统互联网协议更安全的关键原因。那么这种加密是如何工作的呢？不幸的是，它有点复杂，但我会尽力在这里简化它。区块链上的加密通过三个核心功能实现：散列，公钥/私钥认证和数字签名。在我们深入研究之前，请记住，这些加密方法并非作为区块链技术的一部分而发明。相反，区块链将现有的加密方法合并到其协议中。

_Hashing:_
_Hashing：_

Let's start with the first core feature: hashing. Broadly speaking, h[ashing is a mathematical function][12] that takes an input of any length (this could be a letter, a sentence, or an entire book), and uses a formula to create a seemingly random output of a fixed number of letters and numbers. For example, if you [use the SHA 256][13] hashing function (which is used in Bitcoin's protocol) to create a hash of the line "This is a hash function!", you get the following output:
让我们从第一个核心功能开始：哈希。从广义上讲，h [灰化是一种数学函数][12]可以输入任意长度（可以是一个字母，一个句子或一本整本书），并使用公式来创建一个看似随机的固定输出字母和数字的数量。例如，如果你[使用SHA 256][13]散列函数（在比特币的协议中使用）来创建“这是一个散列函数！”这一行的散列，你会得到以下输出：

2c886077bbc252137f1d78d2915d96befe71bca1caf3ff9cc7b6dcb47b3c4248
2c886077bbc252137f1d78d2915d96befe71bca1caf3ff9cc7b6dcb47b3c4248

What's interesting about hash functions is that a small change in the input will create a completely different hash. For instance, if you remove the exclamation point and take the hash of "This is a hash function", the output would change to:
哈希函数的有趣之处在于输入中的小变化将创建完全不同的哈希。例如，如果删除感叹号并采用“这是一个哈希函数”的哈希值，则输出将更改为：

4ca94a9dbbe380459790d3ba464a1f916f9a30c1f2e01e023d306649236f651e
4ca94a9dbbe380459790d3ba464a1f916f9a30c1f2e01e023d306649236f651e

While there are a number of different hash functions (including SHA 1, SHA 256, MD 5, Keccak-256, etc.), they all adhere to a few important rules.
虽然有许多不同的散列函数（包括SHA 1，SHA 256，MD 5，Keccak-256等），但它们都遵循一些重要的规则。

1. The same input must always create the same output.
1.相同的输入必须始终创建相同的输出。
2. Two different inputs cannot produce the same output.
2.两个不同的输入不能产生相同的输出。
3. It must be impossible to determine the input given the output.
3.必须无法确定给定输出的输入。
4. A slight change to the input must completely change the output.
4.输入的微小变化必须完全改变输出。

So why does this matter? [Why are hash functions useful][14]? Hash functions have two characteristics that make them particularly useful for authentication. First, they can take an almost infinite amount of content and reduce it to a short string of characters. Second, as the rules above allude to, hash functions are unique one way functions. Therefore, by taking the hash of a file, you can generate a fixed string of characters that is unique to that file, which essentially functions as a _digital fingerprint _of the file.
那为什么这很重要？ [为什么哈希函数有用][14]？散列函数有两个特性，使它们对身份验证特别有用。首先，他们可以获取几乎无限量的内容并将其缩减为一小段字符。其次，正如上面提到的规则，哈希函数是唯一的单向函数。因此，通过获取文件的哈希值，您可以生成一个固定的字符串，该字符串对于该文件是唯一的，该字符串基本上用作文件的_digital指纹_。

As a result, it's much easier to verify that two files are exactly the same. Rather than check whether every single character of a document is exactly the same as the original, you can create a hash of that document and compare that to the hash of the original. If even a tiny alteration has been made to the document, the hash will be drastically different. Using an example, imagine that you pay for a digital book and want to confirm that the book has exactly the same content as the original. Rather than check every chapter to make sure nothing is missing, you can just create a hash of the book, compare that hash to the hash of the original and easily confirm that the 256 characters match up.
因此，验证两个文件完全相同要容易得多。您可以创建该文档的哈希值并将其与原始哈希值进行比较，而不是检查文档的每个字符是否与原始字符完全相同。如果对文档进行了微小的更改，则哈希将完全不同。举一个例子，假设您为一本数字图书付费，并想确认该图书与原版图书的内容完全相同。您可以只创建书籍的哈希值，将该哈希值与原始哈希值进行比较，然后轻松确认256个字符是否匹配，而不是检查每一章以确保没有遗漏任何内容。

So how is hashing used in blockchain protocols? It is used to create _digital signatures _and it is used to _integrate blocks of transactions_ to form an immutable ledger. We'll discuss each of those use cases below.
那么区块链协议中如何使用哈希？它用于创建_digital签名_并用于_集合交易块_以形成不可变的分类帐。我们将在下面讨论每个用例。

_Public / Private Key Encryption:_
_公共/私钥加密：_

Now that we understand hashing, let's move on to the second key component of encryption on the blockchain: public / private key encryption, also known as asymmetric encryption. I know that sounds fancy and complicated so let's break it down. There are two core methods of encrypting data: symmetric encryption and asymmetric encryption. [Symmetric encryption ][15]utilizes a single private key to both encrypt and decrypt a message. Symmetric encryption has been the most popular way to encrypt data for a long time and has several benefits; most notably, it's faster than asymmetric encryption. The only issue with symmetric encryption is that all parties need to have the private key to decrypt the message. In order for each party to have the private key, it needs to be distributed. Unfortunately, the only truly reliable way to distribute a private key is through in-person communication as all other communication methods could potentially be hacked. This could be an issue if you are trying to send encrypted data to someone in a different geographic region or to someone that you don't know personally.
现在我们了解了散列，让我们继续讨论区块链加密的第二个关键组成部分：公钥/私钥加密，也称为非对称加密。我知道这听起来很花哨和复杂，所以让我们把它分解。加密数据有两种核心方法：对称加密和非对称加密。 [对称加密][15]利用单个私钥来加密和解密消息。对称加密一直是最常用的加密数据的方式，并且有几个好处;最值得注意的是，它比非对称加密更快。对称加密的唯一问题是所有各方都需要使用私钥来解密消息。为了使每一方都拥有私钥，需要分发它。不幸的是，分发私钥的唯一真正可靠的方法是通过面对面的通信，因为所有其他通信方法都可能被黑客入侵。如果您尝试将加密数据发送给不同地理区域的某个人或您不认识的人，则可能会出现问题。

That brings us to asymmetric encryption. With asymmetric encryption, there are two keys: a public key and a private key. As the names imply, users broadly disseminate the public key but never share the private key. The two keys are mathematically linked, meaning that the content that is encrypted using the public key can only be decrypted using the private key. As an example, if John wants to send a message to Bob using asymmetric encryption, he can use Bob's public key to encrypt the message. After encrypting the message using Bob's public key, the only way to decrypt that message would be to use Bob's private key. This enables users to exchange messages without ever having to exchange keys. [While this negatively impacts the speed of transactions, it significantly increases security][16] and allows users to share content without needing to share a private key, making it particularly useful for blockchain protocols. As a result, all blockchain protocols incorporate asymmetric (or public / private key) encryption methods.
这带来了非对称加密。对于非对称加密，有两个密钥：公钥和私钥。顾名思义，用户广泛传播公钥但从不共享私钥。这两个密钥在数学上是链接的，这意味着使用公钥加密的内容只能使用私钥解密。例如，如果John想要使用非对称加密向Bob发送消息，他可以使用Bob的公钥来加密消息。在使用Bob的公钥加密消息之后，解密该消息的唯一方法是使用Bob的私钥。这使用户无需交换密钥即可交换消息。 [虽然这会对交易速度产生负面影响，但却显着提高了安全性][16]并允许用户共享内容而无需共享私钥，这使得它对区块链协议特别有用。因此，所有区块链协议都包含非对称（或公钥/私钥）加密方法。

_Digital Signatures:_
_数字签名：_

The final piece of the encryption puzzle is called a digital signature. Digital signatures are made possible by both hashing and public / private key encryption. Digital signatures enable users to _authenticate_ the identify of the sender and confirm that a document has not been altered in transit. So how do they work? I think the best way to understand digital signatures is by walking through the process of using them to authenticate a document.
加密难题的最后一部分称为数字签名。通过散列和公钥/私钥加密可以实现数字签名。数字签名使用户能够_authenticate_发件人的身份，并确认文件在传输过程中未被更改。那他们怎么工作？我认为理解数字签名的最佳方式是通过使用它们来验证文档的过程。

_Digital Signature Process:_
_数字签名流程：_

* First, the sender takes their message and creates a hash of it.
*首先，发件人接收他们的消息并创建它的散列。
* Second, the sender encrypts the hashed file using his / her private key and sends the document to the receiver.
*其次，发件人使用他/她的私钥加密散列文件，并将文档发送给接收者。
* Third, the receiver decrypts the message using the sender's public key. This allows the receiver to get the hash of the file.
*第三，接收方使用发送方的公钥解密消息。这允许接收器获取文件的哈希值。
* Fourth, the receiver takes the fully decrypted document and hashes it.
*第四，接收器获取完全解密的文档并对其进行哈希处理。
* Fifth, the receiver compares the two hashes and confirms that they match.
*第五，接收器比较两个哈希并确认它们匹配。

This allows the recipient to authenticate the identify of the sender and confirm that the information was not tampered with in transit because the two hashes will not match up if (i) the message's content had been altered in any way or (ii) if any key other than the sender's private key was used to encrypt the data. If you want to see this visually, you can find a helpful graphic [here][17].
这允许收件人验证发件人的身份并确认信息在传输过程中未被篡改，因为如果（i）邮件的内容以任何方式被更改或（ii）如果有任何密钥，则两个哈希值将不匹配除了发件人的私钥之外，还用于加密数据。如果你想在视觉上看到这个，你可以找到一个有用的图形[这里][17]。

This is a pretty condensed description of hashing, public / private keys and digital signatures. For more info, please look at the links at the bottom of the page. The takeaway from this section is that blockchain protocols combine these three encryption methods in a way that makes them an incredibly secure way to send information across a network. It allows users to authenticate who sent the information, who received the information, and that the information was not tampered with along the way. With that, let's move on to consensus algorithms.
这是对散列，公钥/私钥和数字签名的精简描述。有关详细信息，请查看页面底部的链接。本节的内容是区块链协议将这三种加密方法结合起来，使其成为一种通过网络发送信息的极其安全的方式。它允许用户验证发送信息的人员，收到信息的人员以及信息在此过程中未被篡改的情况。有了这个，让我们继续讨论共识算法。

![][18]

**Consensus Algorithms**
**共识算法**

What are consensus algorithms? That's a difficult question to answer concisely but I'll do my best. As we discussed before, there is no central authority in a decentralized network. Therefore, networks need a decision-making mechanism to force participants to come to agreement. Blockchain networks have built consensus algorithms into their protocols to serve that purpose.
什么是共识算法？这是一个难以回答的难题，但我会尽我所能。正如我们之前讨论的那样，去中心化网络中没有中央权威。因此，网络需要一个决策机制来迫使参与者达成一致。区块链网络已在其协议中建立了共识算法以实现该目的。

At a high level, consensus algorithms are how network participants agree on a "single version of the truth". Network participants use consensus algorithms to confirm that proposed transactions are valid and that a person that is sending an asset actually owns that asset in the first place. For bitcoin, that means that if somebody is trying to send 10 bitcoin, the network participants use consensus algorithms to agree that the person owned those 10 bitcoin in the first place.
在高层次上，共识算法是网络参与者就“单一版本的事实”达成一致的方式。网络参与者使用一致性算法来确认提议的交易是有效的，并且发送资产的人实际上首先拥有该资产。对于比特币，这意味着如果有人试图发送10比特币，网络参与者使用共识算法来同意该人首先拥有这10比特币。

These mechanisms are important because they are how blockchain networks solve the double spend problem. I covered this in a little more detail in [my prior post][2] but t[he double spend problem][19] essentially refers to the idea that digital assets are easy to replicate so there's a chance that somebody could try to copy a digital asset and use it twice. The double spend problem is the reason that we have historically needed trusted third parties to confirm that the digital assets we are exchanging (currency, property, etc.) have not already been spent elsewhere. Consensus algorithms allow decentralized networks to validate that transactions are legitimate without requiring a trusted third party.
这些机制很重要，因为它们是区块链网络如何解决双重花费问题。我在[我之前的帖子][2]中详细介绍了这一点，但是[双重花费问题][19]基本上是指数字资产易于复制的想法，因此有可能有人试图复制数字资产并使用两次。双重支出问题是我们历来需要可信赖的第三方来确认我们正在交换的数字资产（货币，财产等）尚未在其他地方使用的原因。共识算法允许去中心化网络验证交易是否合法，而无需受信任的第三方。

So how do they work? There are a number of different consensus algorithms so I'm going to cover the two most popular ones here and then provide a link to a few others that are interesting.
那他们怎么工作？有许多不同的共识算法，所以我将在这里介绍两个最受欢迎的算法，然后提供一些有趣的链接。

_Proof of Work:_
_工作证明：_

The first consensus algorithm to be implemented in a blockchain protocol was the proof-of-work algorithm. It is the algorithm that powers a number of the top blockchain networks, including bitcoin and ethereum.
在区块链协议中实现的第一个一致性算法是工作量证明算法。它是为许多顶级区块链网络提供动力的算法，包括比特币和以太坊。

The proof-of-work algorithm requires network participants to verify transactions through a computationally complex math puzzle and incentivizes them to verify transactions by providing a reward to the node that successfully completes that problem. This idea of computational complexity provides additional security to the system because it requires an enormous amount of time and energy to make any changes to the blockchain after consensus has been reached. Essentially, a hacker would need to have enough computing power to compete with the entire existing blockchain network if they wanted to make any retroactive changes.
工作量证明算法要求网络参与者通过计算复杂的数学难题验证交易，并通过向成功完成该问题的节点提供奖励来激励他们验证交易。这种计算复杂性的想法为系统提供了额外的安全性，因为在达到共识之后需要大量的时间和精力来对区块链进行任何改变。从本质上讲，如果黑客想要进行任何追溯性更改，他们需要具备足够的计算能力来与整个现有的区块链网络竞争。

As always, I think it's easiest to understand how the concept works by walking through an example. Let's say that a number of bitcoin transactions have occurred and need to be validated. All of the nodes that are connected to the network (known as miners) will then compete to "mine" the block of transactions. They do this by taking a hash of a few different inputs, including (i) all of the transactions in the block, (ii) the timestamp of when the block was hashed, (iii) the difficulty of the block (don't worry about this for now), (iv) the hash of the previous block of transactions, and (v) an extra number called a "nonce" (more on this later).
与往常一样，我认为最简单的方法是通过一个例子来理解这个概念是如何运作的。假设已经发生了许多比特币交易，需要进行验证。所有连接到网络的节点（称为矿工）将竞争“挖掘”交易块。他们通过获取几个不同输入的散列来实现这一点，包括（i）块中的所有交易，（ii）块被散列的时间戳，（iii）块的难度（不要担心）现在关于这个），（iv）前一个交易块的散列，以及（v）一个称为“nonce”的额外数字（后面会详细介绍）。

So what mathematical problem do miners have to solve? The problem that bitcoin forces miners to solve is to take all of those hash inputs and find a specific hash output. The only way to do this is to guess a nonce and hash the inputs. If those inputs don't lead to the correct output, the miner has to guess a different nonce and re-hash the inputs. The miner then does this over and over until they arrive at the correct output. Said another way, the math problem is a guess and check problem where the nonce is the variable that can be manipulated. The first miner to guess the right nonce, wins the competition and is awarded a pre-set number of bitcoin. After this occurs, all of the other nodes on the network check the transactions and the nonce to make sure that the transactions are valid and create the correct output. Then, the nodes move onto the next block and start the process all over again.
那么矿工必须解决什么数学问题呢？比特币迫使矿工解决的问题是采取所有这些哈希输入并找到特定的哈希输出。唯一的方法是猜测一个随机数并散列输入。如果这些输入没有导致正确的输出，则矿工必须猜测不同的随机数并重新散列输入。然后矿工一遍又一遍地做到这一点，直到他们到达正确的输出。换句话说，数学问题是猜测和检查问题，其中随机数是可以操纵的变量。第一个猜测正确的随机数的矿工赢得了竞争，并获得了预先设定的比特币数量。发生这种情况后，网络上的所有其他节点都会检查交易和随机数，以确保交易有效并创建正确的输出。然后，节点移动到下一个块并重新开始该过程。

This method requires a ton of computational resources because the only way to solve the puzzle is through brute force guess and check. As we discussed above, the computational intensity of proof-of-work networks provides additional security and mitigates the threat of a DOS attack. However, this computational intensity also presents a problem. As proof-of-work networks have scaled, they have begun to consume monstrous amounts of energy. This has led to criticisms from sustainability groups, as well as from people who are worried that mining has become concentrated among a few players that can either afford the best equipment or operate in areas with the cheapest electricity. [The latter argument is particularly interesting because if mining operations begin to concentrate among a few players, it could effectively centralize the decentralized network][20]. The final argument against proof-of-work networks is that they are slow and people are beginning to demand faster transaction speeds. That leads us to our next consensus algorithm: proof-of-stake.
这种方法需要大量的计算资源，因为解决难题的唯一方法是通过强力猜测和检查。如上所述，工作量证明网络的计算强度提供了额外的安全性并减轻了DOS攻击的威胁。然而，这种计算强度也存在问题。随着工作量证明网络规模扩大，他们开始消耗巨大的能量。这引起了可持续发展团体的批评，也引起了人们的担忧，他们担心采矿业已经集中在少数能够买得起最好的设备或在电力最便宜的地区运营的企业中。 [后一个论点特别有趣，因为如果采矿业务开始集中在少数参与者之间，它可以有效地集中去中心化网络][20]。反对工作证明网络的最后一个论点是，它们很慢，人们开始要求更快的交易速度。这导致我们进入下一个共识算法：股权证明。

_Proof-of-stake:_
_Proof-的-股份：_

Proof-of-stake ("POS") was first used by Peercoin in 2012 and has since gained in popularity. In fact, even [Ethereum will be switching to ][20]it in the near-term. The benefit of using a proof-of-stake system is that it reduces the amount of energy and expensive hardware required to validate transactions. That makes it more environmentally friendly and further decentralizes the network as there are lower barriers to entry for becoming a validating node.
Peercoin在2012年首次使用了股权证明（“POS”），并且此后获得了普及。事实上，即使[以太坊将在短期内转向][20]。使用股权证明系统的好处是它减少了验证交易所需的能源和昂贵的硬件。这使得它更加环保，并进一步去中心化了网络，因为进入验证节点的门槛较低。

Let's break down how it works. In a proof-of-stake system, there is no math puzzle for nodes to compete to solve. Instead, validating nodes (known as "forgers") are selected in a semi-random way, where the probability of being selected is based on a combination of the number of network tokens the forger owns and the amount of time he / she has owned those coins for. For a good description of these selection methods, check out [this article][21].
让我们分解它是如何运作的。在股权证明系统中，没有数学难题可供竞争解决的节点。相反，以半随机方式选择验证节点（称为“伪造者”），其中被选择的概率基于伪造者拥有的网络令牌数量和他/她拥有的时间量的组合。那些钱币。有关这些选择方法的详细说明，请查看[本文][21]。

So how do you make sure that these forgers don't validate fraudulent transactions? Proof-of-stake protocols solve this potential issue by forcing forgers to lock up their "stake" (aka their network tokens) in an escrow of sorts. If a forger validates a fraudulent transaction, it will lose the coins in the escrow account and will not be allowed to partake in the forging process in the future.
那么如何确保这些伪造者不会验证欺诈性交易？利益证明协议通过强制伪造者在各种托管中锁定他们的“股份”（也就是他们的网络代币）来解决这个潜在的问题。如果伪造者验证了欺诈性交易，它将丢失托管账户中的代币，并且将来不会被允许参与锻造过程。

Another key difference between POW and POS consensus mechanisms is how they financially incentivize network participants to validate transactions. Unlike proof-of-work, there are no block rewards in a proof-of-stake system. Instead, nodes receive transaction fees for validating transactions. What's interesting is that the transaction fees are actually a way for proof-of-stake networks to regulate the number of forgers (aka validating nodes). If a network wants to encourage more forgers, it can increase the value of transaction fees and vice versa.
POW和POS共识机制之间的另一个关键区别是它们如何在财务上激励网络参与者验证交易。与工作证明不同，在股权证明系统中没有块奖励。相反，节点接收验证交易的交易费用。有趣的是，交易费用实际上是一种利用证据网络来规范伪造者数量（即验证节点）的方式。如果网络想要鼓励更多的伪造者，它可以增加交易费用的价值，反之亦然。

This is a very high level overview of proof-of-stake; however, the key takeaways are that (i) POS systems choose validating nodes based on their ownership in the network, (ii) POS systems reduce the amount of electricity / computational power required to validate transactions making them more energy efficient and scalable, and (iii) POS systems may improve decentralization by reducing the barriers to entry for validating nodes. However, this method is still relatively new and has drawn criticism for being less secure than proof of work.
这是对股权证明的非常高级别的概述;然而，关键要点是（i）POS系统根据其在网络中的所有权选择验证节点，（ii）POS系统减少验证交易所需的电力/计算能力，使其更节能和可扩展，（ iii）POS系统可以通过减少验证节点的进入门槛来改进去中心化化。然而，这种方法仍然相对较新，并且因为不如工作证明而受到批评。

While these are by far the two most popular consensus algorithms, they certainly aren't the only ones. Other consensus algorithms include delayed proof of work, delegated proof of stake, proof of authority, proof of weight, and many more. If you want to do a little more digging on these, you can find an awesome article published in Hacker Noon that details 30 of them [here][22].
虽然这些是迄今为止最流行的两种共识算法，但它们肯定不是唯一的算法。其他共识算法包括延迟工作证明，授权证明，权威证明，权重证明等等。如果你想进一步挖掘这些，你可以在Hacker Noon中找到一篇很棒的文章，其中详细介绍了其中30篇[这里][22]。

![][23]

**Integrated Blocks**
**集成块**

I know this has been a dense post but stay with me, we're almost there. The final differentiating component of a blockchain protocol is how blocks of transactions are integrated to create an "immutable ledger". This integration is done through hashing. The best way to understand how this works is to look at how blockchain networks initially get off the ground.
我知道这是一个密集的帖子，但留在我身边，我们几乎就在那里。区块链协议的最终区分组件是如何集成交易块以创建“不可变的分类帐”。这种集成是通过散列完成的。了解其工作原理的最佳方法是了解区块链网络最初是如何起作用的。

The first block in a blockchain is known as the "genesis block". The genesis block differs from other blocks because it is [hardcoded into the network and details the initial parameters of the blockchain][24]. When the transactions from this genesis block are validated, they are hashed to generate a unique value that identifies the block. When the second block is validated, the transactions from the second block, as well as the hash value of the first block, are used as inputs to create the second block's unique hash value. This is then done for each subsequent block in the blockchain, effectively linking the blocks together. This linking feature is what makes the blockchain "immutable" because hackers cannot just hack one block. If a hacker tries to change the data stored in a validated block, it will change the hash of each subsequent block and cause a ripple effect throughout the rest of the chain. This will instantly be spotted by every other node, providing an additional level of security to the network.
区块链中的第一个区块称为“发生区块”。创世块与其他区块不同，因为它[硬编码到网络中并详细说明了区块链的初始参数][24]。当验证来自此genesis块的交易时，将对它们进行哈希处理以生成标识块的唯一值。当第二个块被验证时，来自第二个块的交易以及第一个块的哈希值被用作输入以创建第二个块的唯一哈希值。然后对区块链中的每个后续块进行此操作，有效地将块链接在一起。这种链接功能使区块链“不可变”，因为黑客不能只破解一个区块。如果黑客试图更改存储在经过验证的块中的数据，它将更改每个后续块的哈希值，并在链的其余部分引起连锁反应。这将立即被其他每个节点发现，为网络提供额外的安全级别。

Additionally, by linking blocks in this manner, the hash of the most recent block incorporates every single transaction that has occurred on the chain up to that point. Therefore, by agreeing on the most recent hash value, miners can easily come to consensus on the "current state of the chain". That integration represents the final piece of the blockchain puzzle so it's time to wrap this post up.
另外，通过以这种方式链接块，最近块的散列包含在该链上发生的每个单个交易。因此，通过就最新的哈希值达成一致，矿工可以很容易地就“当前的链条状态”达成共识。这种整合代表了区块链拼图的最后一块，所以是时候把这篇文章包起来了。

#### Conclusion
####结论

I know this piece covers a ton of dense information so thanks for taking the time to read it! Just to quickly sum it up (or…re-hash it if you will), blockchain protocols are an innovative way of sending information across a network. They sit on top of the TCP / IP protocol stack and incorporate several elements that make them a much more secure method for sending information and transferring value. These elements include distributed ledgers, encryption, consensus mechanisms, and integrated blocks.
我知道这篇文章涵盖了大量密集的信息，所以感谢您花时间阅读它！只是为了快速总结（或者......如果你愿意，重新哈希），区块链协议是一种通过网络发送信息的创新方式。它们位于TCP / IP协议栈之上，并包含多个元素，使其成为一种更安全的方法来发送信息和传输价值。这些元素包括分布式分类帐，加密，共识机制和集成块。

### Wrapping Up
### 包起来

That wraps up my post on blockchain protocols, I hope you found it interesting! If you enjoyed this post and would like future posts sent directly to your email, please reach out to me at roywalker03@gmail.com. My next post will break down how ICOs, DApps and DAOs work.
这包括我在区块链协议上的帖子，我希望你发现它很有趣！如果您喜欢这篇文章，并希望将来的帖子直接发送到您的电子邮箱，请通过roywalker03@gmail.com与我联系。我的下一篇文章将分解ICO，DApps和DAO的工作方式。

Also, if you have an interest in venture capital and want to read VC-related content, please subscribe to my publication ["All Things Venture Capital"][25] or [follow it on twitter][3]. Additionally, please reach out to me if you are interested in adding to the publication! My goal is to continue to add high quality content (articles, podcasts, videos, etc.) from aspiring and current venture capitalists that want to share their perspective. Thanks for reading!
此外，如果您对风险投资感兴趣并希望阅读与VC相关的内容，请订阅我的出版物[“All Things Venture Capital”][25]或[在Twitter上关注][3]。另外，如果您有兴趣加入该出版物，请联系我！我的目标是继续添加高质量的内容（文章，播客，视频等）来自有志和当前风险资本家，他们希望分享他们的观点。谢谢阅读！

### Sources:
###来源：

[1]: https://medium.com/all-things-venture-capital/intro-to-vc-a-history-of-the-modern-internet-53e344886f97
[2]: https://medium.com/all-things-venture-capital/intro-to-vc-the-history-of-blockchain-17ec65dfcf78
[3]: https://twitter.com/AllThings_VC
[4]: https://cdn-images-1.medium.com/max/1600/1*BYUjjX6PIv36or0PGrNNrQ.jpeg
[5]: https://www.techopedia.com/definition/12938/network-protocols
[6]: https://cdn-images-1.medium.com/max/1200/1*Paw0gxQlgffoyxJR4bLO1g.png
[7]: https://web.stanford.edu/class/msande91si/www-spr04/readings/week1/InternetWhitepaper.htm
[8]: https://cdn-images-1.medium.com/max/1200/1*A6pvhAE_8DRy1vLFQSYW5Q.png
[9]: https://en.wikipedia.org/wiki/Client%E2%80%93server_model
[10]: https://lisk.io/academy/blockchain-basics/how-does-blockchain-work/what-is-a-peer-to-peer-network
[11]: https://cdn-images-1.medium.com/max/1200/1*RKQBL6eBOG9G9Em-Mn59sQ.jpeg
[12]: https://medium.com/tech-tales/what-is-hashing-6edba0ebfa67
[13]: https://www.movable-type.co.uk/scripts/sha256.html
[14]: https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process
[15]: https://en.wikipedia.org/wiki/Symmetric-key_algorithm
[16]: http://www.uobabylon.edu.iq/eprints/paper_1_2264_649.pdf
[17]: https://lisk.io/academy/blockchain-basics/how-does-blockchain-work/digital-signatures
[18]: https://cdn-images-1.medium.com/max/1200/1*I2XP9GbzmOgWB0UQLvWBBw.jpeg
[19]: https://www.investopedia.com/terms/d/doublespending.asp
[20]: https://blockgeeks.com/guides/ethereum-casper/
[21]: https://hackernoon.com/what-is-proof-of-stake-8e0433018256
[22]: https://hackernoon.com/consensuspedia-an-encyclopedia-of-29-consensus-algorithms-e9c4b4b7d08f
[23]: https://cdn-images-1.medium.com/max/1200/1*jmUT7b0zcE214_Ptz0PuHA.png
[24]: https://www.blockchainsemantics.com/blog/genesis-block/
[25]: https://medium.com/all-things-venture-capital

