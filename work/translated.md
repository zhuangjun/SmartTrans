
https://bitcoinmagazine.com/articles/battle-privacycoins-why-monero-hard-beat-and-hard-scale/
https://bitcoinmagazine.com/articles/battle-privacycoins-why-monero-hard-beat-and-hard-scale/


Based on blockchain technology, most cryptocurrencies have an open and public ledger. While this is required for these systems to work, it comes with a significant downside: Privacy is often quite limited. Government agencies, analytics companies and other interested parties — let's call them "spies" — have ways to analyze the public blockchains and peer-to-peer networks of cryptocurrencies like Bitcoin, to cluster addresses and tie them to IP addresses or other identifying information.
基于区块链技术，大多数数字货币都有一个开放的公共分类账。虽然这是这些系统工作所必需的，但它具有明显的缺点：隐私通常非常有限。政府机构，分析公司和其他感兴趣的团体 - 我们称之为“间谍” - 有办法分析公共区块链和比特币等数字货币的点对点网络，集群地址并将它们与IP地址或其他识别信息联系起来。

Dissatisfied with Bitcoin's privacy features, several cryptocurrency projects have launched with the specific goal to improve on them over the years. And not without success. Several of these privacycoins are among the most popular cryptocurrencies on the market today.
由于对比特币的隐私功能不满意，多个数字货币项目已启动，其具体目标是多年来对其进行改进。并非没有成功。其中一些隐私币是当今市场上最受欢迎的数字货币之一。

However, as detailed in this month's [cover story][1], Bitcoin's privacy features have recently seen significant improvements as well and are set to further improve over the coming months and years. This miniseries compares different privacycoins to the privacy offered by Bitcoin.
然而，正如本月[封面故事][1]中详细介绍的那样，比特币的隐私功能最近也取得了重大进展，并将在未来几个月和几年内进一步改善。这个迷你剧比较了不同的隐私币和比特币提供的隐私。

In part two: Monero
第二部分：Monero

#### Background
#### 背景

[Monero][2] (XMR) is a privacy-focused cryptocurrency. It is based on the innovative CryptoNote protocol which was first used in [Bytecoin][3], but that project was secretly 80 percent premined. Without any such premine, Monero launched in 2014 (initially as "[Bitmonero][4]"), in effect as the "honest" implementation of the CryptoNote protocol.
[Monero][2]（XMR）是一种以隐私为重点的数字货币。它基于[Bytecoin][3]中首次使用的创新CryptoNote协议，但该项目秘密地提前80％。没有任何这样的预设，Monero在2014年推出（最初为“[Bitmonero][4]”），实际上是CryptoNote协议的“诚实”实现。

As such, Monero was one of the first altcoins not based on Bitcoin's codebase, and it still differs from Bitcoin in several ways. For example, Monero does not have a limited supply; instead, it has an emission schedule that will slightly inflate the money supply forever. Monero rolls out scheduled hard forks about twice a year, and its latest version also has an ASIC-resistant, proof-of-work algorithm, meaning the cryptocurrency is mined by GPUs and CPUs only.
因此，Monero是第一批不基于比特币代码库的山寨币，它在很多方面仍然与比特币不同。例如，Monero没有有限的供应;相反，它有一个排放计划，将永远略微膨胀货币供应。 Monero每年大约推出两次预定硬叉，其最新版本还具有ASIC抗性，工作量证明算法，这意味着数字货币仅由GPU和CPU开采。

While created by the pseudonymous developer thankful_for_today, this founder quickly wanted to take Monero into a direction the brand new community did not agree with; he was subsequently "fired" weeks after launch when the project was forked. Monero has since been led by a core team of about half a dozen developers. The best-known and visible of the group is Riccardo "Fluffypony" Spagni — though Spagni is not as active in Monero development as he used to be. Most of the other core team members are pseudonymous.
虽然由假名开发者Thankful_for_today创建，但这位创始人很快就想让Monero走向全新社区不同意的方向;随后，当项目分叉后，他在发布几周后被“解雇”。此后，Monero由大约六位开发人员组成的核心团队领导。最着名和最引人注目的是Riccardo“Fluffypony”Spagni  - 尽管Spagni在Monero开发方面并不像以前那样活跃。大多数其他核心团队成员都是假名。

XMR is accepted as payment on several dark net markets, for better or for worse, making it one of few altcoins that has found a non-niche use case beyond trading. Down from a top-five spot in early 2017, Monero claims the[ tenth][5] spot on altcoin market cap lists at the time of writing, making it the biggest privacy-centric coin on the market.
XMR被认为是几个黑暗网络市场的付款，无论好坏，使其成为少数几个在交易之外找到非利基用例的山寨币之一。自2017年初排名前五位以来，Monero在撰写本文时声称在山寨币市场上有[十][5]点，这使其成为市场上最大的以隐私为中心的代币。

#### Privacy
####隐私

Monero has privacy embedded in its protocol. Where Bitcoin and other coins offer privacy features as an option, Monero is one of few cryptocurrencies where privacy is both default and required. (Though users can opt to give up some of their privacy by sharing a so-called "view key.")
Monero在其协议中嵌入了隐私。比特币和其他代币作为选项提供隐私功能的地方，Monero是少数数字货币之一，隐私是默认和必需的。 （尽管用户可以选择通过共享所谓的“视图密钥”来放弃他们的一些隐私。）

Monero achieves its privacy in two ways.
Monero以两种方式实现其隐私。

Most notably, Monero achieves privacy through a clever trick called "[Ring Confidential Transactions][6]" (RingCT). RingCT is, in turn, best understood as a combination of two other cryptographic tricks: "ring signatures" and "Confidential Transactions."
最值得注意的是，Monero通过一种名为“[Ring Confidential Transactions][6]”（RingCT）的巧妙技巧实现了隐私。反过来，RingCT最好被理解为两种其他加密技巧的组合：“环形签名”和“机密交易”。

Like regular cryptographic signatures, ring signatures prove ownership of coins that are spent in a transaction ("inputs"). But with ring signatures, completely different coins can be added to the same transaction as "decoys," without revealing which one was really signed. This effectively "mixes" the coins, so spies don't know which coin was really spent and which were decoys. Right now, six decoys are added to each Monero transaction, and this will soon be increased to 10.
与常规加密签名一样，环签名证明了在交易中花费的代币的所有权（“输入”）。但是使用戒指签名，可以将完全不同的代币添加到与“诱饵”相同的交易中，而不会泄露哪一个真正签名。这有效地“混合”了代币，所以间谍不知道哪些代币真的花了，哪些是诱饵。现在，每个Monero交易都会添加六个诱饵，很快就会增加到10个。

On top of ring signatures, Confidential Transactions let users hide ("blind") the amounts in a transaction. Using a cryptographic trick called the Pedersen commitment, anyone can still perform math on the blinded amounts. This lets Monero users verify that the sending and receiving end of the transaction equal out; hence, ensuring no coins were created out of thin air. But only the sender and receiver of a transaction know how much money changed hands.
在环签名之上，机密交易允许用户隐藏（“盲目”）交易中的金额。使用称为Pedersen承诺的加密技巧，任何人仍然可以对盲法量进行数学运算。这使Monero用户可以验证交易的发送和接收端是否相等;因此，确保没有代币是凭空创造的。但只有交易的发送方和接收方知道有多少钱易手。

Additionally, Monero uses[ stealth addresses][7], as special types of addresses that are perhaps best understood as pieces of a cryptographic puzzle. In short, using a stealth address, the _sender__ _of a transaction can generate a new Monero address to send XMR to, with some additional data. This additional data can, in turn, be used by the _owner _of the stealth address (and only the owner of the stealth address) to generate the corresponding private key and access these funds. Importantly, no one but the sender and receiver know that the stealth address and the actual Monero address match. And because every sender would generate a new and unique receiving address, Monero users can post their stealth address anywhere, without worrying that corresponding transactions on the blockchain can be linked to them.
此外，Monero使用[隐形地址][7]作为特殊类型的地址，这些地址可能最好被理解为加密拼图的一部分。简而言之，使用隐藏地址，交易的_sender__ _可以生成一个新的Monero地址，以便通过一些额外的数据发送XMR。反过来，这些附加数据可以由隐形地址的_owner _（以及隐形地址的所有者）使用，以生成相应的私钥并访问这些资金。重要的是，除了发件人和收件人之外，没有人知道隐形地址和实际的Monero地址匹配。由于每个发件人都会生成一个新的唯一接收地址，因此Monero用户可以在任何地方发布他们的隐秘地址，而不必担心区块链上的相应交易可以链接到它们。

#### Bitcoin
####比特币

Monero as a project takes privacy seriously, and the general commitment to hard forking in new or improved features whenever available has resulted in top-notch privacy overall. At the same time, while Bitcoin takes a much more conservative approach, its recent and upcoming privacy improvements are starting to offer some real competition.
Monero作为一个项目严肃对待隐私，并且无论何时可用的新功能或改进功能的总体承诺都会带来一流的隐私。与此同时，虽然比特币采取了更加保守的方法，但其近期和即将到来的隐私改进开始提供一些真正的竞争。

For example, stealth addresses are available on Bitcoin as well: [Samourai Wallet][8] offers stealth addresses as an option. But even generating a new address for each transaction (which many Bitcoin wallets do automatically) and not sharing it with anyone but the payer (which shouldn't be too difficult), goes a long way to realize similar privacy benefits. Stealth addresses are mainly useful where refreshing addresses isn't an option, like donation addresses posted on a website.
例如，比特币也提供隐形地址：[Samourai Wallet][8]提供隐形地址作为选项。但是，即使为每笔交易（许多比特币钱包自动执行）生成新地址，也不与除付款人之外的任何人共享（不应该太困难），这对于实现类似的隐私优势还有很长的路要走。隐藏地址主要用于不能刷新地址的选项，例如网站上发布的捐赠地址。

Consequently, RingCT is Monero's main selling point. Bitcoin's closest equivalent to RingCT is probably the Chaumian CoinJoin framework ZeroLink, which is (or will be) offered by [Wasabi Wallet][9], [Bob Wallet][10] and Samourai Wallet. ZeroLink lets users mix their coins, without needing to trust anyone with these coins or with their privacy.
因此，RingCT是Monero的主要卖点。比特币最接近RingCT的可能就是Chaumian CoinJoin框架ZeroLink，它由[Wasabi Wallet][9]，[Bob Wallet][10]和Samourai Wallet提供（或将会）。 ZeroLink允许用户混合他们的代币，而无需信任任何拥有这些代币或隐私的人。

RingCT and ZeroLink both have their own strengths and weaknesses.
RingCT和ZeroLink都有自己的优点和缺点。

In short, ZeroLink can be used with many more participants at the same time (a hundred on Wasabi Wallet) versus Monero's much smaller number of six or ten decoys. In general, it's better to mix with more people.
简而言之，ZeroLink可以与更多的参与者同时使用（Wasabi钱包上的一百个），而Monero的六个或十个诱饵的数量要少得多。一般来说，最好与更多人混在一起。

On the flipside, ZeroLink doesn't hide amounts. This means that all amounts in a mix must be equal, thereby meaning it can only be used for the specific purpose of mixing (as opposed to making direct payments). Both RingCT's and ZeroLink's strengths and weaknesses come with counter-strategies and improvements to make for a complex, scenario-dependent comparison.
另一方面，ZeroLink不会隐藏金额。这意味着混合物中的所有量必须相等，这意味着它只能用于混合的特定目的（而不是直接付款）。 RingCT和ZeroLink的优势和劣势都伴随着反策略和改进，以实现复杂的，依赖于场景的比较。

The more important differentiator, and probably Monero's main selling point, is that RingCT is default and mandatory, while ZeroLink is optional.
更重要的差异化因素，也许是Monero的主要卖点，是RingCT是默认的和强制性的，而ZeroLink是可选的。

Therefore, on Bitcoin, only users who care about their privacy will likely mix their coins; those that feel they have "nothing to hide" will not. By extension, it's entirely possible that the very act of mixing itself would come to be seen as suspect. And while ZeroLink breaks the link of transaction history, that history of mixing is still visible on the blockchain.
因此，在比特币上，只有关心自己隐私的用户才会混淆他们的代币;那些觉得自己“无所遁形”的人不会。通过扩展，混合本身的行为完全有可能被视为可疑。虽然ZeroLink打破了交易历史的链接，但混合的历史仍然可以在区块链上看到。

On Monero, in contrast, even users who don't care about privacy use RingCT and have their coins used as decoys. This increases anonymity for Monero users that do care about their privacy: they're not suspect for using RingCT. (Though like Zerolink mixing on Bitcoin, using Monero could, of course, be considered suspect _in and of itself_; there [are][11] [indications][12] that this is indeed the case.)
相比之下，在Monero上，即使不关心隐私的用户也使用RingCT并将其代币用作诱饵。这增加了Monero用户的匿名性，这些用户关心他们的隐私：他们不怀疑使用RingCT。 （虽然像Zerolink在比特币上混合使用，当然，使用Monero可能会被视为怀疑_in和__; [有][11][指示][12]确实如此。）

And there is another flip side to the "mandatory privacy" solution. If too many Monero users that do not care about their privacy will go so far as to give up their privacy to spies, their combined data could go a long way in piecing together which coins in all other transactions act as decoys. This risk could become meaningful if [about half][13] of all Monero activity is compromised. In a world where exchanges and other regulatory compliant companies are among the biggest Monero users, this risk can't be dismissed.
“强制隐私”解决方案还有另一面。如果太多不关心他们隐私的Monero用户会放弃他们对间谍的隐私，那么他们的综合数据可能会很大程度上拼凑出所有其他交易中的代币充当诱饵。如果所有Monero活动的[大约一半][13]受到损害，这种风险可能会变得有意义。在交易所和其他符合法规要求的公司是Monero最大用户之列的世界中，这种风险无法被忽视。

This risk can be mitigated by increasing the ring size, that is, the number of decoys included in each transaction. Indeed, the ring size was increased to seven through the previous hard fork for this very reason, and it is why the ring size will increase to 11 soon. At that point, well over half of all Monero activity must be compromised before the risk becomes meaningful. The Monero core team considers this scenario very unlikely.
可以通过增加环大小（即每个交易中包含的诱饵的数量）来减轻这种风险。实际上，由于这个原因，通过之前的硬叉将环尺寸增加到7，这就是为什么环尺寸将很快增加到11。此时，在风险变得有意义之前，必须妥协一半以上的Monero活动。 Monero核心团队认为这种情况不太可能发生。

Ideally, Monero's ring size would be increased even more — perhaps even to 100, putting it on par with Wasabi's ZeroLink implementation — however, that's not really possible. On Monero, increasing privacy comes at the cost of scalability.
理想情况下，Monero的环尺寸会增加甚至更多 - 甚至可能达到100，这与Wasabi的ZeroLink实现相当 - 但是，这并不是真的可能。在Monero上，增加隐私是以可扩展性为代价的。

#### Scalability
####可伸缩性

A big downside of Monero's RingCT format is that it makes the system a magnitude less scalable than Bitcoin and just about every other cryptocurrency. Because all decoy coins must be included in a transaction, and the CT math used in these transactions is data heavy, Monero transactions are currently in the ballpark of 30 times bigger than Bitcoin transactions.
Monero的RingCT格式的一大缺点是，它使得系统的可扩展性比比特币和其他所有数字货币都要小。由于所有诱饵代币必须包含在交易中，并且这些交易中使用的CT数学数据量很大，因此Monero交易目前处于比比特币交易大30倍的范围内。

This size will decrease considerably as the upcoming hard fork introduces a cryptographic efficiency trick called "[Bulletproofs][14]," which should shrink the size of transactions by about 80 percent. But even with the increased ring size, Monero transactions will be roughly 10 times the size as Bitcoin's. All this data must be transmitted and verified by all nodes (and miners) on the network.
随着即将推出的硬分叉引入称为“[Bulletproofs][14]”的加密效率技巧，这个大小将大大减少，这将使交易规模缩小约80％。但即使环形尺寸增加，Monero的交易量也将是比特币的10倍左右。所有这些数据必须由网络上的所有节点（和矿工）传输和验证。

Making matters worse, the Monero blockchain cannot be pruned in its entirety. Where Bitcoin's full node users can opt to get rid of old transaction data, much of Monero's transaction history remains relevant and must, therefore, be stored forever. This is currently 20 gigabytes and growing. (The total Monero blockchain is currently 60 gigabytes.)
更糟糕的是，Monero区块链无法完全修剪。比特币的完整节点用户可以选择摆脱旧的交易数据，Monero的大部分交易历史仍然相关，因此必须永久存储。目前这是20千兆字节并且还在增长。 （Monero区块链总数目前为60千兆字节。）

This is probably not an immediate problem, but only because Monero usage is two orders of magnitude below Bitcoin's: Monero only processes a couple thousand transactions per day, versus over 200,000 for Bitcoin. However, if the number of Monero transactions were to grow by a serious degree, the system could run into bottlenecks, for example, making it increasingly difficult for regular users to run Monero nodes.
这可能不是一个直接问题，但仅仅因为Monero的使用比比特币低两个数量级：Monero每天仅处理几千笔交易，而比特币则超过200,000笔交易。但是，如果Monero交易的数量严重增加，系统可能会遇到瓶颈，例如，常规用户越来越难以运行Monero节点。

Many of these Monero users could instead opt for more lightweight solutions, such as [remote nodes][15] or [light wallets][16]. But both of these come with privacy trade-offs, with their own risks and nuances. In short, relying on remote nodes is fairly secure and private in most cases, but a user could get unlucky if he relies on a spying node too much. Lightwallets are less private to begin with as they give up their view key, and they are particularly not recommended for cases where privacy is of particular importance.
许多Monero用户可以选择更轻量级的解决方案，例如[remote nodes][15]或[light wallets][16]。但这两者都伴随着隐私权衡，具有自己的风险和细微差别。简而言之，在大多数情况下，依赖远程节点是相当安全和私密的，但如果用户过多地依赖于间谍节点，用户可能会感到不幸。 Lightwallets在放弃他们的视图键时不那么私密，特别不建议在隐私特别重要的情况下使用它们。

In the end, Monero is undoubtedly one of the best privacycoins available — if not the best one. Still, if Bitcoin is used in a privacy-conscious manner, the difference between the two is probably smaller than some would expect. Monero's mandatory privacy and blinded amounts arguably still give it a leg up — but these features are in direct competition with scalability. How this situation evolves over time depends a lot on future technologies and is, therefore, hard to predict. It's not obvious that Monero's trade-offs will provide a more private system forever.
最后，Monero无疑是最好的隐私币之一 - 如果不是最好的。尽管如此，如果以隐私意识的方式使用比特币，两者之间的差异可能比某些人预期的要小。 Monero的强制性隐私和盲目金额可以说仍然可以提升 - 但这些功能与可扩展性直接竞争。随着时间的推移，这种情况如何演变在很大程度上取决于未来的技术，因此很难预测。 Monero的权衡取舍将永远不会提供更私密的系统，这一点并不明显。

_Also read the articles in this series on [Dash][17], [Verge][18], [Zcash][19] and [Mimblewimble][20]._
_还阅读了[Dash][17]，[Verge][18]，[Zcash][19]和[Mimblewimble][20]这一系列文章。

[1]: https://bitcoinmagazine.com/articles/bitcoin-privacycoin-tech-making-bitcoin-more-private/
[2]: https://getmonero.org/
[3]: https://bytecoin.org/
[4]: https://bitcointalk.org/index.php?topic=563821.0
[5]: https://bitcoinmagazine.com/markets/
[6]: https://www.ledgerjournal.org/ojs/index.php/ledger/article/view/34
[7]: https://bitcoinmagazine.com/articles/stealth-transactions-and-reusable-payment-codes-how-bitcoin-addresses-can-be-hidden-in-plain-sight-1467743772/
[8]: https://samouraiwallet.com/
[9]: https://github.com/zkSNACKs/WalletWasabi/releases
[10]: https://bobwallet.github.io/
[11]: https://www.forbes.com/consent/?toURL=https://www.forbes.com/sites/astanley/2018/06/20/u-s-secret-service-action-needed-to-address-anonymous-cryptocurrencies/#4239159e3ca1
[12]: https://bcfocus.com/news/changelly-withhold-hundreds-of-monero-due-to-high-risk-kyc-concerns/22326/
[13]: https://docs.google.com/spreadsheets/d/1iLa_yklutjHqn_DrOlO_eTb00l4YDAezijX2J5r6P14/edit#gid=42724826
[14]: https://bitcoinmagazine.com/articles/how-bulletproofs-could-make-bitcoin-privacy-less-costly/
[15]: https://getmonero.org/resources/user-guides/remote_node_gui.html
[16]: https://getmonero.org/downloads/#mobilelight
[17]: https://bitcoinmagazine.com/articles/battle-privacycoins-why-dash-not-really-private/
[18]: https://bitcoinmagazine.com/articles/battle-privacycoins-verge-offers-little-privacy-and-nothing-unique/
[19]: https://bitcoinmagazine.com/articles/battle-privacycoins-zcash-groundbreaking-if-you-trust-it/
[20]: https://bitcoinmagazine.com/articles/battle-privacycoins-what-we-know-about-grin-and-beams-mimblewimble/


