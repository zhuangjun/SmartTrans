
[Source](https://medium.com/xpring/layer-3-is-for-interoperability-ca387fa5f7e2 "Permalink to Layer 3 Is for Interoperability – Xpring – Medium")
[来源]（https://medium.com/xpring/layer-3-is-for-interoperability-ca387fa5f7e2“第3层的永久链接是互操作性 -  Xpring  - 中等”）

# Layer 3 Is for Interoperability – Xpring – Medium
# 第三层是为了互操作性

## The Protocol Stack for the Internet of Value
## 价值互联网的协议栈

Layer 2 technologies such as [Lightning][1] and [Plasma][2] are said to ["promise big strides in scalability, interoperability and functionality"][3] for blockchains. However, most Layer 2 projects focus primarily on scalability and only occasionally mention interoperability. Why? This isn't just a matter of timing or stage of development. This is actually how it should be, because **Layer 2 is for scaling. Layer 3 is for interoperability.**
像[Lightning][1]和[Plasma][2]这样的第2层技术被称为[“在可扩展性，互操作性和功能性方面取得重大进展”][3]用于区块链。但是，大多数第2层项目主要关注可扩展性，偶尔也会提到互操作性。为什么？这不仅仅是时间或发展阶段的问题。实际上它应该是这样的，因为**第2层用于扩展。第3层用于互操作性。**

Scaling and interoperability are complementary but separate concerns that are best addressed through different protocol layers. To make this case, I'll give a bit of background on the purpose of layered protocol architectures and the roles of Layers 1, 2, and 3. I'll also explain how separating scalability and interoperability improves the solutions for both and paves the way for an Internet of Value whose design is surprisingly analogous to the internet itself.
扩展和互操作性是互补的，但是通过不同的协议层可以最好地解决这些问题。为了说明这一点，我将介绍分层协议体系结构的目的以及第1,2和3层的角色。我还将解释分离可伸缩性和互操作性如何改进两者的解决方案并铺平价值互联网的方式，其设计与互联网本身惊人地类似。

### The Purpose of Layered Protocols
### 分层协议的目的

> It is always possible to agglutinate multiple separate problems into a single complex interdependent solution. In most cases this is a bad idea. _
> 始终可以将多个单独的问题凝聚成一个复杂的相互依赖的解决方案。在大多数情况下，这是一个坏主意。_
_\- [RFC 1925: The Twelve Networking Truths][4]
_\- [RFC 1925：十二网络真相][4]

The internet is the best example of a layered protocol architecture, and this design was a key factor in the internet's growth and usefulness. Different pieces of functionality are split into separate protocols that build on one another, rather than being bundled together in one monolithic system.
互联网是分层协议架构的最佳范例，这种设计是互联网增长和实用性的关键因素。不同的功能部分被分成彼此构建的单独协议，而不是在一个单片系统中捆绑在一起。

For example, the Internet Protocol (IP) is built upon different underlying networking technologies or "link layer" protocols, such as Ethernet and WiFi. Because IP was designed as a separate layer, it is not tied to any specific networking technology and is able to work the same way over many different types of wired or wireless connections.
例如，因特网协议（IP）建立在不同的底层网络技术或“链路层”协议上，例如以太网和WiFi。由于IP被设计为单独的层，因此它不依赖于任何特定的网络技术，并且能够以相同的方式在许多不同类型的有线或无线连接上工作。

![][5]

The "hourglass" architecture of the Internet: IP abstracts away the differences between underlying networks and applications built on top of it
互联网的“沙漏”架构：IP抽象了底层网络和基于它构建的应用程序之间的差异

Layered protocol architectures provide a number of important benefits:
分层协议架构提供了许多重要的好处：

* **Interoperability - **IP works across many different networking technologies by abstracting away their differences. As long as a link can send data, IP can communicate over it. This means we can connect seamlessly no matter what type of underlying network we are using.
**互操作性**IP可以通过抽象出差异来适用于许多不同的网络技术。只要链接可以发送数据，IP就可以通过它进行通信。这意味着无论我们使用何种类型的底层网络，我们都可以无缝连接。
* **Upgradeability - **Abstractions enable different layers to evolve separately. While the internet was built in the 1970s, the fact that IP abstracts away the different networking technologies has enabled us to upgrade from dial-up to fiber optic and 4G links. The higher level protocols did not need to change, but our connections keep getting faster as newer networking technologies are developed.
**可升级性**抽象可以使不同的层分别进化。虽然互联网是在20世纪70年代建立的，但IP抽象出不同的网络技术这一事实使我们能够从拨号升级到光纤和4G链路。更高级别的协议不需要改变，但随着更新的网络技术的发展，我们的连接越来越快。
* **Common Infrastructure for Multiple Use Cases - **IP is also independent of any particular use case, which enables the same infrastructure to be used for applications ranging from the Web to email and Voice over IP (VoIP). If the internet had been built specifically for file transfers, we might have needed whole separate networks for each different use case. Instead, we have a single internet that can be used for many types of communication.
**多用途案例的通用基础设施**IP也独立于任何特定用例，这使得相同的基础架构可用于从Web到电子邮件和IP语音（VoIP）的应用程序。如果互联网是专门为文件传输而构建的，那么我们可能需要为每个不同的用例提供完整的独立网络。相反，我们有一个可用于多种类型通信的互联网。

Layering is an essential tool for designing systems like the internet or Internet of Value, but deciding which features fit into which layers is the hardest part. Too many layers makes the system overly complex, but too much bundling hampers interoperability and upgradeability.
分层是设计互联网或价值互联网等系统的重要工具，但决定哪些特征适合哪些层是最难的部分。太多的层使系统过于复杂，但过多的捆绑会妨碍互操作性和可升级性。

### A Protocol Stack for the Internet of Value
### 价值互联网的协议栈

The Interledger protocol stack has direct parallels with the internet protocol suite, largely because we found that splitting functionality into analogous layers helped solve issues at each level. Here, I'll briefly go through each of the layers to explain their roles and show the benefits of focusing Layer 3 on interoperability.
Interledger协议栈与互联网协议套件有直接的相似之处，主要是因为我们发现将功能拆分为类似层有助于解决每个级别的问题。在这里，我将简要介绍每个层来解释它们的作用，并展示将第3层集中在互操作性上的好处。

![][6]

The Interledger Protocol (ILP) connects and abstracts away the differences between Layer 2 technologies
Interledger Protocol（ILP）连接并抽象出第2层技术之间的差异

### Layer 1: Ledgers
### 第1层：账本

Blockchains and other types of ledgers are like the physical cables that underpin the internet. Digital communication is ultimately made possible by wired and wireless links that connect individual devices and carry data between them. Similarly, ledgers are the foundation of the Internet of Value, because they enable two people that accept the same asset or hold accounts in the same system to transact.
区块链和其他类型的分类帐就像支撑互联网的物理电缆。数字通信最终通过有线和无线链路实现，这些链路连接各个设备并在它们之间传输数据。同样，分类账是价值互联网的基础，因为它们使两个接受同一资产的人或在同一系统中持有账户进行交易。

Like physical cables, ledgers and blockchains need additional protocols built on top of them to facilitate the exchange of data or money. In the case of blockchains, the main issues are scaling transaction throughput and lowering latencies while maintaining decentralization.
与物理电缆，分类账和区块链一样，需要在其上构建额外的协议，以便于数据或资金的交换。在区块链的情况下，主要问题是缩放交易吞吐量和降低延迟，同时保持去中心化。

Ledgers are destined to be performance bottlenecks because they are logically centralized. Whether a ledger is maintained in a centralized or decentralized fashion, it needs a single consistent, shared state of accounts and balances to ensure that money cannot be "double-spent". Updating widely shared state is always going to be relatively expensive and slow. The bottleneck will either be the speed of consensus in a distributed ledger, or the performance of a single machine in the case of a centralized ledger. Improving ledger scalability is very useful, but moving common and repeated transactions off of the main ledger using Layer 2 protocols will increase throughput and lower latencies even more.
分类帐注定会成为性能瓶颈，因为它们在逻辑上是集中的。无论分类账是以集中还是去中心化的方式维护，它都需要一个统一的，共享的账户和余额状态，以确保资金不会“双重花费”。更新广泛共享状态总是相对昂贵且缓慢。瓶颈将是分布式账本中的共识速度，或者是集中式分类账中单台机器的性能。提高分类帐可伸缩性非常有用，但使用第2层协议从主分类帐中移除常见和重复交易将提高吞吐量并降低延迟。

### Layer 2: Local Area Networks
### 第2层：局域网

Layer 2 solutions for scaling blockchains are analogous to the link layer protocols of the internet stack, such as Ethernet and WiFi. This layer creates bilateral links or Local Area Networks (LANs)* that allow directly connected parties or devices to communicate efficiently over the underlying network.
用于缩放区块链的第2层解决方案类似于互联网堆栈的链路层协议，例如以太网和WiFi。该层创建双边链路或局域网（LAN）*，允许直接连接的各方或设备通过底层网络进行有效通信。

Layer 2 technologies for blockchains are designed to enable fast, cheap, high-throughput transactions over the underlying ledger, generally by using a form of programmatic escrow. This category includes bilateral technologies like [payment channels][7] and [generalized state channels][8], as well as multilateral solutions including payment channel networks like [Lightning][9] and [Raiden][10], [sidechains][11], and [Plasma][12]. Each of these enable faster, cheaper transactions by allowing pairs or smaller groups of account holders to transact without needing to interact with the main ledger each time.
区块链的第2层技术旨在通过使用一种程序化托管方式在底层分类账上实现快速，廉价，高吞吐量的交易。此类别包括[支付通道][7]和[广义国家通道][8]等双边技术，以及包括[闪电网络][9]和[雷电网络][10]，[侧链]等支付通道网络的多边解决方案[11]，和[等离子][12]。通过允许成对或较小的账户持有者组进行交易而不需要每次与主分类账交互，这些中的每一个都能够实现更快，更便宜的交易。

#### Programmatic Escrow
### #

The core mechanism of Layer 2 solutions is a form of programmatic escrow. Assets are first put into a holding account, script, or smart contract on the main ledger. Then, two or more parties can carry out numerous fast transactions by updating their local state to change the allocation of the escrowed assets. If or when the parties want to close out their off-ledger relationship, they present the final state to the main ledger, which checks its validity and distributes the escrowed assets accordingly.
第2层解决方案的核心机制是程序化托管的一种形式。资产首先被放入主分类账的持有账户，脚本或智能合约中。然后，两个或更多方可以通过更新其本地状态来执行多次快速交易以改变托管资产的分配。如果当事人想要结束其分类账关系，他们会将最终状态呈现给主分类账，主分类账检查其有效性并相应地分配托管资产。

Importantly, the features offered by the underlying ledger directly determine the types of functionality the Layer 2 system can include, because ledgers vary in the types of programmatic escrow they support.
重要的是，底层分类帐提供的功能直接决定了第2层系统可以包含的功能类型，因为分类帐在它们支持的程序托管类型方面有所不同。

> Layer 2 solutions are necessarily tied to certain ledgers, because they leverage specific capabilities in the underlying Layer 1 system.
> 第2层解决方案必然与某些分类账相关联，因为它们利用底层第1层系统中的特定功能。

This is why [Lightning is defined in terms of Bitcoin scripts][13], [Raiden uses specific Ethereum smart contracts][14], and Plasma implementations would similarly use well-specified smart contracts. Lightning may work with specific (SegWit-supporting) forks of Bitcoin like Litecoin, and Raiden and Plasma may work with other blockchains that use the Ethereum Virtual Machine (EVM). However, Each Layer 2 technology would be worse if they tried to support ledgers with vastly different sets of features (for example, [Lightning without SegWit][15] or Plasma implemented using only Bitcoin scripts). This is completely fine though! Layer 2 scaling solutions can and should take advantage of every capability provided by the underlying ledger.
这就是为什么[闪电网络是根据比特币脚本定义][13]，[雷电网络使用特定的以太坊智能合约][14]，等离子实现同样会使用明确指定的智能合约。 闪电网络可以使用比特币（如Litecoin）的特定（SegWit支持）分叉，Raiden和Plasma可以与使用以太坊虚拟机（EVM）的其他区块链一起使用。但是，如果每个第2层技术试图支持具有完全不同功能集的分类账（例如，[没有SegWit的Lightning][15]或仅使用比特币脚本实现的Plasma），则每个第2层技术会更糟。这完全没问题！第2层扩展解决方案可以并且应该利用底层分类帐提供的每个功能。

The close connection between Layers 1 and 2 is precisely why we need a separate layer for interoperability. True interoperability is all about abstraction and requires minimizing the set of features the protocol uses. The fewer features the interoperability layer expects from the layer below, the more heterogeneous networks it can connect. Since Layer 2 solutions can and should leverage specific Layer 1 capabilities, we need a separate layer for interoperability that uses as few ledger-specific functions as possible.
第1层和第2层之间的紧密连接正是我们需要一个单独的互操作层的原因。真正的互操作性完全取决于抽象，并且需要最小化协议使用的功能集。互操作层期望从下面的层中获得的功能越少，它可以连接的异构网络就越多。由于第2层解决方案可以并且应该利用特定的第1层功能，因此我们需要一个单独的互操作层，使用尽可能少的分类帐特定功能。

### Layer 3: Interoperability
### 第3层：互操作性

The purpose of Layer 3 is to abstract away the differences between different Layer 1 and 2 technologies to connect vastly different types of networks. This is the role of the Internet Protocol (IP) on the internet and the Interledger Protocol (ILP) in the Internet of Value.
第3层的目的是抽象出不同的第1层和第2层技术之间的差异，以连接不同类型的网络。这是互联网上的互联网协议（IP）和价值互联网中的Interledger协议（ILP）的作用。

The core protocol of the internet stack, IP, routes packets of data across networks while abstracting away the differences between the underlying telecommunication technologies. The internet was successful precisely because it used such a clean abstraction and was able to connect _everything_, from phone lines (via dial-up), to cellular and satellite networks, to dedicated fiber optic cables — and even [carrier pigeons][16].
互联网堆栈的核心协议IP通过网络路由数据包，同时抽象出底层电信技术之间的差异。互联网之所以成功，恰恰是因为它使用了如此简洁的抽象，能够连接一切，从电话线（通过拨号）到蜂窝和卫星网络，再到专用光缆 - 甚至[载体鸽][16] 。

The only feature IP requires of underlying networks is the ability to send data. It does not depend on any additional features or even guarantees of speed or reliability. Because of its simple abstraction, IP was able to create a universal network of networks that today connects over half of the human population.
IP需要底层网络的唯一功能是发送数据的能力。它不依赖于任何附加功能，甚至不依赖于速度或可靠性。由于其简单的抽象，IP能够创建一个通用的网络网络，如今连接了超过一半的人口。

#### Minimal Abstraction Over Layer 2 Networks
#### 第2层网络上的最小抽象

In the Internet of Value, ILP packetizes value like IP packetizes data. It routes packets of money across networks while abstracting away the differences between assets and ledger or Layer 2 technologies. Like IP, the core of ILP is the network-agnostic packet and address format.
在价值互联网中，ILP打包像IP打包数据一样的价值。它通过网络路由数据包，同时抽象出资产和分类账或第2层技术之间的差异。与IP一样，ILP的核心是与网络无关的数据包和地址格式。

**The only feature ILP requires of the underlying layer is the ability to send value.** It does not require any special transaction types, functionality, or programmatic escrow. Faster, cheaper transactions improve the user experience, but even they are not strictly required.
**ILP对底层的唯一要求是能够发送值。**它不需要任何特殊的交易类型，功能或程序化托管。更快，更便宜的交易改善了用户体验，但即使它们也不是严格要求的。

ILP's minimal abstraction enables interoperability with all types of Layer 1 and 2 networks, including those that were not designed to be interoperable. To date, it has been used to connect the Bitcoin Lightning Network, bilateral Ethereum payment channels, and XRP payment channels — three very different Layer 2 systems. Work is underway to connect all other types of Layer 1 and 2 systems (and you should [get involved!][17]).
ILP的最小抽象实现了与所有类型的第1层和第2层网络的互操作性，包括那些不能设计为可互操作的网络。到目前为止，它已被用于连接比特币闪电网络，双边以太坊支付通道和XRP支付通道 - 三个截然不同的第2层系统。正在进行连接所有其他类型的第1层和第2层系统的工作（你应该[参与其中！][17]）。

For a full description of how the protocol works, see [Interledger: How to Interconnect All Blockchains and Value Networks][18]. To see all of the features that were removed from ILP to make the core protocol and abstraction as simple and interoperable as possible, read [Simplifying Interledger: The Graveyard of Possible Protocol Features][19].
有关协议如何工作的完整描述，请参阅[Interledger：如何互连所有区块链和价值网络][18]。要查看从ILP中删除的所有功能，以使核心协议和抽象尽可能简单和可互操作，请阅读[简化Interledger：可能的协议功能的墓地][19]。

_Layers 4 and 5 are not the focus of this post but you can read [__STREAMing Money and Data Over ILP_][20]_ to learn about STREAM, the recommended Layer 4 transport protocol inspired by [__QUIC_][21]_. Keep an eye out for future posts on Layer 5 and application-specific protocols built on ILP and STREAM._
_Layers 4和5不是这篇文章的重点，但你可以阅读[__STREAMing Money and Data Over ILP_][20]_来了解STREAM，这是一个受[__QUIC_][21]_启发的推荐的第4层传输协议。留意第5层的未来帖子以及基于ILP和STREAM构建的特定于应用程序的协议。

### Conclusion: Separating Scaling and Interoperability
### 结论：分离缩放和互操作性

Scaling and interoperability are complementary, but they are fundamentally different types of problems that are best solved by separate protocol layers. Scalability solutions like Lightning and Plasma work best when they leverage the full range of features provided by their underlying ledgers. In contrast, interoperability protocols like Interledger require minimal abstractions that enable them to work across vastly different types of underlying networks.
扩展和互操作性是互补的，但它们是基本上不同类型的问题，最好通过单独的协议层解决。 Lightning和Plasma等可扩展性解决方案在利用其底层分类账提供的全部功能时效果最佳。相比之下，像Interledger这样的互操作性协议需要最少的抽象，使它们能够跨越不同类型的底层网络。

A subtle benefit of separating the link layer and interoperability layer is highlighted by the fact that the internet still works today. The Internet Protocol was designed for computers _the size of rooms_ and yet it is still applicable to cell phones and Internet of Things devices. By reducing the features IP required from the underlying networks, it also allowed for significant later improvements in the underlying technologies. This would have been impossible if IP had been built on specific features or APIs of networks at the time it was developed.
分离链路层和互操作性层的一个微妙好处是因为互联网今天仍然有用。互联网协议是为计算机设计的 - 房间大小_但它仍然适用于手机和物联网设备。通过降低底层网络所需的IP功能，它还允许在底层技术方面进行重大改进。如果IP是在开发时基于网络的特定功能或API构建的，那么这是不可能的。

We are nowhere near the end of the development of Layer 1 and Layer 2 blockchain or ledger systems. By abstracting away the differences between these with Layer 3, we can build better, more technology-agnostic user experiences while allowing for future developments that will make the Internet of Value faster, cheaper, and more efficient.
我们还远未结束第1层和第2层区块链或分类帐系统的开发。通过抽象这些与第3层之间的差异，我们可以构建更好的，更加技术无关的用户体验，同时允许未来的发展，使互联网价值更快，更便宜，更高效。

![][22]

[1]: https://lightning.network
[2]: https://plasma.io
[3]: https://www.coindesk.com/layer-2-blockchain-tech-even-bigger-deal-think/
[4]: https://tools.ietf.org/html/rfc1925
[5]: https://cdn-images-1.medium.com/max/1600/1*-jsi9gHospcC2Cd5nR9lJw.png
[6]: https://cdn-images-1.medium.com/max/1600/1*n7X3cGN2J2T2doadWTnfXg.png
[7]: https://en.bitcoin.it/wiki/Payment_channels
[8]: https://medium.com/l4-media/generalized-state-channels-on-ethereum-de0357f5fb44
[9]: http://lightning.network/
[10]: https://raiden.network/
[11]: https://www.blockstream.com/sidechains.pdf
[12]: https://www.plasma.io/
[13]: https://github.com/lightningnetwork/lightning-rfc/blob/master/03-transactions.md
[14]: https://raiden-network.readthedocs.io/en/stable/spec.html
[15]: https://segwit.org/is-segregated-witness-necessary-to-implement-the-lightning-network-6c4545a9f9f1
[16]: https://www.blug.linux.no/rfc1149/writeup/
[17]: https://interledger.org/community.html
[18]: https://medium.com/xpring/interledger-how-to-interconnect-all-blockchains-and-value-networks-74f432e64543
[19]: https://medium.com/interledger-blog/simplifying-interledger-the-graveyard-of-possible-protocol-features-b35bf67439be
[20]: https://medium.com/interledger-blog/streaming-money-and-data-over-ilp-fabd76fc991e
[21]: https://en.wikipedia.org/wiki/QUIC
[22]: https://cdn-images-1.medium.com/max/1600/1*7hlPpmJCRNhI_IlF1Th30g.png

