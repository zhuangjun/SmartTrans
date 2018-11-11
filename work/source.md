[Source](https://medium.com/xpring/layer-3-is-for-interoperability-ca387fa5f7e2 "Permalink to Layer 3 Is for Interoperability – Xpring – Medium")

# Layer 3 Is for Interoperability – Xpring – Medium

## The Protocol Stack for the Internet of Value

Layer 2 technologies such as [Lightning][1] and [Plasma][2] are said to ["promise big strides in scalability, interoperability and functionality"][3] for blockchains. However, most Layer 2 projects focus primarily on scalability and only occasionally mention interoperability. Why? This isn't just a matter of timing or stage of development. This is actually how it should be, because **Layer 2 is for scaling. Layer 3 is for interoperability.**

Scaling and interoperability are complementary but separate concerns that are best addressed through different protocol layers. To make this case, I'll give a bit of background on the purpose of layered protocol architectures and the roles of Layers 1, 2, and 3. I'll also explain how separating scalability and interoperability improves the solutions for both and paves the way for an Internet of Value whose design is surprisingly analogous to the internet itself.

### The Purpose of Layered Protocols

> It is always possible to agglutinate multiple separate problems into a single complex interdependent solution. In most cases this is a bad idea. _  
_\- [RFC 1925: The Twelve Networking Truths][4]

The internet is the best example of a layered protocol architecture, and this design was a key factor in the internet's growth and usefulness. Different pieces of functionality are split into separate protocols that build on one another, rather than being bundled together in one monolithic system.

For example, the Internet Protocol (IP) is built upon different underlying networking technologies or "link layer" protocols, such as Ethernet and WiFi. Because IP was designed as a separate layer, it is not tied to any specific networking technology and is able to work the same way over many different types of wired or wireless connections.

![][5]

The "hourglass" architecture of the Internet: IP abstracts away the differences between underlying networks and applications built on top of it

Layered protocol architectures provide a number of important benefits:

* **Interoperability - **IP works across many different networking technologies by abstracting away their differences. As long as a link can send data, IP can communicate over it. This means we can connect seamlessly no matter what type of underlying network we are using.
* **Upgradeability - **Abstractions enable different layers to evolve separately. While the internet was built in the 1970s, the fact that IP abstracts away the different networking technologies has enabled us to upgrade from dial-up to fiber optic and 4G links. The higher level protocols did not need to change, but our connections keep getting faster as newer networking technologies are developed.
* **Common Infrastructure for Multiple Use Cases - **IP is also independent of any particular use case, which enables the same infrastructure to be used for applications ranging from the Web to email and Voice over IP (VoIP). If the internet had been built specifically for file transfers, we might have needed whole separate networks for each different use case. Instead, we have a single internet that can be used for many types of communication.

Layering is an essential tool for designing systems like the internet or Internet of Value, but deciding which features fit into which layers is the hardest part. Too many layers makes the system overly complex, but too much bundling hampers interoperability and upgradeability.

### A Protocol Stack for the Internet of Value

The Interledger protocol stack has direct parallels with the internet protocol suite, largely because we found that splitting functionality into analogous layers helped solve issues at each level. Here, I'll briefly go through each of the layers to explain their roles and show the benefits of focusing Layer 3 on interoperability.

![][6]

The Interledger Protocol (ILP) connects and abstracts away the differences between Layer 2 technologies

### Layer 1: Ledgers

Blockchains and other types of ledgers are like the physical cables that underpin the internet. Digital communication is ultimately made possible by wired and wireless links that connect individual devices and carry data between them. Similarly, ledgers are the foundation of the Internet of Value, because they enable two people that accept the same asset or hold accounts in the same system to transact.

Like physical cables, ledgers and blockchains need additional protocols built on top of them to facilitate the exchange of data or money. In the case of blockchains, the main issues are scaling transaction throughput and lowering latencies while maintaining decentralization.

Ledgers are destined to be performance bottlenecks because they are logically centralized. Whether a ledger is maintained in a centralized or decentralized fashion, it needs a single consistent, shared state of accounts and balances to ensure that money cannot be "double-spent". Updating widely shared state is always going to be relatively expensive and slow. The bottleneck will either be the speed of consensus in a distributed ledger, or the performance of a single machine in the case of a centralized ledger. Improving ledger scalability is very useful, but moving common and repeated transactions off of the main ledger using Layer 2 protocols will increase throughput and lower latencies even more.

### Layer 2: Local Area Networks

Layer 2 solutions for scaling blockchains are analogous to the link layer protocols of the internet stack, such as Ethernet and WiFi. This layer creates bilateral links or Local Area Networks (LANs)* that allow directly connected parties or devices to communicate efficiently over the underlying network.

Layer 2 technologies for blockchains are designed to enable fast, cheap, high-throughput transactions over the underlying ledger, generally by using a form of programmatic escrow. This category includes bilateral technologies like [payment channels][7] and [generalized state channels][8], as well as multilateral solutions including payment channel networks like [Lightning][9] and [Raiden][10], [sidechains][11], and [Plasma][12]. Each of these enable faster, cheaper transactions by allowing pairs or smaller groups of account holders to transact without needing to interact with the main ledger each time.

#### Programmatic Escrow

The core mechanism of Layer 2 solutions is a form of programmatic escrow. Assets are first put into a holding account, script, or smart contract on the main ledger. Then, two or more parties can carry out numerous fast transactions by updating their local state to change the allocation of the escrowed assets. If or when the parties want to close out their off-ledger relationship, they present the final state to the main ledger, which checks its validity and distributes the escrowed assets accordingly.

Importantly, the features offered by the underlying ledger directly determine the types of functionality the Layer 2 system can include, because ledgers vary in the types of programmatic escrow they support.

> Layer 2 solutions are necessarily tied to certain ledgers, because they leverage specific capabilities in the underlying Layer 1 system.

This is why [Lightning is defined in terms of Bitcoin scripts][13], [Raiden uses specific Ethereum smart contracts][14], and Plasma implementations would similarly use well-specified smart contracts. Lightning may work with specific (SegWit-supporting) forks of Bitcoin like Litecoin, and Raiden and Plasma may work with other blockchains that use the Ethereum Virtual Machine (EVM). However, Each Layer 2 technology would be worse if they tried to support ledgers with vastly different sets of features (for example, [Lightning without SegWit][15] or Plasma implemented using only Bitcoin scripts). This is completely fine though! Layer 2 scaling solutions can and should take advantage of every capability provided by the underlying ledger.

The close connection between Layers 1 and 2 is precisely why we need a separate layer for interoperability. True interoperability is all about abstraction and requires minimizing the set of features the protocol uses. The fewer features the interoperability layer expects from the layer below, the more heterogeneous networks it can connect. Since Layer 2 solutions can and should leverage specific Layer 1 capabilities, we need a separate layer for interoperability that uses as few ledger-specific functions as possible.

### Layer 3: Interoperability

The purpose of Layer 3 is to abstract away the differences between different Layer 1 and 2 technologies to connect vastly different types of networks. This is the role of the Internet Protocol (IP) on the internet and the Interledger Protocol (ILP) in the Internet of Value.

The core protocol of the internet stack, IP, routes packets of data across networks while abstracting away the differences between the underlying telecommunication technologies. The internet was successful precisely because it used such a clean abstraction and was able to connect _everything_, from phone lines (via dial-up), to cellular and satellite networks, to dedicated fiber optic cables — and even [carrier pigeons][16].

The only feature IP requires of underlying networks is the ability to send data. It does not depend on any additional features or even guarantees of speed or reliability. Because of its simple abstraction, IP was able to create a universal network of networks that today connects over half of the human population.

#### Minimal Abstraction Over Layer 2 Networks

In the Internet of Value, ILP packetizes value like IP packetizes data. It routes packets of money across networks while abstracting away the differences between assets and ledger or Layer 2 technologies. Like IP, the core of ILP is the network-agnostic packet and address format.

**The only feature ILP requires of the underlying layer is the ability to send value.** It does not require any special transaction types, functionality, or programmatic escrow. Faster, cheaper transactions improve the user experience, but even they are not strictly required.

ILP's minimal abstraction enables interoperability with all types of Layer 1 and 2 networks, including those that were not designed to be interoperable. To date, it has been used to connect the Bitcoin Lightning Network, bilateral Ethereum payment channels, and XRP payment channels — three very different Layer 2 systems. Work is underway to connect all other types of Layer 1 and 2 systems (and you should [get involved!][17]).

For a full description of how the protocol works, see [Interledger: How to Interconnect All Blockchains and Value Networks][18]. To see all of the features that were removed from ILP to make the core protocol and abstraction as simple and interoperable as possible, read [Simplifying Interledger: The Graveyard of Possible Protocol Features][19].

_Layers 4 and 5 are not the focus of this post but you can read [__STREAMing Money and Data Over ILP_][20]_ to learn about STREAM, the recommended Layer 4 transport protocol inspired by [__QUIC_][21]_. Keep an eye out for future posts on Layer 5 and application-specific protocols built on ILP and STREAM._

### Conclusion: Separating Scaling and Interoperability

Scaling and interoperability are complementary, but they are fundamentally different types of problems that are best solved by separate protocol layers. Scalability solutions like Lightning and Plasma work best when they leverage the full range of features provided by their underlying ledgers. In contrast, interoperability protocols like Interledger require minimal abstractions that enable them to work across vastly different types of underlying networks.

A subtle benefit of separating the link layer and interoperability layer is highlighted by the fact that the internet still works today. The Internet Protocol was designed for computers _the size of rooms_ and yet it is still applicable to cell phones and Internet of Things devices. By reducing the features IP required from the underlying networks, it also allowed for significant later improvements in the underlying technologies. This would have been impossible if IP had been built on specific features or APIs of networks at the time it was developed.

We are nowhere near the end of the development of Layer 1 and Layer 2 blockchain or ledger systems. By abstracting away the differences between these with Layer 3, we can build better, more technology-agnostic user experiences while allowing for future developments that will make the Internet of Value faster, cheaper, and more efficient.

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

