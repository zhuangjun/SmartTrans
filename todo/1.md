https://bitcoinmagazine.com/articles/battle-privacycoins-why-monero-hard-beat-and-hard-scale/


Based on blockchain technology, most cryptocurrencies have an open and public ledger. While this is required for these systems to work, it comes with a significant downside: Privacy is often quite limited. Government agencies, analytics companies and other interested parties — let's call them "spies" — have ways to analyze the public blockchains and peer-to-peer networks of cryptocurrencies like Bitcoin, to cluster addresses and tie them to IP addresses or other identifying information.  

Dissatisfied with Bitcoin's privacy features, several cryptocurrency projects have launched with the specific goal to improve on them over the years. And not without success. Several of these privacycoins are among the most popular cryptocurrencies on the market today.

However, as detailed in this month's [cover story][1], Bitcoin's privacy features have recently seen significant improvements as well and are set to further improve over the coming months and years. This miniseries compares different privacycoins to the privacy offered by Bitcoin.

In part two: Monero

#### Background

[Monero][2] (XMR) is a privacy-focused cryptocurrency. It is based on the innovative CryptoNote protocol which was first used in [Bytecoin][3], but that project was secretly 80 percent premined. Without any such premine, Monero launched in 2014 (initially as "[Bitmonero][4]"), in effect as the "honest" implementation of the CryptoNote protocol.

As such, Monero was one of the first altcoins not based on Bitcoin's codebase, and it still differs from Bitcoin in several ways. For example, Monero does not have a limited supply; instead, it has an emission schedule that will slightly inflate the money supply forever. Monero rolls out scheduled hard forks about twice a year, and its latest version also has an ASIC-resistant, proof-of-work algorithm, meaning the cryptocurrency is mined by GPUs and CPUs only.

While created by the pseudonymous developer thankful_for_today, this founder quickly wanted to take Monero into a direction the brand new community did not agree with; he was subsequently "fired" weeks after launch when the project was forked. Monero has since been led by a core team of about half a dozen developers. The best-known and visible of the group is Riccardo "Fluffypony" Spagni — though Spagni is not as active in Monero development as he used to be. Most of the other core team members are pseudonymous.

XMR is accepted as payment on several dark net markets, for better or for worse, making it one of few altcoins that has found a non-niche use case beyond trading. Down from a top-five spot in early 2017, Monero claims the[ tenth][5] spot on altcoin market cap lists at the time of writing, making it the biggest privacy-centric coin on the market.

#### Privacy

Monero has privacy embedded in its protocol. Where Bitcoin and other coins offer privacy features as an option, Monero is one of few cryptocurrencies where privacy is both default and required. (Though users can opt to give up some of their privacy by sharing a so-called "view key.")

Monero achieves its privacy in two ways.

Most notably, Monero achieves privacy through a clever trick called "[Ring Confidential Transactions][6]" (RingCT). RingCT is, in turn, best understood as a combination of two other cryptographic tricks: "ring signatures" and "Confidential Transactions."

Like regular cryptographic signatures, ring signatures prove ownership of coins that are spent in a transaction ("inputs"). But with ring signatures, completely different coins can be added to the same transaction as "decoys," without revealing which one was really signed. This effectively "mixes" the coins, so spies don't know which coin was really spent and which were decoys. Right now, six decoys are added to each Monero transaction, and this will soon be increased to 10.

On top of ring signatures, Confidential Transactions let users hide ("blind") the amounts in a transaction. Using a cryptographic trick called the Pedersen commitment, anyone can still perform math on the blinded amounts. This lets Monero users verify that the sending and receiving end of the transaction equal out; hence, ensuring no coins were created out of thin air. But only the sender and receiver of a transaction know how much money changed hands.

Additionally, Monero uses[ stealth addresses][7], as special types of addresses that are perhaps best understood as pieces of a cryptographic puzzle. In short, using a stealth address, the _sender__ _of a transaction can generate a new Monero address to send XMR to, with some additional data. This additional data can, in turn, be used by the _owner _of the stealth address (and only the owner of the stealth address) to generate the corresponding private key and access these funds. Importantly, no one but the sender and receiver know that the stealth address and the actual Monero address match. And because every sender would generate a new and unique receiving address, Monero users can post their stealth address anywhere, without worrying that corresponding transactions on the blockchain can be linked to them.

#### Bitcoin

Monero as a project takes privacy seriously, and the general commitment to hard forking in new or improved features whenever available has resulted in top-notch privacy overall. At the same time, while Bitcoin takes a much more conservative approach, its recent and upcoming privacy improvements are starting to offer some real competition.

For example, stealth addresses are available on Bitcoin as well: [Samourai Wallet][8] offers stealth addresses as an option. But even generating a new address for each transaction (which many Bitcoin wallets do automatically) and not sharing it with anyone but the payer (which shouldn't be too difficult), goes a long way to realize similar privacy benefits. Stealth addresses are mainly useful where refreshing addresses isn't an option, like donation addresses posted on a website.

Consequently, RingCT is Monero's main selling point. Bitcoin's closest equivalent to RingCT is probably the Chaumian CoinJoin framework ZeroLink, which is (or will be) offered by [Wasabi Wallet][9], [Bob Wallet][10] and Samourai Wallet. ZeroLink lets users mix their coins, without needing to trust anyone with these coins or with their privacy.

RingCT and ZeroLink both have their own strengths and weaknesses.

In short, ZeroLink can be used with many more participants at the same time (a hundred on Wasabi Wallet) versus Monero's much smaller number of six or ten decoys. In general, it's better to mix with more people. 

On the flipside, ZeroLink doesn't hide amounts. This means that all amounts in a mix must be equal, thereby meaning it can only be used for the specific purpose of mixing (as opposed to making direct payments). Both RingCT's and ZeroLink's strengths and weaknesses come with counter-strategies and improvements to make for a complex, scenario-dependent comparison.

The more important differentiator, and probably Monero's main selling point, is that RingCT is default and mandatory, while ZeroLink is optional.

Therefore, on Bitcoin, only users who care about their privacy will likely mix their coins; those that feel they have "nothing to hide" will not. By extension, it's entirely possible that the very act of mixing itself would come to be seen as suspect. And while ZeroLink breaks the link of transaction history, that history of mixing is still visible on the blockchain.

On Monero, in contrast, even users who don't care about privacy use RingCT and have their coins used as decoys. This increases anonymity for Monero users that do care about their privacy: they're not suspect for using RingCT. (Though like Zerolink mixing on Bitcoin, using Monero could, of course, be considered suspect _in and of itself_; there [are][11] [indications][12] that this is indeed the case.)

And there is another flip side to the "mandatory privacy" solution. If too many Monero users that do not care about their privacy will go so far as to give up their privacy to spies, their combined data could go a long way in piecing together which coins in all other transactions act as decoys. This risk could become meaningful if [about half][13] of all Monero activity is compromised. In a world where exchanges and other regulatory compliant companies are among the biggest Monero users, this risk can't be dismissed.

This risk can be mitigated by increasing the ring size, that is, the number of decoys included in each transaction. Indeed, the ring size was increased to seven through the previous hard fork for this very reason, and it is why the ring size will increase to 11 soon. At that point, well over half of all Monero activity must be compromised before the risk becomes meaningful. The Monero core team considers this scenario very unlikely.

Ideally, Monero's ring size would be increased even more — perhaps even to 100, putting it on par with Wasabi's ZeroLink implementation — however, that's not really possible. On Monero, increasing privacy comes at the cost of scalability.

#### Scalability

A big downside of Monero's RingCT format is that it makes the system a magnitude less scalable than Bitcoin and just about every other cryptocurrency. Because all decoy coins must be included in a transaction, and the CT math used in these transactions is data heavy, Monero transactions are currently in the ballpark of 30 times bigger than Bitcoin transactions.

This size will decrease considerably as the upcoming hard fork introduces a cryptographic efficiency trick called "[Bulletproofs][14]," which should shrink the size of transactions by about 80 percent. But even with the increased ring size, Monero transactions will be roughly 10 times the size as Bitcoin's. All this data must be transmitted and verified by all nodes (and miners) on the network.

Making matters worse, the Monero blockchain cannot be pruned in its entirety. Where Bitcoin's full node users can opt to get rid of old transaction data, much of Monero's transaction history remains relevant and must, therefore, be stored forever. This is currently 20 gigabytes and growing. (The total Monero blockchain is currently 60 gigabytes.)

This is probably not an immediate problem, but only because Monero usage is two orders of magnitude below Bitcoin's: Monero only processes a couple thousand transactions per day, versus over 200,000 for Bitcoin. However, if the number of Monero transactions were to grow by a serious degree, the system could run into bottlenecks, for example, making it increasingly difficult for regular users to run Monero nodes.

Many of these Monero users could instead opt for more lightweight solutions, such as [remote nodes][15] or [light wallets][16]. But both of these come with privacy trade-offs, with their own risks and nuances. In short, relying on remote nodes is fairly secure and private in most cases, but a user could get unlucky if he relies on a spying node too much. Lightwallets are less private to begin with as they give up their view key, and they are particularly not recommended for cases where privacy is of particular importance.

In the end, Monero is undoubtedly one of the best privacycoins available — if not the best one. Still, if Bitcoin is used in a privacy-conscious manner, the difference between the two is probably smaller than some would expect. Monero's mandatory privacy and blinded amounts arguably still give it a leg up — but these features are in direct competition with scalability. How this situation evolves over time depends a lot on future technologies and is, therefore, hard to predict. It's not obvious that Monero's trade-offs will provide a more private system forever.

_Also read the articles in this series on [Dash][17], [Verge][18], [Zcash][19] and [Mimblewimble][20]._

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

  