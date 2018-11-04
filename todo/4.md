https://medium.com/mechanism-labs/finality-in-blockchain-consensus-d1f83c120a9a

# Finality in Blockchain Consensus

Today, with the swipe of a credit card, I purchased a delightful matcha green tea (shout out to Asha in Berkeley). Just moments after the swipe, the vendor felt comfortable giving me the tea in exchange for the amount I paid. The vendor was certain that the transaction went through_, _that it would not later be reverted, that they were guaranteed to receive the dollar value which I had paid. In other words, the purchase was **_finalized_**. [Edit: Thanks to [Lawson Baker][1] and [Ari Paul][2] for pointing out the increased complexity behind credit card transaction finalization. (See Lawson's response starred on the right). Cash transactions achieve this property of immediate finality.]

In the blockchain setting, **_finality_** is the affirmation that all well-formed blocks will not be revoked once committed to the blockchain. When users transact, they want to be confident that once their transactions go through, that the transactions cannot be arbitrarily changed or reversed. As such, in designing a blockchain consensus protocol, finality becomes vital. In current Nakamoto consensus based systems, 51% attacks and selfish mining threaten the health of the system by allowing the possibility for blocks to be revoked (eg. if a malicious actor is able to accumulate 51% of mining power, they can conduct a double spend attack). These protocols offer probabilistic finality, while others can guarantee absolute finality.

### Types of Finality

**_Probabilistic finality_**_ _refers to the type of finality provided by chain-based protocols (eg. Bitcoin's Nakamoto consensus), in which the probability that a transaction will not be reverted increases as the block which contains that transaction sinks deeper into the chain. The deeper the block, the more likely that the fork containing that block is the longest chain. This is why it is recommended to wait until a transaction is 6 blocks deep into the Bitcoin blockchain, which takes around an hour, before following through on that transaction, to ensure that there is a very low likelihood of that transaction being reverted.

**_Absolute finality_**_ _refers to the type of finality provided by PBFT-based protocols (eg. Tendermint), in which a transaction is immediately considered finalized once it is included in a block and added to the blockchain. In this case, a leader will propose a block, and a sufficient fraction of a committee of validators will have to approve the block for it be committed.

There is also the notion of **_economic finality_**_, _in which it becomes monetarily costly for a block to be reverted. In Proof of Stake based systems that employ slashing mechanisms (eg. Casper FFG, Tendermint), if a staker double signs on two blocks, their entire stake could get slashed, making it exceedingly expensive to harm finality. For example, if there is a network with 100 stakers, each who have staked $1 million dollars, then the total amount of stake present is $100 million dollars. If there are two blocks proposed at the same height, say B and B', and 66% of stakers vote on B ($66 million) and 66% vote on B' ($66 million), then at least 33% of stakers were malicious meaning the loss of at least $33 million.

### CAP Theorem and Finality

While it may seem, trivially, as though absolute finality is more desirable than probabilistic finality, there are some fundamental tradeoffs which can make it better to choose a probabilistic favoring chain. Here it's useful to employ [**Eric Brewer's CAP Theorem**][3] when thinking about these tradeoffs between probabilistic and BFT based finality. The CAP Theorem states that in the case of a partition, a distributed system can only preserve either consistency or availability. A **_consistency_** preserving system would halt rather than let inaccurate transactions through. An **_availability_**_ _preserving system would continue even if it lets inaccurate transactions through. Consistency favoring systems provide BFT finality, while availability favoring systems provide probabilistic finality.

![][4]

In making payments, users are often looking for the availability that probabilistically final chains provide (this is why many DAG based protocols, which favor availability over consistency, are focusing on supporting payments), however, many blockchain platforms offer more than payments, supporting decentralized applications backed by smart contracts. Different DApps can have varying preferences with regard to finality — DApps that require availability, for which it would be better if transactions were always able to get through regardless of some inaccuracies, would prefer probabilistically final chains, while DApps that prefer consistency, for which the whole application halting in lieu of inaccurate transactions going through is preferable, would prefer absolute final chains. Finality fundamentally affects user experience.

### Finality in PoS Consensus

In our [**Meta-Analysis of Alternative Consensus Protocols**][5], we considered the finality guarantees of certain major PoS platforms. We considered Tendermint, Thunderella, Algorand, Dfinity, Ouroboros Genesis, Casper FFG, and Casper CBC. Here, we'll provide a brief overview of these finality guarantees, however, it's important to examine these protocols as a whole in deciding which to employ versus just considering one parameter (in this case finality guarantees).

**Tendermint: **Tendermint achieves absolute finality. Any block that receives both ⅔ or more pre-votes and pre-commits is finalized. This process continues indefinitely unless ⅓ or more validators become unresponsive, in which case the network halts — as such, Tendermint prefers consistency over availability. When PoS slashing rules are applied to Tendermint, the protocol also achieves economic finality.

**Thunderella: **Thunderella's fast path provides absolute finality. Any maximum sequence of transactions with no gaps that has been notarized is considered fully confirmed output. If ¾ of the fast path committee are honest and online and the proposer is honest then valid transactions are instantly confirmed. However, the fast path confirmation is different from overall finality — it is optimistic finality. Transactions are fully finalized once they are recorded on the underlying blockchain, which can either be chain based or BFT based. As Thunderella falls back to an underlying blockchain in the case that the fast path fails, it prioritizes availability.

**Algorand: **Algorand achieves probabilistic finality. As long as an attacker controls less than ⅓ of the protocol's monetary value, Algorand can guarantee that the probability for forks is negligible allowing the protocol to operate in strong synchrony reaching definitive agreement on each block. In weak synchrony, Algorand may fork, but uses BA* to come to agreement on which fork to choose. As such, transactions in Algorand are eventually finalized when the protocol returns to strong synchrony. Algorand prioritizes consistency over availability, preferring to produce empty blocks generating unproductive progress rather than sacrificing on consistency.

**Dfinity: **Dfinity achieves probabilistic finality, The probability of finality increases as the block weight on a chain increases. This assumes that each round _r_, there is a time when we can rule out any further notarized blocks being received. At this rule out time, we can finalize round _r _because we know that the notarized blocks already contain all the chain tips that can possibly resolve beyond round _r._ There is a guarantee of near-instant finality as under normal operations, in round _r_, every transaction included in a block for round _r _is final for an observer after two confirmation plus the network propagation delay. Dfinity prioritizes consistency in that if the network splits, it automatically causes the random beacon to pause, not allowing either of halves of the network to continue.

**Ouroboros Genesis: **Genesis can achieve probabilistic finality based on their chain selection rule. The rule is that for a short range (up to _k _blocks, where _k _is the security parameter), follow the longest chain, and for long range (more than _k _blocks), use the plenitude rule, meaning look at the period of time right after the fork occurs after the current chain and select the denser of the chains.

**Casper FFG: **Casper FFG aims to give chain-based systems absolute / economic finality, which is achieved when a ⅔ supermajority of the committee, weighted by stake, sign a block. Casper FFG is built such that it will never finalize conflicting checkpoint even if an adversary has control over the underlying blockchain's proposal mechanism. However, since FFG provides safety and the proposal mechanism provides liveness, an adversary could prevent Casper from finalizing future checkpoints by stalling consensus. FFG prioritizes consistency in that it does not allow for checkpoint finalization without a ⅔ supermajority of validators agreeing, otherwise finalization will not occur. FFG also allows for economic finality through slashing mechanisms.

**Casper TFG: **TFG achieves absolute finality under validators with different fault tolerance thresholds. That is, the protocol is asynchronously safe and BFT, allowing for validators to have different fault tolerance thresholds.

Blocks being reverted can result in losses of millions or dollars or impact fundamental actions in decentralized applications. As such, understanding finality is crucial both in building robust blockchain platforms and in choosing platforms on which to develop applications.

_Acknowledgements: A special thanks to [__Zubin Koticha_][6]_ and [__Aparna Krishnan_][7]_ for discussions and feedback that contributed heavily to this post._

[1]: https://twitter.com/lwsnbaker
[2]: https://twitter.com/AriDavidPaul/status/1035337279219347456
[3]: https://people.eecs.berkeley.edu/~brewer/cs262b-2004/PODC-keynote.pdf
[4]: https://cdn-images-1.medium.com/max/2000/0*fcdj_vNNJJDR34S9
[5]: https://github.com/Mechanism-Labs/MetaAnalysis-of-Alternative-Consensus-Protocols
[6]: https://twitter.com/snarkyzk?lang=en
[7]: http://twitter.com/aparnalocked

  