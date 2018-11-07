https://medium.com/zkcapital/to-blockchain-or-to-not-blockchain-40e6a3a60f46

# To Blockchain or To Not Blockchain

The hype surrounding Blockchains has exaggerated the realistic capabilities and applications of this new technology. This frenzy made it hard on businesses, developers, and investors to understand the practical limitations and to identify the right applications that are appropriate for Blockchain or distributed ledger technology.

[Karl Wüst][1] and [Arthur Gervais][2] from [ETH Zurich][3] have recently published a peer-reviewed paper¹ that presents a structured methodology that can help determine the suitable technical solution to solve a particular application problem. In this blog post, we will go through this methodology and explain some examples applied in the paper.

### Technology Comparison

![][4]![][5]![][5]

Comparison between the main different types of state persistence¹.

Blockchains are append-only ledgers that basically persist (save) state. State can be transaction information, or program data, or hashed documents, etc. Basically, any information that needs to be persisted. Databases have been there for this task for decades. Moreover, Blockchains present a new class of technology used for state persistence — with additional features including digital signatures and tamper resistance. Let us revise the three main technologies:

#### Databases

First of all, **databases** (single, parallel, or distributed) have been used for decades to persist state and query data. Decades worth of research have been invested to optimize the different layers of query processing and state persistence.
* Naturally, they have the highest performance in terms of transaction throughput and query latency.
* However, all along, they have been designed to be centrally managed by a single authority. Hence, no consensus mechanism is required across different parties.

#### **Permissionless Blockchains**

Permissionless Blockchains are public ledgers (state) that are not managed by a centralized authority. That is, the ledger is distributed across a dynamic network of peers that can include illegitimate entities too.

* The brilliance of Satoshi, was to present a design that maintains **consensus** on the distributed state in a dynamic and trustless network. This means that permissionless Blockchains can tolerate a (fraction of the) network with byzantine or untrusted behaviour.
* **As everything comes with a price**, the tradeoff here is **performance cost (throughput and latency)**. In bitcoin, the drastic performance hit is because of the POW protocol itself which by design is slow. In comparison to normal databases, in any permissionless Blockchain, **a performance hit is inevitable.** Because no matter what, to maintain the consistency of the distributed state, there has to be communication between the different peers in the (geographically distributed) network.

#### **Permissioned Blockchains**

Permissioned Blockchains represent a hybrid design choice. In particular, they are not centralized to a single entity, yet they are authorized to a small set of preselected trusted peers that can write state.

* Since the database network is not scaled to a large number of public nodes, as in the case for permissionless Blockchains, its performance in terms of throughput and latency is much better.
* Nonetheless, its performance cannot compete with a centralized database.

After looking at these different systems, it is easy to realize that there is no one-size-fits-all solution. Everything is a trade-off. Different applications have different requirements and hence different appropriate solutions.

### "Do you need a Blockchain?" Flowchart

![][6]![][7]![][8]

Flowchart for choosing the right technology¹. TTP represents Trusted Third Party and a writer is an instance that writes state to a database or Blockchain.

This section describes a generic high-level flowchart presented in the paper to find the appropriate technology for your application. Note that a writer is an entity that writes state into the database or blockchain.

1. If your application does not require state to be persisted, then obviously there is **no need for a blockchain or any database.**
2. Similarly, if there is **one writer **(of state), then **a blockchain does not provide any additional guarantees** than a regular database. On the contrary, a database would be more suitable as it is more efficient in terms of performance.
3. Otherwise, if there is more than one state-writer we take another route. The question then becomes, **is it sufficient to have a online TTP (Trusted Third Party), or in other words, does it need to be tamper-proof**. If the application cannot rely on a single trusted entity we can further move forward to see if we still need a blockchain. **Otherwise, a blockchain is not required,** it would be more efficient -in terms of performance- to rely on a centralized entity.
4. The next question is **"is the identity of all state-writers known?"**. If they are not known as the case in a dynamic trustless network, e.g., the Internet, then a **permissionless blockchain** is the right way to go.
5. Otherwise, if the identity is known, then the next question is **"do the writers trust each other?"**, if it is a yes, **then again a blockchain is not needed anymore**, a database with shared write access is sufficient. Otherwise, if the writers do not trust each other, then the right technology to be used is a **permissioned blockchain**.
6. Finally, if it is a permissioned blockchain, depending on whether public verifiability is required, anyone is allowed to read the state (public permissioned blockchain) or the set of readers may also be restricted (private permissioned blockchain).

### Examples of Applications

Lets walk through a bunch of examples here to understand what applications do make sense on blockchains and which don't and why.

#### Applications that DO NOT need a Blockchain

![][9]![][7]![][10]

Supply Chain Management Systems¹

* **Supply Chain Management: **This is indeed one of the applications that arise repeatedly in the space. Lets follow the flowchart to identify which technology suits it best.
1. An SCM certainly requires to store data.
2. Multiple writers are involved, i.e. the different participants of the SCM that own a certain share of the final product.
3. Continuing our methodology, a SCM could technically likely always use an online TTP. For example, [Skuchain][11] acknowledged to only require a single source of trust, which would however remove the decentralized component of the blockchain, and thus be equivalent to a trusted central server.
4. If that is not possible, at least all writers will be known, which leaves us to choose between a **permissioned or no blockchain.**
5. SCMs** **have the inherent problem of the interface between the digital and the physical world. A human, or some machine under the control of a single writer, typically is required to register that a certain good has arrived in a warehouse, and if, for example, its quality is appropriate. If there is no trust in the operation of these employees, then the whole supply chain is technically compromised as any data can be supplied by a malicious writer. If, on the other hand, all writers are trusted, **a blockchain is not needed,** because a regular database with shared write access can be used instead.

Note that if through some technical means, the connection between the digital and physical world could be realized in a secure manner, then the previous reasoning might change.

* **Internet of Things: **Many have suggested possible use cases for blockchain technology in the Internet of Things (IoT) in combination with smart contracts with the aim to provide autonomous systems that pay for resources that they consume and get paid for resources that they provide. As the system is inherently decentralized with entities that do not trust each other, using a blockchain seems natural. However, as with supply chain management, **the interface between the physical and the digital world poses a potential problem.** If computers supply values that were read from sensors to the blockchain, the blockchain does not guarantee the correctness of these values. If only automation is desired, a blockchain may not be necessary if a trusted party can be used instead.

#### Applications Suitable on the Blockchain

* **Interbank and International payments**: For financial applications, blockchain technology seems well suited in general, since parties are generally risk averse and do not want to rely on strong trust assumptions. Following our
1. In Interbank payments we have multiple parties (the banks) that act as writers and who want to exchange value and transactions. So there is state to be persisted.
2. The banks are the writers, and hence there is more than one writer.
3. In the case of single currency systems, the central bank can operate as a TTP.
4. Otherwise, there is another setting where the central bank does not want to act as a verifier for every transaction but only act as a certificate authority giving out licenses to banks to participate in the system. This means that all writers of the system are known and we can use** **a** permissioned blockchain**
* **Trading and Fair Exchange Protocols: **Similarly, the exchange of digital goods is likely to be feasible without a trusted dispute mediator and hence it is the perfectly suitable for blockchains, while the exchange of physical goods still requires a trusted third party in case of disputes.
* **E-Voting:** Similarly, E-Voting has properties that blockchains can help with. For example, on one hand, privacy is a main requirement as votes should be anonymous to prevent coercion. On the other hand, e-voting should provide some sort of public verifiability. Due to the requirements, it seems reasonable that blockchain technology can help to achieve these desired properties.

### Conclusion

In contrast to conventional wisdom, Blockchains are not a solution for all technical problems. In fact, they are more appropriate for a class of applications that satisfy a set of requirements. **In particular, those that sacrifice performance in favour of decentralization and tamper-proof consistent state.** Nonetheless, **many of the "promised" applications are currently still not applicable for the Blockchain, e.g., supply chain management.** One should be really careful when being approached by enthusiastic developers and business owners who are strongly biased by the hype and who don't really question the underlying technicals and necessities of their solutions. **Until now, it seems that applications that deal with digital goods and services and that require trust are the most appropriate for blockchains.**

### References:

1- [Do you need a blockchain?][12]

### If you like this post or if you have any further questions or suggestions, please reach out to me on [Twitter][13] or [LinkedIn][14].

**_Disclaimer: Information in this article is for educational purposes only and cannot be taken as investment advice._**

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

  