
https://thecontrol.co/understanding-decentralized-identity-433abb343279
https://thecontrol.co/understanding-decentralized-identity-433abb343279

# Understanding Decentralized Identity
# 理解去中心化身份

## A Missing Piece of Infrastructure for the dApp Ecosystem
# #

Every cryptographer's fantasy is that all of us are born with private key chips embedded in our brains so that we can always identify who we are without worrying about identity theft or fraud. Unfortunately, we don't live in such a cyberpunk utopia, so we're currently left with a broken system of passwords and social security numbers that keep on getting stolen.
每个密码学家的幻想都是我们所有人都天生就有嵌入我们大脑的私钥芯片，这样我们就可以随时识别我们的身份而不必担心身份盗用或欺诈。不幸的是，我们并没有生活在这样一个计算机朋克的乌托邦中，所以我们目前留下了一个破损的密码和社会安全号码系统，这些密码和社会安全号码一直被盗。

Meanwhile, blockchain technology offers the promise to revolutionize digital identity by returning ownership of personal data from companies and governments to individuals, such that individuals have the power to share their data with others and revoke it as they please.
同时，区块链技术通过将个人数据的所有权从公司和政府归还给个人，使个人有权与他人共享数据并随意撤销数据，从而有望彻底改变数字身份。

To dive deeper into why blockchain technology is useful for identity, we first need to understand the concept of identity from a philosophical lens. Consider the following thought experiment — two marbles that look and feel exactly the same are placed next to each other. While the two marbles have the same **essence** (bits and atoms), they are distinct in **identity** because we can label each marble with a unique identifier such as Marble A and Marble B.
为了更深入地了解区块链技术对于身份有用的原因，我们首先需要从哲学视角理解身份的概念。考虑以下思想实验 - 两个看起来和感觉完全相同的大理石彼此相邻放置。虽然两个大理石具有相同的**精华**（位和原子），但它们在**身份**中是不同的，因为我们可以用大理石A和大理石B等唯一标识符标记每个大理石。

But such an identifier disappears once we mix up both marbles in a bag and are then asked to identify which is Marble A and which is Marble B. One solution to this identity problem is to have an omniscient watcher that always sees which marble is which even while they're being mixed. This works because **time**, as the fourth dimension of space, acts as a [temporal indicator of identity][1]. Blockchains, which are immutable logs of past states, provide temporal continuity and are thus useful for keeping track of identity even when [physical circumstances change][2].
但是，一旦我们将两个弹珠混合在一个袋子中然后被要求识别哪个是大理石A并且哪个是大理石B，这样的标识符就消失了。这个身份问题的一个解决方案是拥有一个无所不知的观察者，总是看到哪个大理石是哪个他们混在一起。这是有效的，因为**时间**，作为空间的第四维，作为[身份的时间指标][1]。区块链是过去状态的不可变日志，提供了时间连续性，因此即使在[物理环境发生变化]时也可用于跟踪身份[2]。

Identity is one of the most important missing pieces of Web 3 infrastructure, and there are a number of projects taking different approaches to building an identity layer that the entire dApp ecosystem can use. The two primary layers that entrepreneurs are focused on today are **namespaces** and **attestations**.
身份是Web 3基础架构中最重要的缺失部分之一，并且有许多项目采用不同的方法来构建整个dApp生态系统可以使用的身份层。企业家今天关注的两个主要层面是**名称空间**和**证明**。

### Namespaces
### 命名空间

A key piece to decentralized identity is how people, devices, and other entities in the world are identified without a centrally owned registry.
去中心化身份的关键部分是如何在没有集中注册的情况下识别世界上的人，设备和其他实体。

For blockchains, right now we identify ourselves with addresses — a long string of characters such as 0x9992437898114d2770522e050883d6b2dfc48326 that is largely unmeaningful and difficult to remember. What if we could instead map each address to a unique, human-readable name?
对于区块链，现在我们用地址标识自己 - 一长串字符，例如0x9992437898114d2770522e050883d6b2dfc48326，这在很大程度上是无意义的，难以记住。如果我们可以将每个地址映射到一个唯一的，人类可读的名称，该怎么办？

![][5]

In computer science, **namespaces **are used to organize objects such that they can be identified without name collisions between multiple objects that share the same name. Examples of namespaces include file systems (assigning names to files) and DNS (assigning names to websites).
在计算机科学中，**名称空间**用于组织对象，使得可以在没有共享相同名称的多个对象之间的名称冲突的情况下识别它们。命名空间的示例包括文件系统（为文件指定名称）和DNS（为网站指定名称）。

Similarly, for blockchains we want to maintain a global table of unique key-value pairs of addresses and names. Furthermore, we ideally want such a table to be secure, decentralized, and human-meaningful all at the same time. Is this even possible? We're running straight into Zooko's triangle.
类似地，对于区块链，我们希望维护一个包含地址和名称的唯一键值对的全局表。此外，理想情况下，我们希望这样的表格同时具有安全性，去中心化性和人性意义。这有可能吗？我们直接进入Zooko的三角形。

#### Zooko's Triangle
### #

![][7]

[Zooko's Triangle][8], named after the CEO of Zcash Zooko Wilcox, is a trilemma of three desirable properties for a naming system in a network.
[Zooko's Triangle][8]以Zcash Zooko Wilcox的首席执行官命名，是网络中命名系统的三个理想属性的三难。

* **Secure:** When you look up a name you get the correct value and not that of an impersonator.
***安全：**当您查找名称时，您将获得正确的值而不是模仿者的值。
* **Decentralized:** No central authority controls all the names.
***去中心化：**没有中央机关控制所有名称。
* **Human-meaningful:** The name is something you can actually remember instead of some long random string of characters.
***人性化：**这个名字是你可以记住的，而不是一些长长的随机字符串。

Zooko claimed that no digital name can achieve more than two of the above properties. Some examples examined with this framework in mind:
Zooko声称没有数字名称可以实现上述两个以上的属性。考虑到这个框架的一些例子：

* [**DNSSEC**][9], a security extension to DNS, offers a decentralized human-meaningful naming scheme but is not secure against compromises to the root server.
*[**DNSSEC**][9]是DNS的安全扩展，它提供了一种去中心化的人性化命名方案，但不能安全地防止对根服务器的攻击。
* **Bitcoin **addresses are secure and decentralized but are not human-meaningful.
***比特币**地址是安全和去中心化的，但不具有人类意义。
* [**I2P**][10], a protocol for anonymous censorship-resistant peer-to-peer communication, uses name translation services that are secure (by running locally) and provide human-meaningful names but need to use authorities in a decentralized network.
*[**I2P**][10]，一种用于匿名审查的对等通信协议，使用安全的名称翻译服务（通过本地运行）并提供人性化的名称，但需要使用权限去中心化的网络。

#### Squaring the triangle
#### 正方形三角形

Ever since Zooko conjectured his trilemma, there have been several solutions to Zooko's triangle. Nick Szabo first proposed a solution in his paper "[Secure Property Titles with Owner Authority][11]", which illustrated that all three properties could be achieved up to the limits of Byzantine fault tolerance.
自从Zooko推测他的三难以来，Zooko的三角形有几种解决方案。 Nick Szabo在他的论文“[所有者权威的安全财产标题][11]”中首次提出了一个解决方案，该文件说明所有三个属性都可以达到拜占庭容错的极限。

Aaron Swartz later described a [naming system][12] based on Bitcoin that uses PoW to establish consensus of name ownership. This solution inspired the creation of [Namecoin][13]. Namecoin was the first fork of Bitcoin and was the underlying blockchain for [Dot-Bit][14], the first implementation of a decentralized DNS that squares Zooko's triangle. Dot-Bit works by allowing users to forward their current domains to .bit addresses.
Aaron Swartz后来描述了基于比特币的[命名系统][12]，它使用PoW建立了名称所有权的共识。这个解决方案激发了[Namecoin][13]的创造。 Namecoin是比特币的第一个分支，是[Dot-Bit][14]的基础区块链，是第一个实现Zooko三角形的去中心化DNS。 Dot-Bit的工作原理是允许用户将当前域转发到.bit地址。

Since its release seven years ago, Namecoin has had [very little adoption][15] mainly due to a poor user experience. There are hundreds of thousands of squatted domains but only about 30 developed Dot-Bit websites. There are also rumors that Namecoin developers approached Google and ICANN at some point for potential partnerships, which defeats the purpose of building a decentralized DNS to replace central authorities.
自七年前发布以来，Namecoin [很少采用][15]主要是由于用户体验不佳。有数十万个被蹲的域名，但只有大约30个开发了Dot-Bit网站。还有传闻称，Namecoin开发商在某种程度上与谷歌和ICANN就潜在的合作关系进行了接触，这违背了建立去中心化式DNS以取代中央政府的目的。

[Onename][16], later developed in March 2014 by Princeton researchers Ryan Shea and Muneeb Ali, is another identity system that stores usernames and personal profile data on the Bitcoin blockchain. Today, Onename is the registrar (like GoDaddy) for namespaces on the [Blockstack][17] dApp platform. Onename is also the technology that enables Blockstack users to retain ownership of all their personal data across various dApps, reducing the [data monopoly power][18] that Google and Facebook currently have.
[Onename][16]，后来由普林斯顿研究人员Ryan Shea和Muneeb Ali于2014年3月开发，是另一种身份系统，用于存储比特币区块链上的用户名和个人资料数据。今天，Onename是[Blockstack][17] dApp平台上名称空间的注册商（如GoDaddy）。 Onename也是使Blockstack用户能够保留各种dApp所有个人数据所有权的技术，从而降低了谷歌和Facebook目前拥有的[数据垄断能力][18]。

[ENS][19] is a DNS for Ethereum that is simultaneously secure and decentralized. A smart contract serves as the registrar that manages and updates Ethereum names instead of using a centralized service like GoDaddy. Anyone can create a human-readable .eth subdomain, and the ENS resolver acts as a translator that converts names to addresses. For wallets that support ENS such as Metamask, MyCrypto, and Status, you can send money to a memorable name like 'alice.eth' instead of '0x4cbe58c50480…'. Since its launch, ENS has over 160,000 names registered with over 3.2 million ETH deposited to bid on names.
[ENS][19]是以太坊的DNS，同时是安全和去中心化的。智能合约用作管理和更新以太坊名称的注册商，而不是像GoDaddy那样使用集中式服务。任何人都可以创建一个人类可读的.eth子域，ENS解析器充当将名称转换为地址的转换器。对于支持ENS的钱包，例如Metamask，MyCrypto和Status，你可以将钱汇给一个令人难忘的名字，比如'alice.eth'而不是'0x4cbe58c50480 ......'。自推出以来，ENS已注册超过160,000个名称，其中包含超过320万个ETH，用于竞标名称。

![][21]

[Handshake][22] is a new, exciting project led by Joseph Poon (creator of Lightning Network and Plasma) to decentralize [DNS root zones][23] and replace ICANN and certificate authorities. Handshake is built on a new UTXO blockchain where all peer-to-peer full nodes are root servers that host the root zone file, making the root zone uncensorable, permissionless, and free of gatekeepers. Already, projects such as [Namebase][24] are making Handshake easy to use by allowing users to register top-level domains on the Handshake blockchain and by building a wallet and exchange for Handshake coins (HNS).
[Handshake][22]是一个由Joseph Poon（闪电网络和等离子的创建者）领导的新的令人兴奋的项目，用于去中心化[DNS根区域][23]并取代ICANN和证书颁发机构。握手建立在新的UTXO区块链上，其中所有对等完整节点都是托管根区域文件的根服务器，使根区域不受限制，无权限且没有网守。已经有了[Namebase][24]这样的项目，通过允许用户在握手区块链上注册顶级域名，并通过构建钱包和交换握手币（HNS），使握手变得易于使用。

![][26]

From the diagram above, projects such as Dot-Bit and ENS are decentralizing .bit and .eth addresses respectively, while Handshake takes it a step further to decentralize ICANN, the gatekeeper for root zone files. Source: [zk Capital][27]
从上图中可以看出，Dot-Bit和ENS等项目分别对.bit和.eth地址进行了去中心化，而Handshake则进一步去中心化了ICANN（根区域文件的守门人）的权力。资料来源：[zk Capital][27]

Overall, Handshake is a very ambitious project that has the potential to change how DNS and naming services operate. Gaining adoption will be very difficult given operating system defaults for DNS in addition to disrupting the monopolies of incumbent certificate authorities such as Verisign.
总的来说，握手是一个非常雄心勃勃的项目，有可能改变DNS和命名服务的运作方式。除了破坏Verisign等现有证书颁发机构的垄断之外，鉴于DNS的操作系统默认设置，获得采用将非常困难。

Other projects attempting to come up with a solution to Zooko's triangle include [OpenAlias][28] and [Portal Network][29].
试图提出Zooko三角形解决方案的其他项目包括[OpenAlias][28]和[Portal Network][29]。

### Attestations
### 认证

Having a namespace that is secure, decentralized, and human-meaningful all at the same time isn't enough for a decentralized identity system. To illustrate, when OneName launched someone immediately claimed the username +gavin, so OneName later had to reserve +gavinandresen for the Bitcoin core developer himself.
同时具有安全，去中心化和人性化的命名空间对于去中心化的身份系统来说是不够的。为了说明，当OneName发布时，有人立即声称用户名为+ gavin，因此OneName后来不得不为比特币核心开发人员自己保留+ gavinandresen。

To prevent someone from impersonating someone else online, we need to verify that each person is actually who they claim to be. As an example, before you can rent a property on Airbnb, you must verify your email and phone number and optionally your Facebook, LinkedIn, and Google accounts. In this case, Airbnb acts as the trusted intermediary — both buyers and sellers trust that Airbnb has done the verification process properly. But in the dApp world, we no longer have trusted third parties, yet we still need to verify someone's identity before allowing smart contracts to execute.
为了防止某人在网上冒充他人，我们需要验证每个人实际上是他们声称的人。例如，在Airbnb上租房产之前，您必须验证您的电子邮件和电话号码以及您的Facebook，LinkedIn和Google帐户。在这种情况下，Airbnb充当可信赖的中间人 - 买家和卖家都相信Airbnb已经正确地完成了验证过程。但是在dApp世界中，我们不再拥有受信任的第三方，但在允许智能合约执行之前，我们仍需要验证某人的身份。

As a result, attestations are the backbone of trust and reputation in a decentralized identity system. In the physical world, we attest our identity with documents like a driver's license or passport. These documents assert facts about us such as our name, age, or eye color. But driver's licenses don't exist on the Internet. Instead, we need to somehow find a way to link real-world identity to cryptographic identity. The jury is still out as to how to best pull this off, and many groups are pursuing a range of approaches.
因此，证明是去中心化身份系统中信任和声誉的支柱。在物质世界中，我们用驾驶执照或护照等文件证明我们的身份。这些文件断言了我们的事实，例如我们的姓名，年龄或眼睛颜色。但是，互联网上不存在驾驶执照。相反，我们需要以某种方式找到一种方法将现实世界身份与加密身份联系起来。关于如何最好地解决这个问题，评委们仍然没有考虑，许多团体正在采取一系列措施。

#### Self-sovereign identity products
#### 自我主权身份产品

One solution is to have a standalone identity product. Such an identity product would need to support four essential features:
一种解决方案是拥有独立的身份产品。这样的身份产品需要支持四个基本特征：

1. An identity has some sort of unique identifier. (The best architecture for storing such identifiers is a namespace described earlier that squares Zooko's triangle.)
1. 身份具有某种唯一标识符。
2. Third-parties can make claims about an identity. Claims are attributes such as name, address, email, etc.
2. 第三方可以就身份提出要求。声明是名称，地址，电子邮件等属性。
3. There is some way of asking a user for their identity.
3. 有一种方式可以询问用户的身份。
4. There is some way of looking up claims about an identity.
4. 有一些方法可以查找有关身份的声明。

![][31]

Facebook and Twitter are attesting claims to someone's Blockstack identity.
Facebook和Twitter正在证明对某人的Blockstack身份的主张。

A standalone product for identity has the benefit of being **self-sovereign**. A self-sovereign identity is a digital identity that is portable across different dApps, does not depend on any government or company, and can never be taken away. Unlike in the current Internet, as soon as you give your social security number to someone, it can be used anywhere without your consent which could potentially lead to identity theft. Self-sovereign identity allows you to connect to dApps while retaining control of attributes such as social security number that attest your identity without ever having to make a copy of that data.
一个独立的身份产品具有**自我主权**的好处。自我主权身份是一种数字身份，可以在不同的dApp之间移植，不依赖于任何政府或公司，永远不会被带走。与当前的互联网不同，只要您将社会安全号码提供给某人，就可以在未经您同意的情况下在任何地方使用，这可能会导致身份盗用。自我主权身份允许您连接到dApp，同时保留对社会安全号码等属性的控制，这些属性可以证明您的身份，而无需复制该数据。

There are numerous groups trying to build the de-facto standard for self-sovereign identity.
有许多团体试图建立自我主权身份的事实上的标准。

[ERC 725][32] is a proposed standard for managing on-chain identity on the Ethereum blockchain. Created by Fabian Vogelsteller, who also created the widely successful ERC 20 token standard, an ERC 725 identity contract contains a cryptographic signature proving that the owner of the contract controls a particular claim to their identity such as an email or phone number. [Origin Protocol][33], a protocol for creating shared economies without intermediaries, uses ERC 725 to verify claims on identity before allowing smart contracts to execute.
[ERC 725][32]是用于管理以太坊区块链上的链上身份的建议标准。 ERC 725身份合同由Fabian Vogelsteller创建，他也创建了广泛成功的ERC 20通证标准，其中包含加密签名，证明合同所有者控制对其身份的特定声明，如电子邮件或电话号码。 [原始协议][33]，一种在没有中间人的情况下创建共享经济的协议，在允许智能合约执行之前，使用ERC 725来验证对身份的主张。

[uPort][34] is a self-sovereign identity wallet that gives you complete control over your identity and personal data. Developed by ConsenSys, uPort lets you create an identity on Ethereum, securely login to dApps without passwords, manage your personal information and verifications, and approve Ethereum transactions and digitally sign files. uPort also recently developed a new decentralized data storage solution called [3Box][35], which allows Ethereum users to upload and share their information across dApps using any wallet. uPort has partnered with the Swiss canton of Zug to offer digital IDs to residents to connect real-world identities to the blockchain.
[uPort][34]是一个自我主权身份钱包，可让您完全控制自己的身份和个人数据。由ConsenSys开发，uPort允许您在以太坊上创建身份，安全地登录到没有密码的dApp，管理您的个人信息和验证，以及批准以太坊交易和数字签名文件。 uPort最近还开发了一种新的去中心化式数据存储解决方案，称为[3Box][35]，它允许以太坊用户使用任何钱包在dApp上传和共享他们的信息。 uPort与瑞士Zug州合作，为居民提供数字身份证，将现实身份与区块链联系起来。

![][37]

uPort improves upon the ERC 725 standard by decomposing the monolithic identity smart contract. Their new layered architecture proposal is [ERC 780][38]. Source: [uPort][39]
uPort通过分解整体身份智能合约来改进ERC 725标准。他们新的分层架构提案是[ERC 780][38]。资料来源：[uPort][39]

[Civic][40], led by serial entrepreneur Vinny Lingham, is a dApp built on Ethereum for identity verification. In Civic's decentralized ecosystem, a user needs to have their identity verified before a requester, such as a company selling a service, can accept the user as a customer. To do so, validators verify the user's claims by cross referencing documents with government databases. Once validators verify the user's identity, they attest this information with the root of a Merkle tree that has the user's claims as the leaves.
[Civic][40]由连续企业家Vinny Lingham领导，是一个基于以太坊进行身份验证的dApp。在Civic的去中心化式生态系统中，用户需要在请求者（例如销售服务的公司）可以接受用户作为客户之前验证其身份。为此，验证者通过与政府数据库交叉引用文档来验证用户的声明。一旦验证器验证了用户的身份，他们就会以Merkle树的根证明这些信息，该树的用户声称为叶子。

Other similar identity products include [Sovrin][41], [Evernym][42], and [Nuggets][43]. Given how many groups of people are trying to tackle the identity problem, the [Decentralized Identity Foundation][44], which counts more than 50 partner organizations, is coordinating various attempts at decentralized identity with the goal of making these systems interoperable so users aren't left with their personal data fragmented across multiple protocols.
其他类似的身份产品包括[Sovrin][41]，[Evernym][42]和[Nuggets][43]。鉴于有多少人正试图解决身份问题，[去中心化的身份基金会][44]，其中包括50多个合作伙伴组织，正在协调各种去中心化身份的尝试，目的是使这些系统具有互操作性，因此用户不会他们的个人数据在多个协议中去中心化。

#### Will decentralized identity become centralized again?
#### 去中心化的身份会再次中心化吗？

An issue with self-sovereign identity is what to do if a user's private key gets lost or stolen. Should the attacker get the keys to the kingdom? Remember, we don't live in a cyberpunk utopia where we have private keys embedded in our brains. Maybe this issue would require identity to be held by trusted third parties.
自我主权身份的问题是如果用户的私钥丢失或被盗，该怎么办。攻击者是否应该获得王国的钥匙？请记住，我们不是生活在一个计算机朋克的乌托邦，我们的大脑中嵌入了私钥。也许这个问题需要由受信任的第三方持有身份。

Coinbase recently acquired a startup called Distributed Systems, which is developing a decentralized identity standard for dApps called the [Clear Protocol][45]. In doing so, Coinbase may look to build a "Facebook Connect" for crypto to make it much easier for users to sign up and connect their crypto wallets. Given that Coinbase has KYC data on its 20 million customers, Coinbase could leverage its treasure trove of identity data for dApps.
Coinbase最近收购了一家名为Distributed Systems的初创公司，该公司正在为dApp开发一种称为[Clear Protocol]的去中心化身份标准[45]。在这样做的过程中，Coinbase可能会为加密构建一个“Facebook Connect”，以便用户更容易注册并连接他们的加密钱包。考虑到Coinbase拥有其2000万客户的KYC数据，Coinbase可以利用其针对dApp的大量身份数据。

![][47]

Web 3 identity could eventually look something like this.
Web 3身份最终可能看起来像这样。

It is also [speculated][48] that Facebook's blockchain team is building an identity and single sign-on platform for dApps given how much personal information about us Facebook owns. This became apparent during the #DeleteFacebook campaign when users downloaded .zip files of all their personal data and were shocked by how much Facebook knew about them.
[推测][48] Facebook的区块链团队正在为dApp建立一个身份和单点登录平台，因为Facebook拥有多少个人信息。在#DeleteFacebook广告系列中，当用户下载所有个人数据的.zip文件时，这一点就变得明显，并且对Facebook对它们的了解程度感到震惊。

[Telegram Passport][49] is another unified authorization method for services that require personal identification. Using Telegram Passport, you can upload all your documents once and instantly share your data with services that require real-world ID.
[Telegram Passport][49]是另一种需要个人识别的服务的统一授权方法。使用Telegram Passport，您可以上传所有文档，并立即与需要真实身份ID的服务共享您的数据。

### So what?
## #

Although anonymity and pseudonymity are frequently cited as use cases for cryptocurrencies, identity solutions are still strongly needed for many new crypto native behaviors like on-chain governance and token curated registries. In particular, voting systems, such as [quadratic voting][50], rely heavily on verifiable, separate human identities because an individual could multiply his or her effective influence dramatically by misrepresenting him or herself as multiple individuals. Likewise, identity continues to be the bottleneck for these systems to be resistant to Sybil-like attacks and work effectively at scale.
虽然匿名和假名经常被引用作数字货币的使用案例，但许多新的加密本机行为（如链式治理和通证策划注册表）仍然强烈需要身份解决方案。特别是，诸如[二次投票][50]之类的投票系统在很大程度上依赖于可验证的，独立的人类身份，因为个人可以通过歪曲他或她自己作为多个人来大大增加他或她的有效影响力。同样，身份仍然是这些系统抵抗类似Sybil攻击并在规模上有效工作的瓶颈。

In my view, a layered identity architecture that combines the best **namespace** product and the best **attestation** product is the most promising approach. It'll be interesting to see what identity solution the crypto community converges on moving forward.
在我看来，结合最佳**命名空间**产品和最佳**证明**产品的分层身份架构是最有前途的方法。看看加密社区在前进中收敛的身份解决方案会很有趣。

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


