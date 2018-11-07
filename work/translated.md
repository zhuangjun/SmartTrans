
https://medium.com/mechanism-labs/finality-in-blockchain-consensus-d1f83c120a9a
https://medium.com/mechanism-labs/finality-in-blockchain-consensus-d1f83c120a9a

# Finality in Blockchain Consensus
# 区块链共识的最终确定性

Today, with the swipe of a credit card, I purchased a delightful matcha green tea (shout out to Asha in Berkeley). Just moments after the swipe, the vendor felt comfortable giving me the tea in exchange for the amount I paid. The vendor was certain that the transaction went through_, _that it would not later be reverted, that they were guaranteed to receive the dollar value which I had paid. In other words, the purchase was **_finalized_**. [Edit: Thanks to [Lawson Baker][1] and [Ari Paul][2] for pointing out the increased complexity behind credit card transaction finalization. (See Lawson's response starred on the right). Cash transactions achieve this property of immediate finality.]
今天，随着信用卡的刷卡，我购买了一种令人愉快的抹茶绿茶（向伯克利的阿莎大喊）。在刷卡后不久，供应商觉得很舒服地给我茶，以换取我支付的金额。供应商确信交易已经完成_，以后不会被还原，他们可以保证收到我支付的美元价值。换句话说，购买是**_最终确定_**。 [编辑：感谢[Lawson Baker][1]和[Ari Paul][2]指出信用卡交易最终化背后的复杂性增加。 （见Lawson的回应在右边出演）。现金交易实现了立即终结的财产。]

In the blockchain setting, **_finality_** is the affirmation that all well-formed blocks will not be revoked once committed to the blockchain. When users transact, they want to be confident that once their transactions go through, that the transactions cannot be arbitrarily changed or reversed. As such, in designing a blockchain consensus protocol, finality becomes vital. In current Nakamoto consensus based systems, 51% attacks and selfish mining threaten the health of the system by allowing the possibility for blocks to be revoked (eg. if a malicious actor is able to accumulate 51% of mining power, they can conduct a double spend attack). These protocols offer probabilistic finality, while others can guarantee absolute finality.
在区块链设置中，**_ finality _**是对所有格式良好的块一旦被提交到区块链就不会被撤销的肯定。当用户进行交易时，他们希望在交易完成后确信交易不能随意更改或撤消。因此，在设计区块链共识协议时，终结性变得至关重要。在目前基于Nakamoto共识的系统中，51％的攻击和自私采矿通过允许块被撤销的可能性来威胁系统的健康（例如，如果恶意行为者能够累积51％的采矿能力，他们可以进行双重攻击花钱攻击）。这些协议提供概率最终性，而其他协议可以保证绝对最终性。

### Types of Finality
###最终类型

**_Probabilistic finality_**_ _refers to the type of finality provided by chain-based protocols (eg. Bitcoin's Nakamoto consensus), in which the probability that a transaction will not be reverted increases as the block which contains that transaction sinks deeper into the chain. The deeper the block, the more likely that the fork containing that block is the longest chain. This is why it is recommended to wait until a transaction is 6 blocks deep into the Bitcoin blockchain, which takes around an hour, before following through on that transaction, to ensure that there is a very low likelihood of that transaction being reverted.
**_概率最终性_**_ _指的是由基于链的协议提供的终结类型（例如，比特币的Nakamoto共识），其中交易不会被恢复的概率随着包含该交易的块更深入地进入链。块越深，包含该块的叉越可能是最长的链。这就是为什么建议等到交易比特币区块链深度为6个区块，这需要大约一个小时，然后才能完成该交易，以确保该交易被还原的可能性非常低。

**_Absolute finality_**_ _refers to the type of finality provided by PBFT-based protocols (eg. Tendermint), in which a transaction is immediately considered finalized once it is included in a block and added to the blockchain. In this case, a leader will propose a block, and a sufficient fraction of a committee of validators will have to approve the block for it be committed.
**_绝对最终性_**_ _指的是基于PBFT的协议（例如Tendermint）提供的终结类型，其中一旦交易被包含在块中并添加到区块链中，就立即认为该交易已完成。在这种情况下，领导者将提出一个块，并且验证者委员会的足够部分将必须批准该块以用于提交。

There is also the notion of **_economic finality_**_, _in which it becomes monetarily costly for a block to be reverted. In Proof of Stake based systems that employ slashing mechanisms (eg. Casper FFG, Tendermint), if a staker double signs on two blocks, their entire stake could get slashed, making it exceedingly expensive to harm finality. For example, if there is a network with 100 stakers, each who have staked $1 million dollars, then the total amount of stake present is $100 million dollars. If there are two blocks proposed at the same height, say B and B', and 66% of stakers vote on B ($66 million) and 66% vote on B' ($66 million), then at least 33% of stakers were malicious meaning the loss of at least $33 million.
还有**_经济终结_**_的概念，其中对于一个块被还原而言，它的成本很高。在使用削减机制的基于证据的基于证券的系统（例如Casper FFG，Tendermint）中，如果一个标记在两个区块上双重标记，它们的整个股份可能会被削减，使得损害最终结果非常昂贵。例如，如果有一个拥有100个赌注的网络，每个人已经投入了100万美元，那么现有的股份总额就是1亿美元。如果在同一高度提出两个区块，比如说B和B&#39;，66％的赌注投票给B（6600万美元）和66％投票给B&#39;（6600万美元），那么至少33％的赌客是恶意的意味着损失至少3300万美元。

### CAP Theorem and Finality
### CAP定理和终极性

While it may seem, trivially, as though absolute finality is more desirable than probabilistic finality, there are some fundamental tradeoffs which can make it better to choose a probabilistic favoring chain. Here it's useful to employ [**Eric Brewer's CAP Theorem**][3] when thinking about these tradeoffs between probabilistic and BFT based finality. The CAP Theorem states that in the case of a partition, a distributed system can only preserve either consistency or availability. A **_consistency_** preserving system would halt rather than let inaccurate transactions through. An **_availability_**_ _preserving system would continue even if it lets inaccurate transactions through. Consistency favoring systems provide BFT finality, while availability favoring systems provide probabilistic finality.
虽然看起来很平凡，似乎绝对最终性比概率最终性更令人满意，但仍有一些基本权衡可以使选择概率有利链更好。在考虑概率和基于BFT的最终结果之间的这些权衡时，采用[** Eric Brewer的CAP定理**][3]是有用的。 CAP定理指出，在分区的情况下，分布式系统只能保留一致性或可用性。一个**_ consistency _**保留系统将停止而不是让不准确的交易通过。 **_ availability _**_ _preserving系统将继续，即使它允许不准确的交易通过。有利于系统的一致性提供BFT终结性，而有利于系统的可用性提供概率最终性。

![][4]

In making payments, users are often looking for the availability that probabilistically final chains provide (this is why many DAG based protocols, which favor availability over consistency, are focusing on supporting payments), however, many blockchain platforms offer more than payments, supporting decentralized applications backed by smart contracts. Different DApps can have varying preferences with regard to finality — DApps that require availability, for which it would be better if transactions were always able to get through regardless of some inaccuracies, would prefer probabilistically final chains, while DApps that prefer consistency, for which the whole application halting in lieu of inaccurate transactions going through is preferable, would prefer absolute final chains. Finality fundamentally affects user experience.
在进行支付时，用户通常会寻找概率最终链提供的可用性（这就是为什么许多基于​​DAG的协议，有利于可用性而非一致性，专注于支持支付），然而，许多区块链平台提供的不仅仅是支付，支持去中心化智能合约支持的应用程序。不同的DApps在最终性方面可能有不同的偏好 - 需要可用性的DApps，如果交易总是能够通过而不管某些不准确性会更好，更喜欢概率性的最终链，而更喜欢一致性的DApps，整个申请停止代替不准确的交易是更可取的，更喜欢绝对的最终链。终极性从根本上影响用户体验。

### Finality in PoS Consensus
### PoS共识中的最终结果

In our [**Meta-Analysis of Alternative Consensus Protocols**][5], we considered the finality guarantees of certain major PoS platforms. We considered Tendermint, Thunderella, Algorand, Dfinity, Ouroboros Genesis, Casper FFG, and Casper CBC. Here, we'll provide a brief overview of these finality guarantees, however, it's important to examine these protocols as a whole in deciding which to employ versus just considering one parameter (in this case finality guarantees).
在我们[**替代共识协议的元分析**][5]中，我们考虑了某些主要PoS平台的最终保证。我们考虑了Tendermint，Thunderella，Algorand，Dfinity，Ouroboros Genesis，Casper FFG和Casper CBC。在这里，我们将简要概述这些最终保证，但是，在决定采用哪种协议而不仅仅考虑一个参数（在这种情况下是最终保证）时，重要的是要检查这些协议。

**Tendermint: **Tendermint achieves absolute finality. Any block that receives both ⅔ or more pre-votes and pre-commits is finalized. This process continues indefinitely unless ⅓ or more validators become unresponsive, in which case the network halts — as such, Tendermint prefers consistency over availability. When PoS slashing rules are applied to Tendermint, the protocol also achieves economic finality.
** Tendermint：** Tendermint实现了绝对的终极性。任何收到⅔或更多预投票和预先提交的块都将最终确定。除非⅓或更多验证器无响应，否则此过程将无限期地继续，在这种情况下网络停止 - 因此，Tendermint更喜欢可用性的一致性。当PoS削减规则应用于Tendermint时，该协议也实现了经济终极性。

**Thunderella: **Thunderella's fast path provides absolute finality. Any maximum sequence of transactions with no gaps that has been notarized is considered fully confirmed output. If ¾ of the fast path committee are honest and online and the proposer is honest then valid transactions are instantly confirmed. However, the fast path confirmation is different from overall finality — it is optimistic finality. Transactions are fully finalized once they are recorded on the underlying blockchain, which can either be chain based or BFT based. As Thunderella falls back to an underlying blockchain in the case that the fast path fails, it prioritizes availability.
** Thunderella：** Thunderella的快速路径提供了绝对的终极性。没有经过公证的间隙的任何最大交易顺序都被视为完全确认的输出。如果快速路径委员会的3/4是诚实和在线的并且提议者是诚实的，则立即确认有效交易。然而，快速路径确认与整体终结性不同 - 它是乐观的终结性。一旦将交易记录在基础区块链上，交易就完全最终确定，区块链可以是基于链的，也可以是基于BFT的。由于Thunderella在快速路径失败的情况下回落到底层区块链，因此它优先考虑可用性。

**Algorand: **Algorand achieves probabilistic finality. As long as an attacker controls less than ⅓ of the protocol's monetary value, Algorand can guarantee that the probability for forks is negligible allowing the protocol to operate in strong synchrony reaching definitive agreement on each block. In weak synchrony, Algorand may fork, but uses BA* to come to agreement on which fork to choose. As such, transactions in Algorand are eventually finalized when the protocol returns to strong synchrony. Algorand prioritizes consistency over availability, preferring to produce empty blocks generating unproductive progress rather than sacrificing on consistency.
** Algorand：** Algorand实现了概率终结。只要攻击者控制的协议货币价值低于协议的货币价值的1/3，Algorand就可以保证货叉的概率可以忽略不计，从而允许协议以强同步方式运行，从而达到每个块的最终协议。在弱同步中，Algorand可能会分叉，但使用BA *来决定选择哪个分叉。因此，当协议恢复强同步时，Algorand中的交易最终会最终确定。 Algorand优先考虑可用性的一致性，更倾向于产生空块，从而产生非生产性进展，而不是牺牲一致性。

**Dfinity: **Dfinity achieves probabilistic finality, The probability of finality increases as the block weight on a chain increases. This assumes that each round _r_, there is a time when we can rule out any further notarized blocks being received. At this rule out time, we can finalize round _r _because we know that the notarized blocks already contain all the chain tips that can possibly resolve beyond round _r._ There is a guarantee of near-instant finality as under normal operations, in round _r_, every transaction included in a block for round _r _is final for an observer after two confirmation plus the network propagation delay. Dfinity prioritizes consistency in that if the network splits, it automatically causes the random beacon to pause, not allowing either of halves of the network to continue.
** Dfinity：** Dfinity达到概率最终性，终点的概率随着链上的块权重的增加而增加。这假定每轮_r_，有一段时间我们可以排除任何进一步公证的块被接收。在这个规则的时间里，我们可以最终确定__因为我们知道公证的块已经包含了所有可能在圆形_r之后解决的链尖。在正常操作中有一个近乎即时的终结保证，在圆形_r_ ，在两次确认加上网络传播延迟之后，观察者最终包含在圆形_r __的块中的每个交易。 Dfinity优先考虑一致性，如果网络分裂，它会自动使随机信标暂停，不允许网络中的任何一半继续。

**Ouroboros Genesis: **Genesis can achieve probabilistic finality based on their chain selection rule. The rule is that for a short range (up to _k _blocks, where _k _is the security parameter), follow the longest chain, and for long range (more than _k _blocks), use the plenitude rule, meaning look at the period of time right after the fork occurs after the current chain and select the denser of the chains.
** Ouroboros Genesis：** Genesis可以根据他们的链选择规则实现概率终结。规则是对于短距离（最多_k _blocks，其中_k _is是安全参数），遵循最长链，对于长距离（超过_k _blocks），使用丰富度规则，意味着查看一段时间叉子发生在当前链之后，并选择链的密度更高。

**Casper FFG: **Casper FFG aims to give chain-based systems absolute / economic finality, which is achieved when a ⅔ supermajority of the committee, weighted by stake, sign a block. Casper FFG is built such that it will never finalize conflicting checkpoint even if an adversary has control over the underlying blockchain's proposal mechanism. However, since FFG provides safety and the proposal mechanism provides liveness, an adversary could prevent Casper from finalizing future checkpoints by stalling consensus. FFG prioritizes consistency in that it does not allow for checkpoint finalization without a ⅔ supermajority of validators agreeing, otherwise finalization will not occur. FFG also allows for economic finality through slashing mechanisms.
** Casper FFG：** Casper FFG的目标是为基于链的系统提供绝对/经济终结，这是在委员会的一个绝大多数人通过股权加权签署一个区块时实现的。 Casper FFG的构建使得即使攻击者控制了底层区块链的提议机制，它也永远不会完成冲突的检查点。但是，由于FFG提供了安全性并且提案机制提供了活跃性，因此对手可以阻止Casper通过停止达成共识来最终确定未来的检查点。 FFG优先考虑一致性，因为它不允许在没有大多数验证者同意的情况下完成检查点，否则将不会进行最终确定。 FFG还通过削减机制实现经济终结。

**Casper TFG: **TFG achieves absolute finality under validators with different fault tolerance thresholds. That is, the protocol is asynchronously safe and BFT, allowing for validators to have different fault tolerance thresholds.
** Casper TFG：** TFG在具有不同容错阈值的验证器下实现绝对最终性。也就是说，协议是异步安全的和BFT，允许验证器具有不同的容错阈值。

Blocks being reverted can result in losses of millions or dollars or impact fundamental actions in decentralized applications. As such, understanding finality is crucial both in building robust blockchain platforms and in choosing platforms on which to develop applications.
被还原的块可能导致数百万美元的损失或影响去中心化应用中的基本行为。因此，理解最终结果对于构建健壮的区块链平台和选择开发应用程序的平台都至关重要。

_Acknowledgements: A special thanks to [__Zubin Koticha_][6]_ and [__Aparna Krishnan_][7]_ for discussions and feedback that contributed heavily to this post._
_致谢：特别感谢[__Zubin Koticha _][6] _和[__Aparna Krishnan _][7] _讨论和反馈，为这篇文章做出了重要贡献。

[1]: https://twitter.com/lwsnbaker
[2]: https://twitter.com/AriDavidPaul/status/1035337279219347456
[3]: https://people.eecs.berkeley.edu/~brewer/cs262b-2004/PODC-keynote.pdf
[4]: https://cdn-images-1.medium.com/max/2000/0*fcdj_vNNJJDR34S9
[5]: https://github.com/Mechanism-Labs/MetaAnalysis-of-Alternative-Consensus-Protocols
[6]: https://twitter.com/snarkyzk?lang=en
[7]: http://twitter.com/aparnalocked


