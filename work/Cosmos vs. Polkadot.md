
[Source](https://medium.com/@davekaj/blockchain-interoperability-cosmos-vs-polkadot-48097d54d2e2 "Permalink to Cosmos vs. Polkadot – Dave Kajpust – Medium")
[来源]（https://medium.com/@davekaj/blockchain-interoperability-cosmos-vs-polkadot-48097d54d2e2“宇宙与波尔卡多的固定链接 -  Dave Kajpust  - 中等”）

# Cosmos vs. Polkadot – Dave Kajpust – Medium
# Cosmos

Blockchain interoperability may be the next big wave of innovation that creates massive value in expanding the decentralized internet.
区块链互操作性可能是下一个创新浪潮，它可以为扩展去中心化的互联网创造巨大价值。

Two of the top contenders to create a network of blockchains are The Cosmos Network and The Polkadot Network. We will explore each teams protocols, network design, security models, tech stacks, and more.
创建区块链网络的两个顶级竞争者是The Cosmos Network和The Polkadot Network。我们将探索每个团队协议，网络设计，安全模型，技术堆栈等。

But first we need to explain what blockchain interoperability means from a high level.
但首先我们需要从高层次解释区块链互操作性的含义。

#### **What is Blockchain Interoperability?**
#### **什么是区块链互操作性？**

Blockchain interoperability is complex, so let's try to explain it in the simplest way.
区块链互操作性很复杂，所以让我们试着用最简单的方式解释它。

Blockchain interoperability would be sending Ether, and receiving Bitcoin naturally through blockchain protocols, without a third party such as an exchange. It is a simple desire, but it has yet to come true.
区块链互操作性将发送以太网，并通过区块链协议自然地接收比特币，而无需第三方（如交换机）。这是一个简单的愿望，但它尚未实现。

Both Polkadot and Cosmos are building protocols for blockchains to safely and reliably interact with one another. The protocols allow for the creation of new blockchains that are able to send transactions and messages between each other.
Polkadot和Cosmos都在为区块链构建协议，以便安全可靠地相互交互。协议允许创建能够在彼此之间发送交易和消息的新区块链。

#### **Why is it Important?**
#### **它为什么如此重要？**

A network of blockchains allows for network effects to improve the decentralized internet. When everything is connected, it brings more capital, a better user experience, and more minds brainstorming to improve the network.
区块链网络允许网络效应改善去中心化的互联网。当一切都连接起来时，它会带来更多的资金，更好的用户体验，以及更多的思维头脑风暴来改善网络。

Blockchain interoperability can significantly increase scalability, speed, and extensibility of blockchains. For example if you have a blockchain capped at 100 transactions per second, you can create a second identical blockchain to reach 200 transactions per second that can interoperate with the other blockchain. You can do this to allow for 1000's of transactions.
区块链互操作性可以显着提高区块链的可扩展性，速度和可扩展性。例如，如果区块链的上限为每秒100个交易，则可以创建第二个相同的区块链，以达到每秒200个可与其他区块链互操作的交易。您可以这样做以允许1000次交易。

It also allows for private, public, and consortium blockchains to connect. Eventually blockchains could even interoperate with fiat banking systems like SWIFT. [1]
它还允许私有，公共和财团区块链连接。最终区块链甚至可以与SWIFT等法定银行系统互操作。 [1]

#### **Why Focus on Cosmos and Polkadot?**
#### **为什么要专注于Cosmos和Polkadot？**

From my research I have found them to be the most promising projects. They both have strong technical teams, they have good reputations in the decentralized community, they have been in the blockchain space for many years, and they have written a significant amount of blockchain code from scratch.
根据我的研究，我发现它们是最有前景的项目。他们都拥有强大的技术团队，在去中心化的社区中享有良好的声誉，他们已经在区块链领域工作了很多年，他们从头开始编写了大量的区块链代码。

![][1]

Source: [Cosmos Network Website][2] and [Polkadot Network Website][3]
资料来源：[Cosmos Network Website][2]和[Polkadot Network Website][3]

They have similar strategies to solve blockchain interoperability, but with subtle differences in protocols and designs. These differences have tradeoffs between security, privacy, efficiency, flexibility, and ease of use.
他们有类似的策略来解决区块链互操作性，但在协议和设计方面存在细微差别。这些差异在安全性，隐私性，效率，灵活性和易用性之间进行权衡。

Now let's dig in and see what the future of blockchain interoperability looks like!
现在让我们深入了解区块链互操作性的未来！

### **The Cosmos Network**
### **宇宙网络**

The Cosmos team has been working on blockchain interoperability since 2014 with the release of Tendermint. [5] Tendermint is a Byzantine Fault-Tolerant consensus engine, along with a peer-to-peer network gossiping protocol.
自2014年以来，随着Tendermint的发布，Cosmos团队一直致力于区块链互操作性。 [5] Tendermint是一个拜占庭容错共识引擎，以及点对点网络闲聊协议。

![][4]

Cosmos — The Internet of Blockchains [3]
宇宙 - 区块链互联网[3]

They are building The Cosmos Network, which is a blockchain built on top of Tendermint. Tendermint and Cosmos are both under the InterChain Foundation. Two simple diagrams below explains how they have designed the network.
他们正在构建The Cosmos Network，这是一个建在Tendermint之上的区块链。 Tendermint和Cosmos都属于InterChain基金会。下面的两个简单图解释了他们如何设计网络。

![][5]

At a high level Blockchains consist of three major components, the network of computer nodes that talk to each other, a consensus protocol that allows the nodes to agree upon new blocks, and an application layer that has its own state (such as Ethereum accounts, which store an Ether balance as state." [4]
在很高的层次上，区块链由三个主要组成部分组成，即相互通信的计算机节点网络，允许节点就新块达成一致的共识协议，以及具有自己状态的应用层（如以太坊账号，将以太平衡存储为状态。“[4]

![][6]

Tendermint takes care of the networking and consensus layers of a blockchain. This allows blockchains to create their own stateful application to be built on top of Tendermint. This diagram shows an ABCI-application interacting with Tendermint through the ABCI protocol, which is explained in the next section. [4]
Tendermint负责区块链的网络和共识层。这允许区块链创建自己的有状态应用程序，以构建在Tendermint之上。此图显示了通过ABCI协议与Tendermint交互的ABCI应用程序，将在下一节中进行说明。 [4]

### Technical Design and Protocols
### 技术设计和协议

#### **Tendermint (Consensus and Networking)**
#### **Tendermint（共识和网络）**

Tendermint is a Practical Byzantine-Fault Tolerant (PBFT) state machine. It requires a known set of Validators to agree to come to consensus on a block. The Cosmos Network requires at least 2/3's to reach consensus. Assuming less than 1/3 of the Validators are byzantine, the network will never fork , because Validators cannot commit conflicting blocks at the same height. This is rooted in the fact that Tendermint favours safety over liveness. [5]
Tendermint是一种实用的拜占庭容错（PBFT）状态机。它需要一组已知的验证者同意就一个块达成共识。宇宙网络要求至少2/3的人达成共识。假设不到1/3的Validator是拜占庭式的，网络永远不会分叉，因为Validators不能在相同的高度提交冲突的块。这源于Tendermint赞成安全而不是活跃的事实。 [5]

**Application Blockchain Interface (ABCI)**
**应用区块链接口（ABCI）**

The ABCI is an interface that defines the boundary between the replication engine (Tendermint) and the state machine (the blockchain). The ABCI is the only way for the blockchains state to be updated, and only Tendermint has access to state changing functions for the blockchain. This design is a great strategy for security because there is only one point of entry to change state.
ABCI是定义复制引擎（Tendermint）和状态机（区块链）之间边界的接口。 ABCI是区块链状态更新的唯一方式，只有Tendermint可以访问区块链的状态更改功能。这种设计是一种很好的安全策略，因为改变状态只有一个入口点。

The diagram below breaks down the Tendermint Stack, showing how nodes are connected in a peer-to-peer network, along with the components of each node.
下图分解了Tendermint堆栈，显示了节点在对等网络中的连接方式，以及每个节点的组件。

![][7]

The five nodes create a peer-to-peer network with each other. Each node is a computer that is running Tendermint Core. Tendermint can connect to blockchains through the ABCI protocol. The Light Client Node on the bottom left can connect to any Tendermint node through an RPC call. [13]
五个节点彼此创建对等网络。每个节点都是运行Tendermint Core的计算机。 Tendermint可以通过ABCI协议连接到区块链。左下角的Light Client节点可以通过RPC调用连接到任何Tendermint节点。 [13]

### Interoperability on Cosmos
## #

#### **Inter Blockchain Communication (IBC)**
#### **Inter

The Cosmos Network has the Inter Blockchain Communication (IBC) protocol to allow blockchains to interact with other blockchains. The network of blockchains will communicate through IBC, with the Cosmos Network as the central hub. Blockchains are connected in a hub and spoke model to the Cosmos Hub. The spokes of the network are called Zones, as seen in the diagram below.
Cosmos Network具有Inter Blockchain Communication（IBC）协议，允许区块链与其他区块链交互。区块链网络将通过IBC进行通信，将Cosmos Network作为中心枢纽。区块链以中心和轮辐模型连接到Cosmos Hub。网络的辐条称为区域，如下图所示。

![][8]

The Cosmos Hub is the main blockchain that will connect all other blockchains built on top of the Cosmos Network. Each Zone is its own blockchain, and together they create a hub and spoke model for connectivity. [6]
Cosmos Hub是主要的区块链，它将连接构建在Cosmos Network之上的所有其他区块链。每个区域都是自己的区块链，它们共同创建了一个用于连接的中心和轮辐模型。 [6]

The more technical term for IBC is a Chain Relay. [1] Chain Relays allow for blockchains to read and validate events in other blockchains. For example, a smart contract on Chain A wants to figure out if an event happened on Chain B. To do that, a smart contract on Chain B needs to take a block header of Chain A and verify that it has met consensus and reached finality. [1]
IBC更为技术性的术语是链中继。 [1]链中继允许区块链读取和验证其他区块链中的事件。例如，A链上的智能合约想要弄清楚链B上是否发生了一个事件。为此，链B上的智能合约需要采用链A的块头并验证它已达成共识并达到最终性。 [1]

In essence Cosmos is building a network where it is easy to create new blockchains that can interact through chain relays from day one. Each blockchain would be running on top of Tendermint, as the diagram below shows.
从本质上讲，Cosmos正在构建一个网络，可以轻松创建新的区块链，从第一天起就可以通过链中继进行交互。每个区块链都将在Tendermint上运行，如下图所示。

![][9]

The Cosmos Hub interacts with 4 other Blockchains running on top of Tendermint. They can easily read and act upon each others state through the design of the IBC protocol. The top left Chain is a Peg Zone, which is explained in the next section. [4]
Cosmos Hub与在Tendermint之上运行的其他4个区块链进行交互。他们可以通过IBC协议的设计轻松阅读并对彼此进行操作。左上方链是一个挂钩区，将在下一节中介绍。 [4]

As long as a new blockchain follows the IBC protocol, it will be able to join the network. This includes both public and private blockchains.
只要新的区块链遵循IBC协议，它就能够加入网络。这包括公共和私人区块链。

#### **Peg Zones**
#### **Peg

Peg Zones will allow for The Cosmos Network to connect to live blockchain networks, such as the Ethereum Mainnet. Being able to connect to live blockchains is a main requirement of any blockchain interoperable network. Peg Zones are complicated, but let's try to explain in simple terms how they work.
Peg Zones将允许The Cosmos Network连接到实时区块链网络，例如以太坊主网。能够连接到实时区块链是任何区块链可互操作网络的主要要求。 Peg Zones很复杂，但我们试着用简单的术语解释它们是如何工作的。

You must have a shared security model, where the Cosmos Peg Zone Validator is also running an Ethereum Mainnet node. The special Validator approves the interactions between the two chains. This is a complicated infrastructure to set up, and you also need to trust the team running the Peg Zone. [7]
您必须具有共享安全模型，其中Cosmos Peg Zone Validator也运行以太坊Mainnet节点。特殊的Validator批准两个链之间的相互作用。这是一个复杂的基础架构，您还需要信任运行Peg Zone的团队。 [7]

The actual exchange of assets would require an Ethereum Mainnet smart contract to lock in Ether, which would in turn create new tokens in the Peg Zone that represent "Cosmos-Ether" that can be sent around the Cosmos Network through IBC. On the Cosmos side the Validator would lock up Atoms, which would in turn create an ERC-20 Atom token that can be sent around the Ethereum Mainnet. [7] This would allow for full interoperability of assets between Cosmos and the Ethereum Mainnnet.
实际的资产交换需要Ethereum Mainnet智能合约才能锁定以太网，这将在Peg区域创建代表“Cosmos-Ether”的新通证，可以通过IBC在Cosmos网络中发送。在Cosmos方面，Validator会锁定Atoms，Atom会依次创建一个可以在以太坊Mainnet周围发送的ERC-20 Atom通证。 [7]这将允许Cosmos和以太坊Mainnnet之间的资产的完全互操作性。

#### **Reaching Interoperability Between Two Chains**
#### **实现两个链之间的互操作性**

Any interoperable network needs at least two blockchains that can exchange messages and transactions. Ethermint is the solution that Cosmos has came up with for the first chain that will interact with the Cosmos Hub.
任何可互操作的网络都需要至少两个可以交换消息和交易的区块链。 Ethermint是Cosmos为第一个与Cosmos Hub互动的链条提出的解决方案。

Ethermint is a blockchain that the Cosmos team plans to launch after the Cosmos Hub Mainnet launch. It is slotted for Q4 2018. [8] The simplest way to describe Ethermint is that it is the Ethereum blockchain, with the proof-of-work consensus algorithm taken out, and the Tendermint consensus engine replacing it. This allows for an Ethereum Virtual Machine based blockchain to easily interact over IBC with the Cosmos Network. [9]
Ethermint是Cosmos团队计划在Cosmos Hub Mainnet发布后推出的区块链。它是2018年第四季度的插入。[8]最简单的描述Ethermint的方法是它是以太坊区块链，取消了工作证明共识算法，并取代了Tendermint共识引擎。这允许基于以太坊虚拟机的区块链轻松地通过IBC与Cosmos网络进行交互。 [9]

The genius behind Ethermint is the "hard spoon" that the team is planning to do. They are going to take a snapshot of all Ethereum accounts at a point in time, and use that state to create the new Ethermint zone. This allows them to bootstrap the existing network of Ethereum developers, and it will provide everyone with new tokens and faster transaction speeds.
Ethermint背后的天才是团队计划做的“硬勺子”。他们将在某个时间点拍摄所有以太坊帐户的快照，并使用该状态创建新的Ethermint区域。这使他们能够引导现有的以太坊开发者网络，并为每个人提供新的通证和更快的交易速度。

Ethermint was chosen to be created first instead of a Peg Zone to the Ethereum Mainnet because it is technically simpler to build. However it is essential for a network of blockchains to have Peg Zones. Bitcoin and Ethereum have so much momentum behind them that ignoring them would be a very risky move for Cosmos or Polkadot.
选择Ethermint首先创建而不是Pehere Zone到Ethereum Mainnet，因为它在技术上更容易构建。但是，区块链网络必须具有Peg区域。比特币和以太坊背后有如此多的动力，忽视它们对宇宙或波尔卡多来说是一个非常冒险的举动。

#### **The Cosmos Hub**
#### **宇宙中心**

The Cosmos Hub is the main blockchain that acts as a central connector for all of the blockchains in The Cosmos Network. It is a multi asset proof-of-stake blockchain powered by Tendermint. The main token of the Cosmos Hub is the Atom, and the Atom will be used for staking and governance of the blockchain. The hub will launch with 100 Validators to start, and it will increase every year. [5]
Cosmos Hub是主要的区块链，充当宇宙网络中所有区块链的中心连接器。它是由Tendermint提供支持的多资产证明区块链。 Cosmos Hub的主要标记是Atom，Atom将用于区块链的放样和治理。该中心将启动100个验证器启动，并将每年增加。 [5]

Atom holders can either be a Validator or a Delegator. A Validator sets up a full node that secures the network and processes transactions. A Delegator delegates their Atoms to a Validator, based on their personal review of which Validators are trustworthy and capable of running a node.
Atom持有者可以是Validator或Delegator。验证器设置一个完整节点，用于保护网络并处理交易。委托人根据他们对哪些验证器值得信赖且能够运行节点的个人审查，将其原子委托给验证者。

Validators stake the Atoms, and receive Atom as rewards every block. These rewards get passed down to the Delegators with a small fee withheld for operating the Validator node. [5]
验证者放弃Atoms，并获得Atom作为每个块的奖励。这些奖励会传递给代理人，只需支付少量费用就可以操作Validator节点。 [5]

In order to keep Validators honest, a Validator who acts maliciously, and publishes incorrect data to the blockchain, is penalized financially by losing some of their Atoms. This is commonly called "_slashing._" These game theoretical requirements are used to incentivize good behaviour in a proof-of-stake blockchain. [5]
为了保持Validators的诚实，一个恶意行为的验证者，并向区块链发布不正确的数据，会因失去一些原子而在经济上受到惩罚。这通常被称为“_slashing._”。这些游戏理论要求用于激励股权证明区块链中的良好行为。 [5]

The tokens also represent governance. One Atom is one vote for any proposal on the network, such as software upgrades. Cosmos' governance protocols are fairly simple. Delegators can choose to vote themselves, or they can pass on their voting power to the Validator they delegate to. Validators must vote on every proposal, otherwise they will be slashed.
代币也代表治理。 One Atom是网络上任何提案的一票，例如软件升级。宇宙的治理协议相当简单。代表们可以选择自己投票，也可以将他们的投票权传递给他们所委托的确认者。验证人必须对每个提案进行投票，否则他们将被削减。

#### **Current Status on the Mainnet Launch**
#### **主网启动时的当前状态**

They are currently testing the testnet with partial functionality, but they are very close to having a fully implemented version of the Software ready for testing. They will release the live Mainnet sometime in Q3 2018. However, they will freeze transactions until they are satisfied the network is stable. [8]
他们目前正在使用部分功能测试testnet，但他们非常接近于准备好完全实现的软件版本进行测试。他们将在2018年第三季度的某个时间发布实时主网。但是，他们会冻结交易，直到他们对网络稳定感到满意为止。 [8]

Once that is done, they will implement IBC, and then do a "hard spoon" of Ethereum for Ethermint. [16] [A more in depth explanation on their roadmap can be found here][10].
一旦完成，他们将实施IBC，然后为Ethermint做一个以太坊的“硬勺子”。 [16][可以在这里找到更深入的路线图解释][10]。

### Developers Building on Cosmos
### 基于Cosmos的开发人员

There are two ways developers can build on top of the Cosmos Network. Building new blockchains that use IBC to interact with each other, and building smart contracts in Cosmos Zones. To build Blockchains, they have created The Cosmos SDK to allow developers to easily spin up new blockchains on the Cosmos Network.
开发人员可以通过两种方式在Cosmos Network之上构建。构建使用IBC相互交互的新区块链，并在Cosmos区域中构建智能合约。为了构建区块链，他们创建了The Cosmos SDK，允许开发人员轻松地在Cosmos网络上启动新的区块链。

#### **Cosmos SDK**
#### **Cosmos

The Cosmos team is releasing the "Cosmos SDK", which allows developers to design their own blockchains on the network with a simple modular approach. The SDK is being used to build the Cosmos Hub, so when the Mainnet launches, the SDK will also be ready for developers to build their own blockchains. The Cosmos Hub builds off of the base application that runs on the Cosmos Network with Tendermint, and then has modules added for staking, governance, and IBC. [5]
Cosmos团队发布了“Cosmos SDK”，允许开发人员使用简单的模块化方法在网络上设计自己的区块链。 SDK正用于构建Cosmos Hub，因此当Mainnet启动时，SDK也可供开发人员构建自己的区块链。 Cosmos Hub构建在使用Tendermint的Cosmos Network上运行的基础应用程序，然后为staking，Governance和IBC添加了模块。 [5]

This will allow developers to use the SDK, choose the base blockchain application, add modules such as governance or staking, build their own modules, and easily launch their own blockchain that can interoperate. This is an exciting opportunity, as it will create a new decentralized platform for developers to build on, instead of only having the token model Ethereum popularized.
这将允许开发人员使用SDK，选择基本区块链应用程序，添加治理或赌注等模块，构建自己的模块，并轻松启动可以互操作的自己的区块链。这是一个令人兴奋的机会，因为它将为开发人员创建一个新的去中心化式平台，而不仅仅是让象征模型以太坊普及。

The SDK is written in Golang, with plans for future languages being supported. But for the first year or so a blockchain on the network will have to be written in Go.
SDK是用Golang编写的，支持未来语言的计划。但是在第一年左右，网络上的区块链必须用Go编写。

#### **Building dApps on Cosmos**
#### **在Cosmos上构建dApp**

Ethermint will be the first implementation where you can build dApps on the Cosmos Network. Since it is an EVM based blockchain, the contracts can be written in Solidity. The transaction speeds of this network will also increase, because Tendermint consensus can handle many more transactions per second than Ethereum Mainnets proof-of-work consensus.
Ethermint将是您在Cosmos Network上构建dApp的第一个实现。由于它是基于EVM的区块链，因此合同可以用Solidity编写。此网络的交易速度也将提高，因为Tendermint的共识每秒可以处理比以太坊Mainnets工作量证明共识更多的交易。

### **Polkadot**
### **Polkadot**

The Polkadot Network is another project that is tackling blockchain interoperability with a strong technical team. Polkadot is being developed by Parity, the same team behind the Ethereum client of the same name, which is written in the language Rust.
Polkadot网络是另一个与强大的技术团队一起解决区块链互操作性的项目。 Polkadot由Parity开发，Parity是同名的Ethereum客户端背后的团队，用Rust语言编写。

![][11]

The Polkadot Network [10]
Polkadot网络[10]

### Technical Design and Protocols
### 技术设计和协议

#### **Consensus**
#### **共识**

They have also decoupled the consensus architecture from the state application, as Cosmos has. Their consensus engine is actually inspired by Tendermint and HoneyBadgerBFT according to their whitepaper. [11]
正如Cosmos所做的那样，他们还将共识架构与州应用程序分离开来。根据他们的白皮书，他们的共识引擎实际上受到了Tendermint和HoneyBadgerBFT的启发。 [11]

![][12]

A Breakdown of the Polkadot tech stack. A peer-to-peer network with consensus as the outer layer, which connects to the blockchain state machine through a WebAssembly interpreter. [12]
Polkadot技术堆栈的细分。具有共识作为外层的对等网络，其通过WebAssembly解释器连接到区块链状态机。 [12]

However, recently in a Youtube video they have mentioned that they plan on using a hybrid consensus mechanism with Aurand and Tendermint for PBFT. Aurand allows a randomly chosen Validator to propose a block without needed 2/3's consensus. The hybrid design allows for much faster consensus, but it also brings in the possibility that some blocks would have to be reverted if a Validator acts maliciously. [12]
然而，最近在Youtube视频中他们提到他们计划在Aurand和Tendermint上使用混合共识机制用于PBFT。 Aurand允许随机选择的Validator提出一个块，而不需要2/3的共识。混合设计允许更快的共识，但它也带来了如果Validator恶意行为则必须恢复某些块的可能性。 [12]

![][13]

The hybrid design of Tendermint PBFT and Aurand. Tendermint guarantees finality every 5 blocks in this diagram, while the four blocks in between are quickly processed without the need for 2/3's consensus. It is faster than PBFT, but there are trade offs. Bad blocks can now be published, requiring the need to revert them. [12]
Tendermint PBFT和Aurand的混合设计。 Tendermint保证了该图中每5个区块的最终结果，而其间的四个区块可以快速处理而无需2/3的共识。它比PBFT快，但有折衷。现在可以发布坏块，需要还原它们。 [12]

### Polkadots Interoperability
## #

The interoperability strategies of Cosmos and Polkadot are also similar. The Polkadot Network has the Relay Chain, which is the central connector, functioning like the Cosmos Hub. It has blockchains connecting to the Relay Chain, which they have named Parachains. Cosmos Zones and Parachains serve the same purpose. Polkadot will also have bridges to connect to live blockchains, which are similar to Cosmos' Peg Zones.
Cosmos和Polkadot的互操作性策略也类似。 Polkadot网络具有中继连接器，它是中央连接器，其功能类似于Cosmos Hub。它有连接到中继链的区块链，它们命名为Parachains。 Cosmos Zones和Parachains具有相同的用途。 Polkadot还将拥有连接现场区块链的桥梁，类似于Cosmos的Peg Zones。

#### **Parachains**
#### **Parachains**

Parachains and Cosmos Zones are both using chain-relays to have blockchain interoperability. But they do differ in their implementation. The biggest difference is on how they plan to connect the chains and share security. With Polkadot the network security is pooled and shared. This means that individual chains can leverage collective security without having to start from scratch to gain traction and trust. [13]
Parachains和Cosmos Zones都使用链中继来实现区块链互操作性。但他们的实施确实不同。最大的区别在于他们计划如何连接链并共享安全性。使用Polkadot，可以汇集和共享网络安全。这意味着各个链条可以利用集体安全性，而无需从头开始获得牵引力和信任。 [13]

This is done through bonding Dots to create new Parachains, as well as removing Parachains that become non-useful by unbonding Dots. Cosmos does not require Atoms to be bonded to create another chain, they use governance to decide whether or not the main Cosmos Hub should connect to a Cosmos Zone. [13]
这是通过粘合点来创建新的Parachains，以及通过取消粘合点去除无用的Parachains来完成的。 Cosmos不要求Atoms被绑定以创建另一个链，他们使用治理来决定主要的Cosmos Hub是否应该连接到Cosmos Zone。 [13]

#### **Bridges**
#### **桥梁**

Bridges and Peg Zones are two names for the same thing. They both allow for a connection to a live blockchain network such as the Ethereum Mainnet. It is expected that both Cosmos and Polkadot will want to quickly Bridge to the Ethereum Mainnet at the start.
Bridges和Peg Zones是同一件事的两个名字。它们都允许连接到实时区块链网络，例如以太坊主网。预计Cosmos和Polkadot都希望在开始时快速连接到以太坊主网。

#### Reaching Interoperability Between Two Chains
#### 实现两个链之间的互操作性

As stated before, the first chain to interoperate with the Cosmos Hub will be Ethermint. It is likely that Polkadot will create one as well. They shouldn't have much trouble making one since they already have so much experience with the Ethereum Parity client.
如前所述，第一个与Cosmos Hub互操作的链将是Ethermint。 Polkadot很可能也会创建一个。他们应该没有太多麻烦，因为他们已经拥有了以太网奇偶校验客户的这么多经验。

#### Polkadot Network
### #

The Polkadot Network is a proof-of-stake blockchain, and its native tokens are "Dots". The Dots provide governance, as well as game theoretical incentives for token holders to behave in honest ways. The networks central hub is the Relay Chain, which functions similar to how the Cosmos Hub does in the Cosmos Network.The network has Validators, Nominators, Collators, and Fishermen as the four major stakeholders. [13] Polkadot also has slashing to penalize bad behaviour.
Polkadot Network是一个股权证明区块链，其原生代币是“Dots”。 Dots提供治理，以及通证持有者以诚实的方式行事的游戏理论激励。网络中心枢纽是中继链，其功能类似于宇宙中心在宇宙网络中的作用。网络将验证者，提名者，合作者和渔民作为四个主要的利益相关者。 [13]波尔卡多也削减惩罚不良行为。

Validators on Polkadot serve the same purpose as Validators in Cosmos, and Nominators in Polkadot are like the Delegators in Cosmos. [11] A diagram below from the Polkadot whitepaper shows how each shareholder interacts with one another.
Polkadot上的验证器与Cosmos中的验证器具有相同的目的，而Polkadot中的Nominators就像Cosmos中的委托人一样。 [11]下面的Polkadot白皮书中的图表显示了每个股东如何相互作用。

![][14]

The interactions between the four shareholders of The Polkadot Network. [11]
Polkadot Network四个股东之间的互动。 [11]

Validators will not be expected to maintain a fully synchronized database of all Parachains, as it would be too much data to store. Therefore Validators will hand off the task of storing and Validating new Parachain blocks to a third party, known as a Collator. A Collators main function is to produce valid Parachain blocks. They must maintain a full node. They will execute an unsealed block with a zero knowledge proof and provide it to one or more Validators who are responsible for proposing a Parachain block to the Relay Chain. Collators and Validators will receive transaction fees for these tasks. [11]
验证者不会期望维护所有Parachains的完全同步的数据库，因为存储的数据太多。因此，验证者将把存储和验证新的Parachain块的任务交给第三方，称为Collat​​or。 Collat​​ors的主要功能是生成有效的Parachain块。他们必须维护一个完整的节点。他们将执行一个没有密封知识证明的未密封块，并将其提供给一个或多个负责向中继链提出Parachain块的验证器。 Collat​​ors和Validators将收取这些任务的交易费用。 [11]

Fishermen are like independent bounty hunters seeking large one off rewards. It is expected the mere existence of them will result in misbehaviour seldom occurring, because Validators and Collators know they will be caught and slashed. Fishermen will send proofs of any illegal activity created by Validators or Collators. [11]
渔民就像独立的赏金猎人一样寻求大笔奖励。预计仅仅存在它们将导致不良行为很少发生，因为验证者和合作者知道他们会被抓住并被削减。渔民将发送Validators或Collat​​ors创建的任何非法活动的证据。 [11]

Governance has a few layers, the main one being voting through the network with Dots. They also plan to have a council of 12–24 accounts who vote on proposals that did not receive attention from stakeholders. [14] This is a backup solution to low voter turnout. They have promised to add in [Adaptive Quorum Biasing][15]. They have opened the door to adding in different voting metrics, such as giving more weight to long terms holders or Validators, or even dApp teams that have a long history of contributing to the network. [15] But these are just ideas at the moment.
治理有几个层次，主要是通过Dots在网络上投票。他们还计划设立一个由12-24个账户组成的理事会，对没有得到利益相关方关注的提案进行投票。 [14]这是低选民投票率的备用解决方案。他们承诺会增加[Adaptive Quorum Biasing][15]。他们为增加不同的投票指标打开了大门，例如为长期持有者或验证者，甚至是长期为网络做出贡献的dApp团队赋予更多权重。 [15]但这些只是目前的想法。

#### **Current Status on the Mainnet Launch**
#### **主网启动时的当前状态**

Their first proof of concept has been able to validate blocks and agree upon state transitions. They have been able to send a few Dots across a testnet. The proof of concept is written in Rust, and the runtime is architected on WebAssembly. [16]
他们的第一个概念证明已经能够验证块并同意状态转换。他们已经能够通过一个测试网发送几个点。概念证明是用Rust编写的，运行时是在WebAssembly上构建的。 [16]

They have announced a target launch date of Q3 2019, and have continually stated they are on pace to meet this. [16]
他们宣布了2019年第三季度的目标发布日期，并且一直表示他们正在努力实现这一目标。 [16]

### Developers Building on Polkadot
### 开发人员在Polkadot上构建

#### **Substrate**
#### **基质**

Substrate is a tech stack to build blockchains on. It is a very similar idea to what Cosmos has done with The Cosmos SDK. The Polkadot Network is built on top of Substrate, just like The Cosmos Hub is built on top of the Cosmos SDK. You don't have to worry about consensus or networking, you can just focus on the blockchain application.
Substrate是一个用于构建区块链的技术堆栈。这与Cosmos使用The Cosmos SDK所做的完全相似。 Polkadot网络建立在Substrate之上，就像Cosmos Hub建立在Cosmos SDK之上。您不必担心共识或网络，您可以只关注区块链应用程序。

Substrate is written in Rust, however the core functionality of the state machine compiles into WebAssembly. It can run natively using the complied Rust code, or through the WebAssembly interpreter. [14] This can be seen in the diagram below.
Substrate是用Rust编写的，但状态机的核心功能编译成WebAssembly。它可以使用编译的Rust代码或通过WebAssembly解释器本机运行。 [14]这可以在下图中看到。

![][16]

If the native client node is up to date it can run the WebAssembly code natively, but if not it will have to use the on chain WebAssembly Interpreter, which will be slower. [12]
如果本机客户机节点是最新的，它可以本机运行WebAssembly代码，但如果不是，则必须使用on链式WebAssembly解释器，这将更慢。 [12]

#### **Building dApps on Polkadot**
#### **在Polkadot上构建dApp**

You can built dApps on top of the Parachains that support smart contracts. This is similar to Cosmos, wherein both the Polkadot Relay Chain and the Cosmos Hub do not have smart contract support, but their connecting chains can.
您可以在支持智能合约的Parachains之上构建dApp。这类似于Cosmos，其中Polkadot Relay Chain和Cosmos Hub都没有智能合约支持，但它们的连接链可以。

### Comparing Cosmos and Polkadot
### 比较Cosmos和Polkadot

Let's take a look at the main components of each network, and how they stack up against each other. This is the juicy part of the article where you can compare the differences and decide for yourself which network is likely to be more successful!
让我们来看看每个网络的主要组件，以及它们如何相互叠加。这是文章的多汁部分，您可以比较差异并自行决定哪个网络可能更成功！

#### **Consensus Protocols**
#### **共识协议**

They both use Tendermint for PBFT consensus, although Polkadot is promising to use hybrid consensus with Aurand. The hybrid approach will speed up consensus, but it may result in the reverting of blocks. Both approaches still need to be battle tested on a live blockchain network. Both protocols are much faster than Ethereum or Bitcoins proof-of-work protocols.
他们都使用Tendermint进行PBFT共识，尽管Polkadot承诺与Aurand使用混合共识。混合方法将加速达成共识，但可能导致块的恢复。这两种方法仍然需要在实时区块链网络上进行战斗测试。这两种协议都比以太坊或比特币的工作量证明协议快得多。

Polkadot also mentions on their website that they plan to use ["Optimistic BFT Proof of Authority"][17], however it isn't clear what they mean by this. The [Web3 foundation stated more recently][18] that "Polkadot is Envisaged to be fully open and public without any particular organization or trusted authority required to maintain it." Judging from the overall design Polkadot laid out in the whitepaper, it is clear that proof-of-stake with Dots will be the dominating factors for consensus. If proof-of-authority is used, it will probably be in a minor role.
Polkadot还在他们的网站上提到他们打算使用[“乐观的BFT权威证明”][17]，但不清楚它们的含义是什么。 [Web3基金会最近表示][18]“Polkadot被设想为完全公开和公开，没有任何特定的组织或信任的权威来维护它。”从Polkadot在白皮书中提出的整体设计来看，很明显，Dots的股权证明将成为达成共识的主要因素。如果使用了权威证明，它可能只是次要角色。

#### **Token and Proof-of-Stake Design**
#### **通证和证明设计**

They both have a token used for governance and staking. Each has Validators securing the network, and then Delegators/Nominators that bond tokens to a Validator. Polkadot has added in Collators to help with the Parachains, and Fisherman to keep a watchful eye on any bad actors.Both of them have slashing for bad actors, and the slashing parameters are likely to be tweaked and tested upon network launch. Polkadots proof-of-stake design is more advanced, but this also makes it more complicated.
他们都有一个用于治理和赌注的通证。每个都有Validators保护网络，然后是将通证绑定到Validator的Delegators / Nominators。 Polkadot已加入Collat​​ors以帮助Parachains，而Fisherman则会密切注意任何不良演员。他们中的任何一方都会对不良演员进行大幅削减，并且在网络发布时可能会对调整参数进行调整和测试。 Polkadots股权证明设计更先进，但这也使它变得更加复杂。

Cosmos' advantage is they will be first out of the gate with the Mainnet, and their simple design will make it easier for stakeholders to organize and create a stable decentralized network. Polkadots advantage is that the four stakeholders allow for the network to be even more decentralized. It is hard to pick out which strategy will work better, but time will tell.
Cosmos的优势在于它们将首先脱离Mainnet，它们的简单设计将使利益相关者更容易组织和创建稳定的去中心化网络。 Polkadots的优势在于四个利益相关者允许网络更加去中心化。很难找出哪种策略能更好地运作，但时间会证明。

#### **Governance**
#### **治理**

Cosmos has a less complex protocol in governance, as it is only based on Validators, Delegators, and a written constitution.
Cosmos在治理方面的协议不太复杂，因为它仅基于Validators，Delegators和成文宪法。

Polkadot is promising more in governance, by adding adaptive quorum biasing, and a council of Validators who vote on proposals that have low stakeholder turn out.
Polkadot在治理方面承诺更多，通过增加自适应仲裁偏见，以及一个对利益相关者投票率较低的提案进行投票的Validators委员会。

Proof-of-stake governance is largely untested in live blockchains, and both teams can be expected to put forward proposals that tweak the governance protocols at the start. Both designs are simple enough to allow for a natural progression towards a stronger decentralized governance system through small iterations and improvements. It is better to start simple and add complexity, rather than impose a bunch of rules and regulations at the start.
实时区块链中的股权证明治理在很大程度上未经过测试，并且可以期望两个团队提出在一开始就调整治理协议的提案。这两种设计都很简单，通过小规模的迭代和改进，可以实现更强大的去中心化治理体系。最好从简单开始并增加复杂性，而不是在一开始就强加一堆规则和规则。

The networks also appear to be decentralized enough to prevent a few Validators from controlling the network. Hopefully this will allow them to avoid some of the issues the EOS Mainnet launch has encountered with their low threshold of 21 block producers who have been accused of being too centralized.
网络似乎也足够去中心化，以防止一些验证器控制网络。希望这将使他们能够避免EOS Mainnet推出的一些问题，因为他们被指控过于集中的21个街区生产商的低门槛。

#### **Security**
#### **安全**

Polkadot allows for shared pool security between Parachains and the Relay Chain, and Cosmos has left it up to the Zones to secure their own networks. What these means is in order to start a new Parachain, you need to accumulate a large amount of Dots, and stake them in order to attach your Parachain to the Polkadot Network. Therefore the security of every Parachain is rooted in the Dots themselves, which creates a shared security model for the whole network.
Polkadot允许Parachains和Relay Chain之间的共享池安全性，而Cosmos已经将它留给了区域来保护自己的网络。这些意味着为了开始一个新的Parachain，你需要积累大量的Dots，然后放入它们以便将你的Parachain连接到Polkadot网络。因此，每个Parachain的安全性都植根于Dots本身，这为整个网络创建了一个共享的安全模型。

Cosmos plans to allow for Zones to govern their own security model, which is known as a Sovereign Zone. The Cosmos Hub will use governance to decide what Zones are allowed to connect to it. Other Hub's and Zone's are allowed to choose their own security method, which offers a lot of flexibility for the network.
Cosmos计划允许区域管理自己的安全模型，即所谓的主权区域。 Cosmos Hub将使用治理来决定允许哪些区域连接到它。其他Hub和Zone可以选择自己的安全方法，为网络提供了很大的灵活性。

In any case, only do an IBC token transfer with another Zone or Hub that you trust. A Zone could be secretly planning to censor transactions in the future, so you would want to review the Zone's history and determine if they are truly decentralized and trustworthy. However, this is true of any blockchain, as you wouldn't want to trade away your Bitcoin for another blockchain token you've never heard of.
在任何情况下，只能与您信任的另一个区域或集线器进行IBC通证转移。区域可能会秘密计划在未来审查交易，因此您需要查看区域的历史记录并确定它们是否真正去中心化且值得信赖。但是，对于任何区块链都是如此，因为您不希望将比特币换成另一个您从未听说过的区块链通证。

It is important to note when doing an IBC transfer, you must trust the Zone you are exchanging tokens with, and any relayers. If you receive a token on Zone B that originated from Zone A but went through the Hub (Zone A -> Cosmos HUB -> Zone B), then you need to trust all three blockchains (not only Zone A).
重要的是要注意，在进行IBC转移时，您必须信任与您交换通证的区域以及任何中继者。如果您在区域B上收到源自区域A但通过集线器（区域A  - > 宇宙集线器 - > 区域B）的通证，则您需要信任所有三个区块链（不仅是区域A）。

What is typically done today when trading tokens between blockchains is similar, in that you need to trust the centralized exchange you use to trade cryptocurrencies. You must trust both Blockchain A and B, as well as the centralized exchange as a trusted third party.
在区块链之间交易通证时，通常所做的事情是类似的，因为您需要信任用于交换数字货币的集中交换。您必须信任区块链A和B，以及作为受信任的第三方的集中交换。

With Cosmos' Sovereign Zones, every Zone that connects has to create a secure decentralized network on their own. So if the Cosmos Hub had 5 fully working Zones, there might be 100 Cosmos Validators, And 5 x 100 Zone Validators. This is a much more decentralized model than Polkadot, and if it works it should work well.
通过Cosmos的Sovereign Zones，每个连接的区域都必须自己创建一个安全的去中心化网络。因此，如果Cosmos Hub有5个完全可用的区域，则可能有100个Cosmos验证器和5个100区域验证器。这是一个比Polkadot更去中心化的模型，如果它工作，它应该工作得很好。

It is conceivable that 100 Polkadot validators could secure the Relay-Chain and 5 Parachains, while the Cosmos Network would need 100 Hub Validators and 500 Zone Validators. This shows that Polkadots model makes it easier to create new Parachains, but it also means there is power concentrated in Dot ownership. Cosmos is allowing for a more decentralized security model, but it will be harder to implement.
可以想象，100个Polkadot验证器可以保护中继链和5个子链，而Cosmos Network需要100个Hub验证器和500个区域验证器。这表明Polkadots模型可以更容易地创建新的Parachains，但这也意味着功能集中在Dot所有权上。 Cosmos允许更去中心化的安全模型，但实施起来会更困难。

However, Cosmos has stated that they also plan to support a shared security model shortly after launch. Once they have this, it gives developers more flexibility, since on Cosmos they could share the security rooted in Atoms, or create their own token and security. The trade off they are making to have both models is that Sovereign Zones get added to the network through governance, which opens up the possibility for a malicious zone to connect, although it should be unlikely that this would happen.
但是，Cosmos表示他们还计划在发布后不久支持共享安全模型。一旦他们拥有了这个，它就为开发人员提供了更大的灵活性，因为在Cosmos上他们可以共享以Atoms为根的安全性，或创建自己的通证和安全性。他们正在制定这两种模式的权衡是通过治理将Sovereign Zones添加到网络中，这为恶意区域连接提供了可能性，尽管这种情况不太可能发生。

A unique feature that Polkadot has is the ability to upgrade the runtime without the need for a fork. They do this by actually storing WebAssembly runtimes on the chain. Nodes that have not updated their local versions of the client will be forced to use this runtime. This eliminates the need to do off chain coordination for the Validators to update their software, which increases the security by eliminating a potential for chain splits.
Polkadot的一个独特功能是无需fork即可升级运行时。他们通过在链上实际存储WebAssembly运行时来实现这一点。未更新其本地版本客户端的节点将被强制使用此运行时。这消除了对验证器进行链下协调以更新其软件的需要，这通过消除链分裂的可能性来增加安全性。

#### **Speed and Scalability**
#### **速度和可扩展性**

Both of the consensus protocols allow for 1000's of transactions per second. This depends on how many nodes there are and what the parameters are. For each Parachain or Zone added, it will increase the amount of transactions that can be done, easily reaching 1000's of transactions per second for both networks. The actual bottleneck will be in the state machine applications running in each Zone or Parachain.
两种共识协议都允许每秒1000次的交易处理。这取决于有多少节点以及参数是什么。对于添加的每个Parachain或Zone，它将增加可以完成的交易量，轻松达到两个网络每秒1000次的交易。实际的瓶颈将出现在每个Zone或Parachain中运行的状态机应用程序中。

#### **Interoperability**
#### **互操作性**

Each network is using chain-relays to connect to a central hub. They both are using Peg Zones/Bridges to connect to the Ethereum Mainnet, and they are both aiming to make this connection very quickly. They will both make it easy to run EVM Zones/EVM Parachains on their respective networks. Cosmos will launch Ethermint after the Mainnet launch is stable, and Polkadot is likely to do something similar.
每个网络都使用链中继来连接到中央集线器。他们都使用Peg Zones / Bridges连接到Ethereum Mainnet，他们都希望能够非常快速地建立这种连接。它们都可以轻松地在各自的网络上运行EVM Zones / EVM Parachains。在Mainnet发布稳定后，Cosmos将推出Ethermint，而Polkadot可能会做类似的事情。

#### **Developers**
#### **开发人员**

The Cosmos-SDK and Polkadots Substrate are the same idea for a development platform. They make it simple for developers to create their own blockchains on the network. Both teams are focusing on being developer friendly, and trying to open a new platform for development. Just like Ethereum did with smart contracts and tokens.
Cosmos-SDK和Polkadots Substrate与开发平台的想法相同。它们使开发人员可以轻松地在网络上创建自己的区块链。两个团队都致力于开发人员友好，并试图打开一个新的开发平台。就像以太坊用智能合约和代币一样。

Where development on each platform differs is in Polkadots commitment to WebAssembly and Rust, and Cosmos' commitment to Golang.
每个平台上的开发不同的是Polkadots对WebAssembly和Rust的承诺，以及Cosmos对Golang的承诺。

Polkadot is looking to the future by supporting WebAssembly. WebAssembly is supported by Google, Apple, Microsoft, and Mozilla, and the chances are high that it becomes very widely used in the next decade. [17] Rust has also been pushing to be one of the leading languages that compiles into WebAssembly. On a 5 year outlook, it appears that Polkadot is making the right moves to attract developers long term.
Polkadot通过支持WebAssembly展望未来。 WebAssembly得到谷歌，苹果，微软和Mozilla的支持，很有可能在未来十年内得到广泛应用。 [17] Rust也一直在努力成为编译成WebAssembly的主要语言之一。在5年的展望中，似乎Polkadot正在采取正确的措施来长期吸引开发商。

However as we have seen with Ethereum, sometimes being first to market is more important. There are other smart contract blockchains that allow writing of smart contracts in other languages, but Ethereum accounts for almost all the smart contract activity because they built an ecosystem around Solidity and the EVM that caught on early with developers.
然而，正如我们在以太坊中看到的那样，有时首先进入市场更为重要。还有其他智能合约区块链允许用其他语言编写智能合约，但以太网几乎涵盖了所有智能合约活动，因为他们建立了一个围绕Solidity和EVM的生态系统，这个生态系统早期与开发人员相关。

Cosmos is going to be first to market. The main way to develop on Cosmos will be in Golang through the Cosmos-SDK, and they also have [Lotion-JS][19] which is a Javascript implementation that can create blockchains on top of Tendermint. [However the website states that the Lotion-JS][20] code has not been security audited, and to use the Cosmos-SDK if you want to secure value.
Cosmos将率先推向市场。在Cosmos上开发的主要方式是在Golang中通过Cosmos-SDK，他们还有[Lotion-JS][19]这是一个Javascript实现，可以在Tendermint之上创建区块链。 [但网站声明，Lotion-JS][20]代码未经过安全审核，如果您想保护价值，请使用Cosmos-SDK。

Right now there is no work by Cosmos to support WebAssembly. However you can bet at some point soon Golang will add support to compile into WebAssembly. [They are already making good progress][21]. Lastly, Golang is also a simpler language to learn when compared to Rust, and there are more Golang developers worldwide.
目前，Cosmos没有支持WebAssembly的工作。但是你可以在很快就打赌Golang将增加对编译到WebAssembly的支持。 [他们已经取得了很好的进展][21]。最后，与Rust相比，Golang也是一种比较简单的学习语言，全球有更多Golang开发人员。

**Mainnet Launches**
**主网发布**

Cosmos is launching in Q3 2018. However they have stated they will lock transactions down until the network is stable, and are open to rollbacks until everyone is convinced the network is safe to run live.
Cosmos将于2018年第三季度推出。但他们表示，他们将锁定交易，直到网络稳定，并且开放回滚，直到每个人都确信网络可以安全运行。

Polkadot is launching in Q3 2019, so they are giving a year head start to Cosmos.
Polkadot将于2019年第三季度推出，因此他们将为Cosmos提供一年的领先优势。

Cosmos appears to have the advantage here, but Polkadot also has the opportunity to learn for Cosmos's mistakes.
Cosmos似乎在这里具有优势，但Polkadot也有机会学习Cosmos的错误。

### Summary
### 摘要

It is too hard to tell now which network will be more successful. But it is safe to say whichever one attracts more developers will be the one that grows the fastest and takes the biggest share of the market.
现在很难说哪个网络会更成功。但可以肯定地说，无论哪一个吸引更多的开发人员将是增长最快并占据市场最大份额的开发商。

As a developer, you would want to start learning Golang if you think Cosmos is going to be more successful, or Rust and WebAssembly if you believe in Polkadot. You can also write a parachain in any other language that compiles down to WebAssembly, such as C or C++.
作为开发人员，如果你认为Cosmos会更成功，你会想要开始学习Golang，如果你相信Polkadot，你会想要开始学习Rust和WebAssembly。您还可以使用编译为WebAssembly的任何其他语言编写parachain，例如C或C ++。

While one will end up being bigger than the other, it is interesting to note that it is possible to have a world where they both exist, and are connected with each other. For example, if both networks create Peg Zones/Bridges on the Ethereum Mainnet, you could be trading an ERC20 replica of Dots for an ERC20 replica of Atoms. This would allow the two networks to be fully interoperable. This could create a massive intertwined blockchain network where all the tokens on Ethereum, all the Parachains, and all the Zones are interoperable. This would allow t[he Ethereum Plasma chains][22] to be connected as well.
虽然最终会比另一个更大，但值得注意的是，它们可能拥有一个既存在又相互联系的世界。例如，如果两个网络都在以太坊主网上创建Peg Zones / Bridges，那么您可以使用Dots的ERC20副本交换原子的ERC20副本。这将允许两个网络完全互操作。这可能会创建一个巨大的交织区块链网络，其中以太坊，所有Parachains和所有区域的所有通证都是可互操作的。这样就可以连接[以太坊等离子体链][22]。

As you can see the network effects for Polkadot and Cosmos creating a blockchain interoperable network are astronomical. It is well worth the time to follow each networks progression, and root for both of them to succeed.
正如您所看到的，Polkadot和Cosmos创建区块链可互操作网络的网络效应是天文数字。值得花时间关注每个网络的进展，并为两者取得成功。

### Sources
### 来源

[1] [_Chain Interoperability_— Vitalik Buterin, September 2016][23]

[2] [Tendermint Whitepaper][24]

[3] [The Cosmos Network Website][2]

[4] [_Understanding the Value Proposition of Cosmos_ — Cosmos Network Blog][25]

[5][ Cosmos Whitepaper][26]

[6] [_A Beginners Guide to Ethermint_ — Cosmos Network Blog][27]

[7] [_The Internet of Blockchains — How Cosmos Does Interoperability, Starting with the Ethereum Peg Zone_ — Cosmos Network Blog][28]

[8]_ [__Latest in Cosmos Critical Community Update May_ — Cosmos Network Blog][10]

[9] [_Introducing the Hard Spoon_ — Cosmos Network Blog][29]

[10][ Polkadot Network website][3]

[11] [Polkadot Whitepaper][30]

[12] [EH18 Gavin Wood — Tech Talks: The Energy Blockchain — Tech Update][31]

[13] [Polkadot Lightpaper][32]

[14] [_How Polkadot Tackles the Biggest Problems Facing Blockchain Innovators_ — Polkadot Network Blog][33]

[15] [Gavin Wood Edcon 2018 Polkadot Presentation][34]

[16] [_Now Live — Polkadot Proof of Concept _— Polkadot Network Blog][35]

[17] [WebAssembly Wikipedia][36]

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

