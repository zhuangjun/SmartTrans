

# **Blockchains vs. Hashgraphs**
# **Blockchains

![][2]

Blockchain and Hashgraph data structures.
Blockchain和Hashgraph数据结构。

**Blockchain Technology**
**区块链技术**

Blockchains are one form of distributed ledger technology. Not all distributed ledgers employ a chain of blocks to provide a secure and valid distributed consensus.
区块链是分布式账本技术的一种形式。并非所有分布式分类账都采用一系列区块来提供安全有效的分布式共识。

A blockchain is distributed across and managed by peer-to-peer networks. Since it is a distributed ledger, it can exist without a centralized authority or server managing it, and its data quality can be maintained by database replication and computational trust.
区块链分布在对等网络上并由对等网络管理。由于它是一个分布式分类帐，因此可以在没有集中授权或服务器管理的情况下存在，并且可以通过数据库复制和计算信任来维护其数据质量。

However, the structure of the blockchain makes it distinct from other kinds of distributed ledgers. Data on a blockchain is grouped together and organized in blocks. The blocks are then linked to one another and secured using cryptography.
但是，区块链的结构使其与其他种类的分布式分类账不同。区块链上的数据被组合在一起并以块的形式组织。然后将这些块相互链接并使用密码术进行保护。

A blockchain is essentially a continuously growing list of records. Its append-only structure only allows addition of data to the database: altering or deleting previously entered data on earlier blocks is impossible. Blockchain technology is therefore well-suited for recording events, managing records, processing transactions, tracing assets, and voting.
区块链本质上是一个不断增长的记录列表。它的仅附加结构只允许向数据库添加数据：更改或删除先前在早期块上输入的数据是不可能的。因此，区块链技术非常适合记录事件，管理记录，处理交易，跟踪资产和投票。

Cryptocurrencies, such as Bitcoin, pioneered blockchain technology. Bitcoin's big rally in late 2017, and the ensuing media frenzy, brought cryptocurrencies into the mainstream public imagination. Governments, businesses, economists and enthusiasts are now considering ways to apply blockchain technology to other uses.
像比特币这样的数字货币是区块链技术的先驱。比特币在2017年底的大涨，以及随之而来的媒体狂潮，将数字货币带入了主流的公众想象中。政府，企业，经济学家和爱好者正在考虑将区块链技术应用于其他用途的方法。

![][4]

Blockchain Structure.
区块链结构。

**Hashgraph Technology**
**Hashgraph技术**

Hashgraphs are also a form of distributed ledger technology.
哈希图也是分布式账本技术的一种形式。

A hashgraph is a patented algorithm that promises the benefits of the blockchain (decentralization, distribution, and security through the use of hashing) without the drawback of low transaction speed. It was created by Leemon Baird and is the intellectual property of the Swirlds Corporation, which Baird founded.
哈希图是一种专利算法，它承诺区块链的好处（通过使用哈希来去中心化，分发和安全），而没有低交易速度的缺点。它由Leemon Baird创建，是Baird创立的Swirlds公司的知识产权。

While Bitcoin allows for approximately 5 transactions per second and Ethereum allows for approximately 15 transactions per second, a hashgraph can process thousands of transactions per second.
虽然比特币每秒允许大约5笔交易，而以太网每秒允许大约15笔交易，但哈希图每秒可处理数千笔交易。

The hashgraph algorithm operates through two techniques: Gossip about Gossip, and Virtual Voting.
哈希图算法通过两种技术运作：关于八卦的八卦和虚拟投票。

To understand Gossip about Gossip, imagine five members: A, B, C, D, and E. Each member starts with a transaction, which results in an 'event'. Then, each member calls another randomly selected member and the two share their transaction history. For example, D calls B and shares D's transaction history with B. This type of call happens repeatedly, with each member randomly calling another member and sharing its transaction history. So, B now randomly selects another member (let's say C), and shares its transaction history, which includes D's transaction history. Simultaneously, E may have called A, and so on. Each call results in an event, and each event holds the hashes of all previous blocks.So, once a member learns about a new piece of information, this information quickly spreads until everyone knows of it.
要了解关于八卦的八卦，想象五个成员：A，B，C，D和E.每个成员都以一个交易开始，这会产生一个“事件”。然后，每个成员调用另一个随机选择的成员，并且两者共享他们的交易历史记例如，D呼叫B并与B共享D的交易历史。这种类型的呼叫重复发生，每个成员随机呼叫另一个成员并共享其交易历史。因此，B现在随机选择另一个成员（比方说C），并分享其交易历史，其中包括D的交易历史。同时，E可能已经调用A，依此类推。每次调用都会产生一个事件，每个事件都会保留所有先前块的哈希值。因此，一旦成员了解到新信息，这些信息就会迅速传播，直到每个人都知道它为止。

Virtual voting aims to reach a consensus on the order of transactions. Here's how it works: first, the events are divided into rounds. The hashgraph algorithm has a definite mathematical answer for when a round is created. Here, for the sake of simplicity, imagine that a round has approximately ten events. Now, each member votes to determine which event should qualify as a 'famous witness'. To understand how this happens, imagine that each of the members with an event in the next round looks backwards to each event in the current round to see if it can trace its lineage back to the current round's event. If it can trace its lineage back to an event, it votes yes for that event, and if not, it votes no. The current round event with the most votes is crowned the famous witness for the current round, and provides the definitive order of transactions.
虚拟投票旨在就交易顺序达成共识。以下是它的工作原理：首先，事件分为几轮。哈希图算法在创建回合时具有明确的数学答案。在这里，为了简单起见，想象一轮有大约十个事件。现在，每个成员投票决定哪个事件应该有资格成为“着名证人”。要了解这是如何发生的，想象一下，在下一轮中有事件的每个成员都会向后查看当前回合中的每个事件，看看它是否可以将其血统追溯到当前回合的事件。如果它可以将其血统追溯到一个事件，那么它对该事件投赞成票，如果没有，则投票否决定。本轮巡回赛获得最多票数，是本轮的着名证人，并提供了明确的交易顺序。

![][6]

Hashgraph Structure.
哈希图结构。

**Private and Public**
**私人和公共**

Both hashgraphs and blockchains can exist in public form or in permissioned private forms for enterprise use. Anyone can participate in the public open versions of these technologies. While several public blockchains such as Ethereum exist, the only public version of a hashgraph is called Hedera Hashgraph.
哈希图和区块链都可以以公共形式或以允许的私有形式存在以供企业使用。任何人都可以参与这些技术的公开开放版本。虽然存在诸如以太坊之类的几个公共区块链，但哈希图的唯一公共版本称为Hedera Hashgraph。

**Open Source vs. Patented**
**开源与专利**

Blockchain technology is mostly open source and has a huge community that builds and contributes to various blockchain efforts, from cryptocurrencies to utility tokens. Additionally, blockchain enthusiasts have generally doubted the trustworthiness of traditional institutions, and played up the decentralized nature of blockchains as their defining quality.
区块链技术大多是开源的，并且拥有庞大的社区，可以构建并促进各种区块链工作，从数字货币到公用事业代币。此外，区块链爱好者普遍怀疑传统机构的可信度，并将区块链的去中心化性质作为其定义的质量。

On the other hand, hashgraphs are based on a patented algorithm that is owned by Swirlds, and therefore any new hashgraph initiative will rely on Swirlds.
另一方面，哈希图基于Swirlds拥有的专利算法，因此任何新的哈希图计划都将依赖于Swirlds。

**Conclusion**
**结论**

Blockchains and hashgraphs are two implementations of distributed ledger technology. Blockchains employ a single chain of blocks to provide a validated, secure, and distributed consensus. This technology underlies Bitcoin and cryptocurrencies, but also a range of use cases including payments, supply chain, and identity management. Meanwhile, the hashgraph is a patented algorithm that uses the Gossip about Gossip and Virtual Voting techniques across several, parallel lines to achieve fast and secure ledgers. Blockchains are more mainstream and more likely to be public. The Hadera Hasgraph is the only public implementation of the hashgraph algorithm.
区块链和哈希图是分布式账本技术的两种实现。区块链使用单个链块来提供经过验证的，安全的和分布式的共识。该技术是比特币和数字货币的基础，也是一系列用例，包括支付，供应链和身份管理。同时，哈希图是一种专利算法，它使用Gossip关于Gossip和虚拟投票技术跨越几条平行线来实现快速和安全的分类账。区块链更主流，更有可能公开。 Hadera Hasgraph是哈希图算法的唯一公开实现。

Soon, we will begin to see more novel implementations of distributed ledger technology, beyond the blockchain and the hashgraph.
很快，我们将开始在区块链和哈希图之外看到更多新颖的分布式分类帐技术实现。

[1]: https://cdn-images-1.medium.com/freeze/max/75/1*LTwVMAiBZBtgzdJp3fjhaA.png?q=20
[2]: https://cdn-images-1.medium.com/max/2000/1*LTwVMAiBZBtgzdJp3fjhaA.png
[3]: https://cdn-images-1.medium.com/freeze/max/75/1*LmE-r7mimGPsBCEgg3_ILQ.png?q=20
[4]: https://cdn-images-1.medium.com/max/2000/1*LmE-r7mimGPsBCEgg3_ILQ.png
[5]: https://cdn-images-1.medium.com/freeze/max/75/1*jovbYIVvMwWj8DI-TK2jyg.png?q=20
[6]: https://cdn-images-1.medium.com/max/2000/1*jovbYIVvMwWj8DI-TK2jyg.png


