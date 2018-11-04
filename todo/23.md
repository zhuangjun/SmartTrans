https://thecontrol.co/understanding-decentralized-identity-433abb343279

# Understanding Decentralized Identity

## A Missing Piece of Infrastructure for the dApp Ecosystem

Every cryptographer's fantasy is that all of us are born with private key chips embedded in our brains so that we can always identify who we are without worrying about identity theft or fraud. Unfortunately, we don't live in such a cyberpunk utopia, so we're currently left with a broken system of passwords and social security numbers that keep on getting stolen.

Meanwhile, blockchain technology offers the promise to revolutionize digital identity by returning ownership of personal data from companies and governments to individuals, such that individuals have the power to share their data with others and revoke it as they please.

To dive deeper into why blockchain technology is useful for identity, we first need to understand the concept of identity from a philosophical lens. Consider the following thought experiment — two marbles that look and feel exactly the same are placed next to each other. While the two marbles have the same **essence** (bits and atoms), they are distinct in **identity** because we can label each marble with a unique identifier such as Marble A and Marble B.

But such an identifier disappears once we mix up both marbles in a bag and are then asked to identify which is Marble A and which is Marble B. One solution to this identity problem is to have an omniscient watcher that always sees which marble is which even while they're being mixed. This works because **time**, as the fourth dimension of space, acts as a [temporal indicator of identity][1]. Blockchains, which are immutable logs of past states, provide temporal continuity and are thus useful for keeping track of identity even when [physical circumstances change][2].

Identity is one of the most important missing pieces of Web 3 infrastructure, and there are a number of projects taking different approaches to building an identity layer that the entire dApp ecosystem can use. The two primary layers that entrepreneurs are focused on today are **namespaces** and **attestations**.

### Namespaces

A key piece to decentralized identity is how people, devices, and other entities in the world are identified without a centrally owned registry.

For blockchains, right now we identify ourselves with addresses — a long string of characters such as 0x9992437898114d2770522e050883d6b2dfc48326 that is largely unmeaningful and difficult to remember. What if we could instead map each address to a unique, human-readable name?

![][3]![][4]![][5]

In computer science, **namespaces **are used to organize objects such that they can be identified without name collisions between multiple objects that share the same name. Examples of namespaces include file systems (assigning names to files) and DNS (assigning names to websites).

Similarly, for blockchains we want to maintain a global table of unique key-value pairs of addresses and names. Furthermore, we ideally want such a table to be secure, decentralized, and human-meaningful all at the same time. Is this even possible? We're running straight into Zooko's triangle.

#### Zooko's Triangle

![][6]![][4]![][7]

[Zooko's Triangle][8], named after the CEO of Zcash Zooko Wilcox, is a trilemma of three desirable properties for a naming system in a network.

* **Secure:** When you look up a name you get the correct value and not that of an impersonator.
* **Decentralized:** No central authority controls all the names.
* **Human-meaningful:** The name is something you can actually remember instead of some long random string of characters.

Zooko claimed that no digital name can achieve more than two of the above properties. Some examples examined with this framework in mind:

* [**DNSSEC**][9], a security extension to DNS, offers a decentralized human-meaningful naming scheme but is not secure against compromises to the root server.
* **Bitcoin **addresses are secure and decentralized but are not human-meaningful.
* [**I2P**][10], a protocol for anonymous censorship-resistant peer-to-peer communication, uses name translation services that are secure (by running locally) and provide human-meaningful names but need to use authorities in a decentralized network.

#### Squaring the triangle

Ever since Zooko conjectured his trilemma, there have been several solutions to Zooko's triangle. Nick Szabo first proposed a solution in his paper "[Secure Property Titles with Owner Authority][11]", which illustrated that all three properties could be achieved up to the limits of Byzantine fault tolerance.

Aaron Swartz later described a [naming system][12] based on Bitcoin that uses PoW to establish consensus of name ownership. This solution inspired the creation of [Namecoin][13]. Namecoin was the first fork of Bitcoin and was the underlying blockchain for [Dot-Bit][14], the first implementation of a decentralized DNS that squares Zooko's triangle. Dot-Bit works by allowing users to forward their current domains to .bit addresses.

Since its release seven years ago, Namecoin has had [very little adoption][15] mainly due to a poor user experience. There are hundreds of thousands of squatted domains but only about 30 developed Dot-Bit websites. There are also rumors that Namecoin developers approached Google and ICANN at some point for potential partnerships, which defeats the purpose of building a decentralized DNS to replace central authorities.

[Onename][16], later developed in March 2014 by Princeton researchers Ryan Shea and Muneeb Ali, is another identity system that stores usernames and personal profile data on the Bitcoin blockchain. Today, Onename is the registrar (like GoDaddy) for namespaces on the [Blockstack][17] dApp platform. Onename is also the technology that enables Blockstack users to retain ownership of all their personal data across various dApps, reducing the [data monopoly power][18] that Google and Facebook currently have.

[ENS][19] is a DNS for Ethereum that is simultaneously secure and decentralized. A smart contract serves as the registrar that manages and updates Ethereum names instead of using a centralized service like GoDaddy. Anyone can create a human-readable .eth subdomain, and the ENS resolver acts as a translator that converts names to addresses. For wallets that support ENS such as Metamask, MyCrypto, and Status, you can send money to a memorable name like 'alice.eth' instead of '0x4cbe58c50480…'. Since its launch, ENS has over 160,000 names registered with over 3.2 million ETH deposited to bid on names.

![][20]![][4]![][21]

[Handshake][22] is a new, exciting project led by Joseph Poon (creator of Lightning Network and Plasma) to decentralize [DNS root zones][23] and replace ICANN and certificate authorities. Handshake is built on a new UTXO blockchain where all peer-to-peer full nodes are root servers that host the root zone file, making the root zone uncensorable, permissionless, and free of gatekeepers. Already, projects such as [Namebase][24] are making Handshake easy to use by allowing users to register top-level domains on the Handshake blockchain and by building a wallet and exchange for Handshake coins (HNS).

![][25]![][4]![][26]

From the diagram above, projects such as Dot-Bit and ENS are decentralizing .bit and .eth addresses respectively, while Handshake takes it a step further to decentralize ICANN, the gatekeeper for root zone files. Source: [zk Capital][27]

Overall, Handshake is a very ambitious project that has the potential to change how DNS and naming services operate. Gaining adoption will be very difficult given operating system defaults for DNS in addition to disrupting the monopolies of incumbent certificate authorities such as Verisign.

Other projects attempting to come up with a solution to Zooko's triangle include [OpenAlias][28] and [Portal Network][29].

### Attestations

Having a namespace that is secure, decentralized, and human-meaningful all at the same time isn't enough for a decentralized identity system. To illustrate, when OneName launched someone immediately claimed the username +gavin, so OneName later had to reserve +gavinandresen for the Bitcoin core developer himself.

To prevent someone from impersonating someone else online, we need to verify that each person is actually who they claim to be. As an example, before you can rent a property on Airbnb, you must verify your email and phone number and optionally your Facebook, LinkedIn, and Google accounts. In this case, Airbnb acts as the trusted intermediary — both buyers and sellers trust that Airbnb has done the verification process properly. But in the dApp world, we no longer have trusted third parties, yet we still need to verify someone's identity before allowing smart contracts to execute.

As a result, attestations are the backbone of trust and reputation in a decentralized identity system. In the physical world, we attest our identity with documents like a driver's license or passport. These documents assert facts about us such as our name, age, or eye color. But driver's licenses don't exist on the Internet. Instead, we need to somehow find a way to link real-world identity to cryptographic identity. The jury is still out as to how to best pull this off, and many groups are pursuing a range of approaches.

#### Self-sovereign identity products

One solution is to have a standalone identity product. Such an identity product would need to support four essential features:

1. An identity has some sort of unique identifier. (The best architecture for storing such identifiers is a namespace described earlier that squares Zooko's triangle.)
2. Third-parties can make claims about an identity. Claims are attributes such as name, address, email, etc.
3. There is some way of asking a user for their identity.
4. There is some way of looking up claims about an identity.

![][30]![][4]![][31]

Facebook and Twitter are attesting claims to someone's Blockstack identity.

A standalone product for identity has the benefit of being **self-sovereign**. A self-sovereign identity is a digital identity that is portable across different dApps, does not depend on any government or company, and can never be taken away. Unlike in the current Internet, as soon as you give your social security number to someone, it can be used anywhere without your consent which could potentially lead to identity theft. Self-sovereign identity allows you to connect to dApps while retaining control of attributes such as social security number that attest your identity without ever having to make a copy of that data.

There are numerous groups trying to build the de-facto standard for self-sovereign identity.

[ERC 725][32] is a proposed standard for managing on-chain identity on the Ethereum blockchain. Created by Fabian Vogelsteller, who also created the widely successful ERC 20 token standard, an ERC 725 identity contract contains a cryptographic signature proving that the owner of the contract controls a particular claim to their identity such as an email or phone number. [Origin Protocol][33], a protocol for creating shared economies without intermediaries, uses ERC 725 to verify claims on identity before allowing smart contracts to execute.

[uPort][34] is a self-sovereign identity wallet that gives you complete control over your identity and personal data. Developed by ConsenSys, uPort lets you create an identity on Ethereum, securely login to dApps without passwords, manage your personal information and verifications, and approve Ethereum transactions and digitally sign files. uPort also recently developed a new decentralized data storage solution called [3Box][35], which allows Ethereum users to upload and share their information across dApps using any wallet. uPort has partnered with the Swiss canton of Zug to offer digital IDs to residents to connect real-world identities to the blockchain.

![][36]![][4]![][37]

uPort improves upon the ERC 725 standard by decomposing the monolithic identity smart contract. Their new layered architecture proposal is [ERC 780][38]. Source: [uPort][39]

[Civic][40], led by serial entrepreneur Vinny Lingham, is a dApp built on Ethereum for identity verification. In Civic's decentralized ecosystem, a user needs to have their identity verified before a requester, such as a company selling a service, can accept the user as a customer. To do so, validators verify the user's claims by cross referencing documents with government databases. Once validators verify the user's identity, they attest this information with the root of a Merkle tree that has the user's claims as the leaves.

Other similar identity products include [Sovrin][41], [Evernym][42], and [Nuggets][43]. Given how many groups of people are trying to tackle the identity problem, the [Decentralized Identity Foundation][44], which counts more than 50 partner organizations, is coordinating various attempts at decentralized identity with the goal of making these systems interoperable so users aren't left with their personal data fragmented across multiple protocols.

#### Will decentralized identity become centralized again?

An issue with self-sovereign identity is what to do if a user's private key gets lost or stolen. Should the attacker get the keys to the kingdom? Remember, we don't live in a cyberpunk utopia where we have private keys embedded in our brains. Maybe this issue would require identity to be held by trusted third parties.

Coinbase recently acquired a startup called Distributed Systems, which is developing a decentralized identity standard for dApps called the [Clear Protocol][45]. In doing so, Coinbase may look to build a "Facebook Connect" for crypto to make it much easier for users to sign up and connect their crypto wallets. Given that Coinbase has KYC data on its 20 million customers, Coinbase could leverage its treasure trove of identity data for dApps.

![][46]![][4]![][47]

Web 3 identity could eventually look something like this.

It is also [speculated][48] that Facebook's blockchain team is building an identity and single sign-on platform for dApps given how much personal information about us Facebook owns. This became apparent during the #DeleteFacebook campaign when users downloaded .zip files of all their personal data and were shocked by how much Facebook knew about them.

[Telegram Passport][49] is another unified authorization method for services that require personal identification. Using Telegram Passport, you can upload all your documents once and instantly share your data with services that require real-world ID.

### So what?

Although anonymity and pseudonymity are frequently cited as use cases for cryptocurrencies, identity solutions are still strongly needed for many new crypto native behaviors like on-chain governance and token curated registries. In particular, voting systems, such as [quadratic voting][50], rely heavily on verifiable, separate human identities because an individual could multiply his or her effective influence dramatically by misrepresenting him or herself as multiple individuals. Likewise, identity continues to be the bottleneck for these systems to be resistant to Sybil-like attacks and work effectively at scale.

In my view, a layered identity architecture that combines the best **namespace** product and the best **attestation** product is the most promising approach. It'll be interesting to see what identity solution the crypto community converges on moving forward.

[1]: https://www.youtube.com/watch?v=p4Gotl9vRGs
[2]: https://en.wikipedia.org/wiki/Ship_of_Theseus
[3]: https://cdn-images-1.medium.com/freeze/max/75/1*wH7y54tVBeMl4qbuR4xRkQ.png?q=20
[4]: https://thecontrol.co/undefined
[5]: https://cdn-images-1.medium.com/max/1500/1*wH7y54tVBeMl4qbuR4xRkQ.png
[6]: https://cdn-images-1.medium.com/freeze/max/75/0*4-p3LjTM6_oSr03_?q=20
[7]: https://cdn-images-1.medium.com/max/2000/0*4-p3LjTM6_oSr03_
[8]: https://en.wikipedia.org/wiki/Zooko%27s_triangle
[9]: https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions
[10]: https://en.wikipedia.org/wiki/I2P
[11]: https://nakamotoinstitute.org/secure-property-titles/
[12]: http://www.aaronsw.com/weblog/squarezooko
[13]: https://namecoin.org/
[14]: https://bit.namecoin.org/
[15]: https://cointelegraph.com/news/why-namecoin-didnt-take-off-a-cautionary-tale
[16]: https://onename.com/
[17]: https://blockstack.org/
[18]: https://blog.usejournal.com/power-in-the-age-of-the-feudal-internet-20e106a2e2ce
[19]: https://ens.domains/
[20]: https://cdn-images-1.medium.com/freeze/max/75/1*OPF5WdlfrP1bzdS23eR_Og.png?q=20
[21]: https://cdn-images-1.medium.com/max/2000/1*OPF5WdlfrP1bzdS23eR_Og.png
[22]: https://handshake.org/
[23]: https://en.wikipedia.org/wiki/DNS_root_zone
[24]: https://namebase.io/
[25]: https://cdn-images-1.medium.com/freeze/max/75/0*_0QzsqLdiy7SXlPF?q=20
[26]: https://cdn-images-1.medium.com/max/2000/0*_0QzsqLdiy7SXlPF
[27]: https://medium.com/zkcapital/handshake-ens-and-decentralized-naming-services-explained-2e69a1ca1313
[28]: https://openalias.org/
[29]: https://www.portal.network/
[30]: https://cdn-images-1.medium.com/freeze/max/75/0*q6fHkmzj4FfXMfUj?q=20
[31]: https://cdn-images-1.medium.com/max/2000/0*q6fHkmzj4FfXMfUj
[32]: https://github.com/ethereum/EIPs/issues/725
[33]: https://medium.com/originprotocol/managing-identity-with-a-ui-for-erc-725-5c7422b38c09
[34]: https://www.uport.me/
[35]: https://github.com/uport-project/3box?utm_source=uPort+Community&utm_campaign=3d1bcebbe0-EMAIL_CAMPAIGN_2018_08_21_08_07&utm_medium=email&utm_term=0_994f874fec-3d1bcebbe0-155602509
[36]: https://cdn-images-1.medium.com/freeze/max/75/1*hGnoujbEowM8t3NEJ7sWiQ.png?q=20
[37]: https://cdn-images-1.medium.com/max/2000/1*hGnoujbEowM8t3NEJ7sWiQ.png
[38]: https://github.com/ethereum/EIPs/issues/780
[39]: https://medium.com/uport/different-approaches-to-ethereum-identity-standards-a09488347c87
[40]: https://www.civic.com/
[41]: https://sovrin.org/
[42]: https://www.evernym.com/
[43]: https://nuggets.life/
[44]: http://identity.foundation/
[45]: https://medium.com/dsys/build-the-next-big-decentralized-application-with-cleargraph-4b1f34d2675
[46]: https://cdn-images-1.medium.com/freeze/max/75/1*GlDsSJIM7IyRiFU8wcUdYQ.png?q=20
[47]: https://cdn-images-1.medium.com/max/1500/1*GlDsSJIM7IyRiFU8wcUdYQ.png
[48]: https://techcrunch.com/2018/08/10/facecoin/
[49]: https://telegram.org/blog/passport
[50]: https://medium.com/@VitalikButerin/liberation-through-radical-decentralization-22fc4bedc2ac

  