
https://medium.com/zkcapital/to-blockchain-or-to-not-blockchain-40e6a3a60f46
https://medium.com/zkcapital/to-blockchain-or-to-not-blockchain-40e6a3a60f46

# To Blockchain or To Not Blockchain
# 到区块链或非区块链

The hype surrounding Blockchains has exaggerated the realistic capabilities and applications of this new technology. This frenzy made it hard on businesses, developers, and investors to understand the practical limitations and to identify the right applications that are appropriate for Blockchain or distributed ledger technology.
区块链的炒作夸大了这项新技术的现实能力和应用。这种狂热使企业，开发人员和投资者难以理解实际限制并找出适合区块链或分布式账本技术的正确应用。

[Karl Wüst][1] and [Arthur Gervais][2] from [ETH Zurich][3] have recently published a peer-reviewed paper¹ that presents a structured methodology that can help determine the suitable technical solution to solve a particular application problem. In this blog post, we will go through this methodology and explain some examples applied in the paper.
来自[苏黎世联邦理工学院][3]的[KarlWüst][1]和[Arthur Gervais][2]最近发表了一份同行评审论文¹，提出了一种结构化方法，可以帮助确定解决特定应用问题的合适技术解决方案。在这篇博文中，我们将介绍这种方法并解释本文中应用的一些示例。

### Technology Comparison
### 技术比较

![][5]

Comparison between the main different types of state persistence¹.
主要不同类型的状态持久性的比较¹。

Blockchains are append-only ledgers that basically persist (save) state. State can be transaction information, or program data, or hashed documents, etc. Basically, any information that needs to be persisted. Databases have been there for this task for decades. Moreover, Blockchains present a new class of technology used for state persistence — with additional features including digital signatures and tamper resistance. Let us revise the three main technologies:
区块链是仅附加分类账，基本上持久（保存）状态。状态可以是交易信息，程序数据或散列文档等。基本上，任何需要持久化的信息。数十年来，数据库已经完成了这项任务。此外，Blockchains提供了一种用于状态持久性的新技术 - 具有数字签名和防篡改等附加功能。让我们修改三个主要技术：

#### Databases
####数据库

First of all, **databases** (single, parallel, or distributed) have been used for decades to persist state and query data. Decades worth of research have been invested to optimize the different layers of query processing and state persistence.
首先，**数据库**（单个，并行或分布式）已经使用了数十年，以保持状态和查询数据。已经投入了数十年的研究来优化查询处理和状态持久性的不同层。
* Naturally, they have the highest performance in terms of transaction throughput and query latency.
*当然，它们在交易吞吐量和查询延迟方面具有最高性能。
* However, all along, they have been designed to be centrally managed by a single authority. Hence, no consensus mechanism is required across different parties.
*但是，一直以来，它们都被设计为由单一机构集中管理。因此，不同方之间不需要达成共识机制。

#### **Permissionless Blockchains**
####**无可比区块链**

Permissionless Blockchains are public ledgers (state) that are not managed by a centralized authority. That is, the ledger is distributed across a dynamic network of peers that can include illegitimate entities too.
无权区块链是不由集中管理机构管理的公共分类账（州）。也就是说，分类帐分布在可以包括非法实体的动态对等网络中。

* The brilliance of Satoshi, was to present a design that maintains **consensus** on the distributed state in a dynamic and trustless network. This means that permissionless Blockchains can tolerate a (fraction of the) network with byzantine or untrusted behaviour.
*Satoshi的光彩，是在动态和无信任的网络中呈现一种在分布式状态上保持**共识的设计。这意味着无权限的区块链可以容忍具有拜占庭或不可信行为的（部分）网络。
* **As everything comes with a price**, the tradeoff here is **performance cost (throughput and latency)**. In bitcoin, the drastic performance hit is because of the POW protocol itself which by design is slow. In comparison to normal databases, in any permissionless Blockchain, **a performance hit is inevitable.** Because no matter what, to maintain the consistency of the distributed state, there has to be communication between the different peers in the (geographically distributed) network.
***因为一切都带有价格**，这里的权衡是**性能成本（吞吐量和延迟）**。在比特币中，性能的急剧下降是因为POW协议本身在设计上很慢。与普通数据库相比，在任何无权限的区块链中，**性能损失是不可避免的。**因为无论如何，为了保持分布式状态的一致性，必须在（地理上分布的）不同对等体之间进行通信。网络。

#### **Permissioned Blockchains**
####**许可的区块链**

Permissioned Blockchains represent a hybrid design choice. In particular, they are not centralized to a single entity, yet they are authorized to a small set of preselected trusted peers that can write state.
Permissioned Blockchains代表混合设计选择。特别是，它们不是集中到单个实体，而是被授权给可以写状态的一小组预先选择的可信对等体。

* Since the database network is not scaled to a large number of public nodes, as in the case for permissionless Blockchains, its performance in terms of throughput and latency is much better.
*由于数据库网络没有扩展到大量公共节点，如无权区块链的情况，其在吞吐量和延迟方面的性能要好得多。
* Nonetheless, its performance cannot compete with a centralized database.
*尽管如此，其性能无法与集中式数据库竞争。

After looking at these different systems, it is easy to realize that there is no one-size-fits-all solution. Everything is a trade-off. Different applications have different requirements and hence different appropriate solutions.
在查看这些不同的系统后，很容易意识到没有一个通用的解决方案。一切都是权衡。不同的应用有不同的要求，因此有不同的适当解

### "Do you need a Blockchain?" Flowchart
###“你需要区块链吗？”流程图

![][8]

Flowchart for choosing the right technology¹. TTP represents Trusted Third Party and a writer is an instance that writes state to a database or Blockchain.
选择正确技术的流程图¹。 TTP表示可信第三方，编写器是将状态写入数据库或区块链的实例。

This section describes a generic high-level flowchart presented in the paper to find the appropriate technology for your application. Note that a writer is an entity that writes state into the database or blockchain.
本节介绍了本文中提供的通用高级流程图，以便为您的应用程序找到合适的技术。请注意，编写器是将状态写入数据库或区块链的实体。

1. If your application does not require state to be persisted, then obviously there is **no need for a blockchain or any database.**
1.如果您的应用程序不要求保持状态，那么显然不需要区块链或任何数据库。**
2. Similarly, if there is **one writer **(of state), then **a blockchain does not provide any additional guarantees** than a regular database. On the contrary, a database would be more suitable as it is more efficient in terms of performance.
2.同样，如果有**一个作家**（州），那么**区块链不提供任何额外保证**而不是常规数据库。相反，数据库更合适，因为它在性能方面更有效。
3. Otherwise, if there is more than one state-writer we take another route. The question then becomes, **is it sufficient to have a online TTP (Trusted Third Party), or in other words, does it need to be tamper-proof**. If the application cannot rely on a single trusted entity we can further move forward to see if we still need a blockchain. **Otherwise, a blockchain is not required,** it would be more efficient -in terms of performance- to rely on a centralized entity.
3.否则，如果有多个国家作家，我们采取另一条路线。那么问题就变成了，**是否足以拥有在线TTP（可信第三方），或者换句话说，它是否需要防篡改**。如果应用程序不能依赖单个可信实体，我们可以进一步前进，看看我们是否还需要区块链。**否则，不需要区块链，**在性能方面，依靠集中实体会更有效率。
4. The next question is **"is the identity of all state-writers known?"**. If they are not known as the case in a dynamic trustless network, e.g., the Internet, then a **permissionless blockchain** is the right way to go.
4.接下来的问题是**“所有国家作家的身份是否已知？”**。如果在动态无信任网络（例如互联网）中不知道它们的情况，那么**许可区块链**是正确的方法。
5. Otherwise, if the identity is known, then the next question is **"do the writers trust each other?"**, if it is a yes, **then again a blockchain is not needed anymore**, a database with shared write access is sufficient. Otherwise, if the writers do not trust each other, then the right technology to be used is a **permissioned blockchain**.
5.否则，如果身份已知，那么下一个问题是**“作者是否相互信任？”**，如果是，则**再次不再需要区块链**，数据库使用共享写访问就足够了。否则，如果作者不相互信任，那么使用的正确技术是**许可的区块链**。
6. Finally, if it is a permissioned blockchain, depending on whether public verifiability is required, anyone is allowed to read the state (public permissioned blockchain) or the set of readers may also be restricted (private permissioned blockchain).
6.最后，如果它是一个经过许可的区块链，根据是否需要公开可验证性，任何人都可以阅读该州（公共许可区块链）或者该组读者也可能受到限制（私人许可区块链）。

### Examples of Applications
###应用程序示例

Lets walk through a bunch of examples here to understand what applications do make sense on blockchains and which don't and why.
让我们来看看这里的一些例子，以了解哪些应用程序对区块链有意义，哪些没有，为什么。

#### Applications that DO NOT need a Blockchain
####不需要区块链的应用程序

![][10]

Supply Chain Management Systems¹
供应链管理系统¹

* **Supply Chain Management: **This is indeed one of the applications that arise repeatedly in the space. Lets follow the flowchart to identify which technology suits it best.
***供应链管理：**这确实是该领域反复出现的应用之一。让我们按照流程图确定哪种技术最适合。
1. An SCM certainly requires to store data.
1. SCM当然需要存储数据。
2. Multiple writers are involved, i.e. the different participants of the SCM that own a certain share of the final product.
2.涉及多个作者，即SCM的不同参与者拥有最终产品的特定份额。
3. Continuing our methodology, a SCM could technically likely always use an online TTP. For example, [Skuchain][11] acknowledged to only require a single source of trust, which would however remove the decentralized component of the blockchain, and thus be equivalent to a trusted central server.
3.继续我们的方法，SCM在技术上可能总是使用在线TTP。例如，[Skuchain][11]承认只需要一个单一的信任来源，但是会删除区块链的去中心化组件，因此相当于一个受信任的中央服务器。
4. If that is not possible, at least all writers will be known, which leaves us to choose between a **permissioned or no blockchain.**
4.如果不可能，至少所有作者都会被知道，这使我们可以选择**许可或不允许区块链。**
5. SCMs** **have the inherent problem of the interface between the digital and the physical world. A human, or some machine under the control of a single writer, typically is required to register that a certain good has arrived in a warehouse, and if, for example, its quality is appropriate. If there is no trust in the operation of these employees, then the whole supply chain is technically compromised as any data can be supplied by a malicious writer. If, on the other hand, all writers are trusted, **a blockchain is not needed,** because a regular database with shared write access can be used instead.
5. SCM****具有数字和物理世界之间接口的固有问题。人或某个机器控制下的某台机器通常需要注册某个商品已到达仓库，例如，如果其质量合适。如果对这些员工的运营不信任，那么整个供应链在技术上会受到损害，因为恶意作者可以提供任何数据。另一方面，如果所有编写者都是可信的，**不需要区块链，**因为可以使用具有共享写访问权限的常规数据库。

Note that if through some technical means, the connection between the digital and physical world could be realized in a secure manner, then the previous reasoning might change.
请注意，如果通过某种技术手段，数字和物理世界之间的连接可以以安全的方式实现，那么之前的推理可能会改变。

* **Internet of Things: **Many have suggested possible use cases for blockchain technology in the Internet of Things (IoT) in combination with smart contracts with the aim to provide autonomous systems that pay for resources that they consume and get paid for resources that they provide. As the system is inherently decentralized with entities that do not trust each other, using a blockchain seems natural. However, as with supply chain management, **the interface between the physical and the digital world poses a potential problem.** If computers supply values that were read from sensors to the blockchain, the blockchain does not guarantee the correctness of these values. If only automation is desired, a blockchain may not be necessary if a trusted party can be used instead.
***物联网：**许多人已经建议物联网（IoT）中区块链技术的可能用例与智能合同相结合，旨在提供自主系统来支付他们消耗的资源并获得资源支付他们提供的。由于系统本质上是与不相互信任的实体去中心化的，因此使用区块链似乎很自然。但是，与供应链管理一样，**物理世界和数字世界之间的界面存在潜在问题。**如果计算机提供从传感器读取到区块链的值，则区块链不保证这些值的正确性。如果只需要自动化，如果可以使用可信方，则可能不需要区块链。

#### Applications Suitable on the Blockchain
####应用适用于区块链

* **Interbank and International payments**: For financial applications, blockchain technology seems well suited in general, since parties are generally risk averse and do not want to rely on strong trust assumptions. Following our
***银行间和国际支付**：对于金融应用，区块链技术似乎非常适合，因为各方通常都是风险规避，并且不想依赖强有力的信任假设。跟着我们
1. In Interbank payments we have multiple parties (the banks) that act as writers and who want to exchange value and transactions. So there is state to be persisted.
1.在银行间支付方面，我们有多方（银行）作为作家并希望交换价值和交易。所以有状态要坚持下去。
2. The banks are the writers, and hence there is more than one writer.
银行是作家，因此不止一位作家。
3. In the case of single currency systems, the central bank can operate as a TTP.
3.在单一货币系统的情况下，中央银行可以作为TTP运作。
4. Otherwise, there is another setting where the central bank does not want to act as a verifier for every transaction but only act as a certificate authority giving out licenses to banks to participate in the system. This means that all writers of the system are known and we can use** **a** permissioned blockchain**
4.否则，还有另一种设置，即中央银行不希望作为每项交易的验证者，而只是作为证书颁发机构向银行发放许可证以参与该系统。这意味着系统的所有编写者都是已知的，我们可以使用******许可的区块链**
* **Trading and Fair Exchange Protocols: **Similarly, the exchange of digital goods is likely to be feasible without a trusted dispute mediator and hence it is the perfectly suitable for blockchains, while the exchange of physical goods still requires a trusted third party in case of disputes.
***交易和公平交易协议：**同样，如果没有可靠的争议调解员，数字商品的交换可能是可行的，因此它非常适合区块链，而实物商品的交换仍然需要可信赖的第三方如有任何争议。
* **E-Voting:** Similarly, E-Voting has properties that blockchains can help with. For example, on one hand, privacy is a main requirement as votes should be anonymous to prevent coercion. On the other hand, e-voting should provide some sort of public verifiability. Due to the requirements, it seems reasonable that blockchain technology can help to achieve these desired properties.
***E-Voting：**同样，E-Voting具有区块链可以帮助的属性。例如，一方面，隐私是主要要求，因为投票应该是匿名的，以防止强制。另一方面，电子投票应提供某种公共可验证性。由于这些要求，区块链技术可以帮助实现这些所需的特性似乎是合理的。

### Conclusion
###结论

In contrast to conventional wisdom, Blockchains are not a solution for all technical problems. In fact, they are more appropriate for a class of applications that satisfy a set of requirements. **In particular, those that sacrifice performance in favour of decentralization and tamper-proof consistent state.** Nonetheless, **many of the "promised" applications are currently still not applicable for the Blockchain, e.g., supply chain management.** One should be really careful when being approached by enthusiastic developers and business owners who are strongly biased by the hype and who don't really question the underlying technicals and necessities of their solutions. **Until now, it seems that applications that deal with digital goods and services and that require trust are the most appropriate for blockchains.**
与传统观点相反，区块链不是解决所有技术问题的解决方案。实际上，它们更适合满足一系列要求的一类应用程序。**尤其是那些牺牲性能以支持去中心化和防篡改一致状态的人。**尽管如此，**许多“承诺”的申请目前仍然不适用于区块链，例如供应链管理。**当被热情的开发者和企业主接触时，应该非常小心，他们对炒作有强烈的偏见，并且没有真正质疑他们的解决方案的基础技术和必要性。**到目前为止，处理数字商品和服务以及需要信任的应用程序似乎最适合区块链。**

### References:
###参考文献：

1- [Do you need a blockchain?][12]
1- [你需要区块链吗？][12]

### If you like this post or if you have any further questions or suggestions, please reach out to me on [Twitter][13] or [LinkedIn][14].
###如果您喜欢这篇文章，或者如果您有任何其他问题或建议，请通过[Twitter][13]或[LinkedIn][14]联系我。

**_Disclaimer: Information in this article is for educational purposes only and cannot be taken as investment advice._**
**_免责声明：本文中的信息仅用于教育目的，不能作为投资建议._**

![][15]

[1]: http://www.syssec.ethz.ch/people/kwuest.html
[2]: http://arthurgervais.com
[3]: https://en.wikipedia.org/wiki/ETH_Zurich
[4]: https://cdn-images-1.medium.com/freeze/max/75/1*Pt3opBhD8m1fB3X3G3-JYw.png?q=20
[5]: https://cdn-images-1.medium.com/max/2000/1*Pt3opBhD8m1fB3X3G3-JYw.png
[6]: https://cdn-images-1.medium.com/freeze/max/75/1*6bK0WrMyKKD6znhEkWAucQ.png?q=20
[7]: https://medium.com/zkcapital/undefined
[8]: https://cdn-images-1.medium.com/max/2000/1*6bK0WrMyKKD6znhEkWAucQ.png
[9]: https://cdn-images-1.medium.com/freeze/max/75/1*3YV2pHqvVKy00e25-Rqq3g.png?q=20
[10]: https://cdn-images-1.medium.com/max/2000/1*3YV2pHqvVKy00e25-Rqq3g.png
[11]: http://www.skuchain.com
[12]: https://eprint.iacr.org/2017/375.pdf
[13]: https://twitter.com/Drmelseidy
[14]: https://www.linkedin.com/in/mohamed-elseidy/
[15]: https://cdn-images-1.medium.com/max/2000/1*U69UW0VzPkDKgvEeqYE1uQ.png


