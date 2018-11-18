
> 本文翻译自：https://medium.com/@davekaj/blockchain-interoperability-cosmos-vs-polkadot-48097d54d2e2
>

> 由于篇幅较长， 本文将分成3个部分
> * Cosmos 详细介绍 （本文）
> * Polkadot 详细介绍
> * Cosmos和Polkadot 对比
-----------------------------------------------

# Cosmos 对比 Polkadot

区块链互操作性可能是下一个创新浪潮，它可以为扩展去中心化的互联网创造巨大价值。

创建区块链网络的两个顶级竞争者是The Cosmos Network和The Polkadot Network。我们将探索每个团队协议，网络设计，安全模型，技术堆栈等。

但首先我们需要从高层次解释区块链互操作性的含义。

#### **什么是区块链互操作性？**

区块链互操作性很复杂，所以让我们试着用最简单的方式解释它。

区块链互操作性将发送Ether（以太坊代币），并通过区块链协议接收比特币，而无需第三方（如交易所）。这是一个简单的愿望，但它尚未实现。

Polkadot和Cosmos都在为区块链构建协议，以便安全可靠地相互交互。协议允许创建能够在彼此之间发送交易和消息的新区块链。

#### **它为什么如此重要？**

区块链网络允许网络效应改善去中心化的互联网。当一切都连接起来时，它会带来更多的资金，更好的用户体验，以及更多的思维头脑风暴来改善网络。

区块链互操作性可以显着提高区块链的可扩展性，速度和可扩展性。例如，如果区块链的上限为每秒100个交易，则可以创建第二个相同的区块链，以达到每秒200个可与其他区块链互操作的交易。再多建几条链，可以达到允许1000次交易。

它还允许私有，公共和联盟链连接。最终区块链甚至可以与SWIFT等法定银行系统互操作。 [1]

#### **为什么要专注于Cosmos和Polkadot？**

根据我的研究，我发现它们是最有前景的项目。他们都拥有强大的技术团队，在去中心化的社区中享有良好的声誉，他们已经在区块链领域工作了很多年，他们从头开始编写了大量的区块链代码。

![][1]

资料来源：[Cosmos Network Website][2]和[Polkadot Network Website][3]

他们有类似的策略来解决区块链互操作性，但在协议和设计方面存在细微差别。这些差异在安全性，隐私性，效率，灵活性和易用性之间进行权衡。

现在让我们深入了解区块链互操作性的未来！

### **Cosmos网络**

自2014年以来，随着Tendermint的发布，Cosmos团队一直致力于区块链互操作性。 [5] Tendermint是一个拜占庭容错共识引擎，以及点对点网络闲聊协议。

![][4]

Cosmos - 区块链互联网[3]

他们正在构建The Cosmos Network，这是一个建在Tendermint之上的区块链。 Tendermint和Cosmos都属于InterChain基金会。下面的两个简单图解释了他们如何设计网络。

![][5]

在很高的层次上，区块链由三个主要组成部分组成，即相互通信的计算机节点网络，允许节点就新块达成一致的共识协议，以及具有自己状态的应用层（如以太坊账号，将以太平衡存储为状态。“[4]

![][6]

Tendermint负责区块链的网络和共识层。这允许区块链创建自己的有状态应用程序，以构建在Tendermint之上。此图显示了通过ABCI协议与Tendermint交互的ABCI应用程序，将在下一节中进行说明。 [4]

### 技术设计和协议

#### **Tendermint（共识和网络）**

Tendermint是一种实用的拜占庭容错（PBFT）状态机。它需要一组已知的验证者同意就一个块达成共识。Cosmos网络要求至少2/3的人达成共识。假设不到1/3的验证者是拜占庭式的，网络永远不会分叉，因为验证者不能在相同的高度提交冲突的块。这源于Tendermint赞成安全而不是活跃的事实。 [5]

**应用区块链接口（ABCI）**

ABCI是定义复制引擎（Tendermint）和状态机（区块链）之间边界的接口。 ABCI是区块链状态更新的唯一方式，只有Tendermint可以访问区块链的状态更改功能。这种设计是一种很好的安全策略，因为改变状态只有一个入口点。

下图分解了Tendermint堆栈，显示了节点在对等网络中的连接方式，以及每个节点的组件。

![][7]

五个节点彼此创建对等网络。每个节点都是运行Tendermint Core的计算机。 Tendermint可以通过ABCI协议连接到区块链。左下角的Light Client节点可以通过RPC调用连接到任何Tendermint节点。 [13]

### Cosmos上的互操作性

#### **链间通信(IBC)

Cosmos Network具有链间通信（IBC）协议，允许区块链与其他区块链交互。区块链网络将通过IBC进行通信，将Cosmos Network作为中心枢纽。区块链以中心和轮辐模型连接到Cosmos Hub。网络的辐条称为区域，如下图所示。

![][8]

Cosmos Hub是主要的区块链，它将连接构建在Cosmos Network之上的所有其他区块链。每个区域都是自己的区块链，它们共同创建了一个用于连接的中心和轮辐模型。 [6]

IBC更为技术性的术语是链中继。 [1]链中继允许区块链读取和验证其他区块链中的事件。例如，A链上的智能合约想要弄清楚链B上是否发生了一个事件。为此，链B上的智能合约需要采用链A的块头并验证它已达成共识并达到最终性。 [1]

从本质上讲，Cosmos正在构建一个网络，可以轻松创建新的区块链，从第一天起就可以通过链中继进行交互。每个区块链都将在Tendermint上运行，如下图所示。

![][9]

Cosmos Hub与在Tendermint之上运行的其他4个区块链进行交互。他们可以通过IBC协议的设计轻松阅读并对彼此进行操作。左上方链是一个挂钩区，将在下一节中介绍。 [4]

只要新的区块链遵循IBC协议，它就能够加入网络。这包括公共和私有区块链。

#### **Peg 区

Peg Zones区将允许The Cosmos Network连接到实时区块链网络，例如以太坊主网。能够连接到实时区块链是任何区块链可互操作网络的主要要求。 Peg Zones很复杂，但我们试着用简单的术语解释它们是如何工作的。

您必须具有共享安全模型，其中Cosmos Peg Zone Validator也运行以太坊主节点。特殊的验证者批准两个链之间的相互作用。这是一个复杂的基础架构，您还需要信任运行Peg Zone的团队。 [7]

实际的资产交换需要以太坊主网智能合约才能锁定以太网，这将在Peg区域创建代表“Cosmos-Ether”的新通证，可以通过IBC在Cosmos网络中发送。在Cosmos方面，Validator会锁定Atoms，Atom会依次创建一个可以在以太坊主网周围发送的ERC-20 Atom通证。 [7]这将允许Cosmos和以太坊Mainnnet之间的资产的完全互操作性。

#### **实现两个链之间的互操作性**

任何可互操作的网络都需要至少两个可以交换消息和交易的区块链。 Ethermint是Cosmos为第一个与Cosmos Hub互动的链提出的解决方案。

Ethermint是Cosmos团队计划在Cosmos Hub 主网发布后推出的区块链。它是2018年第四季度的插入。[8]最简单的描述Ethermint的方法是它是以太坊区块链，取消了工作证明共识算法，并取代了Tendermint共识引擎。这允许基于以太坊虚拟机的区块链轻松地通过IBC与Cosmos网络进行交互。 [9]

Ethermint背后的天才是团队计划做的“硬分叉”。他们将在某个时间点拍摄所有以太坊帐户的快照，并使用该状态创建新的Ethermint区域。这使他们能够引导现有的以太坊开发者网络，并为每个人提供新的通证和更快的交易速度。

选择Ethermint首先创建而不是Pehere Zone到以太坊主网，因为它在技术上更容易构建。但是，区块链网络必须具有Peg区域。比特币和以太坊背后有如此多的动力，忽视它们对Cosmos或Polkadot来说是一个非常冒险的举动。

#### **Cosmos中心**

Cosmos Hub是主要的区块链，充当Cosmos网络中所有区块链的中心连接器。它是由Tendermint提供支持的多资产证明区块链。 Cosmos Hub的主要标记是Atom，Atom将用于区块链的放样和治理。该中心将启动100个验证器启动，并将每年增加。 [5]

Atom持有者可以是Validator或Delegator。验证器设置一个完整节点，用于保护网络并处理交易。委托人根据他们对哪些验证器值得信赖且能够运行节点的个人审查，将其原子委托给验证者。

验证者放弃Atoms，并获得Atom作为每个块的奖励。这些奖励会传递给代理人，只需支付少量费用就可以操作Validator节点。 [5]

为了保持Validators的诚实，一个恶意行为的验证者，并向区块链发布不正确的数据，会因失去一些Atom而在经济上受到惩罚。这通常被称为“_slashing._”。这些游戏理论要求用于激励股权证明区块链中的良好行为。 [5]

代币也代表治理。 一个Atom是网络上任何提案的一票，例如软件升级。Cosmos的治理协议相当简单。代表们可以选择自己投票，也可以将他们的投票权传递给他们所委托的确认者。验证人必须对每个提案进行投票，否则他们将被削减。

#### **主网启动的当前状态**

Cosmos目前正在使用部分功能测试testnet，但他们非常接近于准备好完全实现的软件版本进行测试。他们将在2018年第三季度的某个时间发布实时主网。但是，他们会冻结交易，直到他们对网络稳定感到满意为止。 [8]

一旦完成，他们将实施IBC，然后为Ethermint做一个以太坊的“硬分叉”。 [16][可以在这里找到更深入的路线图解释][10]。

### 基于Cosmos的开发人员

开发人员可以通过两种方式在Cosmos Network之上构建。构建使用IBC相互交互的新区块链，并在Cosmos区域中构建智能合约。为了构建区块链，他们创建了The Cosmos SDK，允许开发人员轻松地在Cosmos网络上启动新的区块链。

#### **Cosmos SDK

Cosmos团队发布了“Cosmos SDK”，允许开发人员使用简单的模块化方法在网络上设计自己的区块链。 SDK正用于构建Cosmos Hub，因此当主网启动时，SDK也可供开发人员构建自己的区块链。 Cosmos Hub构建在使用Tendermint的Cosmos 网络上运行的基础应用程序，然后为权益，治理和IBC添加了模块。 [5]

这将允许开发人员使用SDK，选择基本区块链应用程序，添加治理或赌注等模块，构建自己的模块，并轻松启动可以互操作的自己的区块链。这是一个令人兴奋的机会，因为它将为开发人员创建一个新的去中心化式平台，而不仅仅是让象征模型以太坊普及。

SDK是用Golang编写的，支持未来语言的计划。但是在第一年左右，网络上的区块链必须用Go编写。

#### **在Cosmos上构建dApp**

Ethermint将是您在Cosmos Network上构建dApp的第一个实现。由于它是基于EVM的区块链，因此合同可以用Solidity编写。此网络的交易速度也将提高，因为Tendermint的共识每秒可以处理比以太坊主网工作量证明共识更多的交易。



[1]: https://cdn-images-1.medium.com/max/1600/1*pNbvt8A0i0eCqZQXvebuEw.png
[2]: https://cosmos.network/
[3]: https://polkadot.network/
[4]: https://cdn-images-1.medium.com/max/1600/1*_uyjLy8_ZjaRuLJCsr3XhA.png
[5]: https://cdn-images-1.medium.com/max/1600/1*wZrMqYyYHnEXGGe6O5W6aQ.jpeg
[6]: https://cdn-images-1.medium.com/max/1600/1*K44yfQ-uiXosLtOCPUK8Dw.jpeg
[7]: https://cdn-images-1.medium.com/max/1600/1*t0q7E6Nh3y5DNqnteiXf2w.png
[8]: https://cdn-images-1.medium.com/max/1600/1*fZQKLXyQVb1qBO_I3K_mrw.png
[9]: https://cdn-images-1.medium.com/max/1600/1*gqhdqGDUqw7bRJyafrIg2g.jpeg
[10]: https://blog.cosmos.network/latest-in-cosmos-critical-community-update-may-4350bc6cc25
[11]: https://cdn-images-1.medium.com/max/1600/0*wjI7MxXZlimQaeA6.jpg
[12]: https://cdn-images-1.medium.com/max/1600/1*gau9098Iz5sjoN9ZefgBEg.png
[13]: https://cdn-images-1.medium.com/max/1600/1*1jJHpW4PxdyrJMv3Hx_YgQ.png
[14]: https://cdn-images-1.medium.com/max/1600/1*wFZ5uKEEf-V9zne9tSK_dw.png
[15]: https://en.wikipedia.org/wiki/Adaptive_bias
[16]: https://cdn-images-1.medium.com/max/1600/1*sQ2a9hvc5E736kg9-uhAzQ.png
[17]: https://polkadot.network/#roadmap
[18]: https://medium.com/web3foundation/investigating-short-term-scaling-solutions-for-ethereum-a5951fee8967
[19]: https://github.com/keppel/lotion
[20]: https://lotionjs.com/
[21]: https://github.com/golang/go/issues/18892
[22]: https://plasma.io/
[23]: https://static1.squarespace.com/static/55f73743e4b051cfcc0b02cf/t/5886800ecd0f68de303349b1/1485209617040/Chain+Interoperability.pdf
[24]: https://tendermint.com/static/docs/tendermint.pdf
[25]: https://blog.cosmos.network/understanding-the-value-proposition-of-cosmos-ecaef63350d
[26]: https://cosmos.network/whitepaper
[27]: https://blog.cosmos.network/a-beginners-guide-to-ethermint-38ee15f8a6f4
[28]: https://blog.cosmos.network/the-internet-of-blockchains-how-cosmos-does-interoperability-starting-with-the-ethereum-peg-zone-8744d4d2bc3f
[29]: https://blog.cosmos.network/introducing-the-hard-spoon-4a9288d3f0df
[30]: https://github.com/w3f/polkadot-white-paper/blob/master/PolkaDotPaper.pdf
[31]: https://www.youtube.com/watch?time_continue=2&v=iUMZyL5kTwc
[32]: https://polkadot.network/Polkadot-lightpaper.pdf
[33]: https://medium.com/polkadot-network/how-polkadot-tackles-the-biggest-problems-facing-blockchain-innovators-1affc1309b0f
[34]: https://www.youtube.com/watch?v=VsZuDJMmVPY&feature=youtu.be&t=24703
[35]: https://medium.com/polkadot-network/now-live-polkadot-proof-of-concept-1-3e718512a8d
[36]: https://en.wikipedia.org/wiki/WebAssembly


#### 区块链中文字幕组

致力于前沿区块链知识和信息的传播，为中国融入全球区块链世界贡献一份力量。

如果您懂一些技术、懂一些英文，欢迎加入我们，加微信号:w1791520555。

[点击查看项目GITHUB，及更多的译文...](https://github.com/BlockchainTranslator/EOS)

#### 本文译者简介

小丹 区块链技术爱好者  热衷于区块链底层技术研究

版权所有，转载需完整注明以上内容。

----------------------------------------------------
