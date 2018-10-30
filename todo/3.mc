https://hackernoon.com/blockchain-2018-myths-vs-reality-325d0ce72c09

# Blockchain 2018: Myths vs Reality

![][1]![][2]![][2]

2018–10–17 by Dominic Perini

After a successful year of involvement in a variety of blockchain projects, I felt it healthy to take a step back and observe the emerging trends in this nascent (but still multi-billion dollar) industry and question whether some of the directions taken so far are sensible or whether any corrections are necessary. I will provide a 'snapshot' of the state of advancement of the blockchain technology, describing the strengths and weaknesses of the solutions that have emerged so far, without proposing innovations at this stage (those ideas will form the subject of future blog posts). If you are interested to hear what I and Erlang Solutions, where I work as Scalability Architect and Technical Lead have to say about blockchain, let me take you through it:

### The context

I do not propose in this blogpost to get into the details of the blockchain data structure itself, nor will I discuss what is the best Merkle tree solution to adopt. I will also avoid hot topics such as 'Transactions Per Second' (TPS) and the mechanisms for achieving substantial transaction volumes, which is de facto the ultimate benchmark widely adopted as a measurement of how competitive a solution is against the major players in the market; Bitcoin and Ethereum.

What I would like to examine instead is the state of maturity of the technology, and its alignment with the core principles that underpin the distributed ledger ecosystem. I hope that presenting a clear picture of these principles and how they are evolving may be helpful.

### The principles

As the primary drive for innovation emerges from public, open source blockchains, this will be the one on which we will focus our attention.

The blockchain technology mainly aims at embracing the following high level principles:

1. Immutability of the history
2. Decentralisation of the control
3. 'Workable' consensus mechanism
4. Distribution and resilience
5. Transactional automation (including 'smart contracts')
6. Transparency and Trust
7. Link to the external world

Let us look at them one by one:

### 1\. Immutability of the history

In an ideal world it would be desirable to preserve an accurate historical trace of events, and make sure this trace does not deteriorate over time, whether through natural events, or by human error or by the intervention of fraudulent actors. The artefacts produced in the analogue world face alterations over time, although there is often the intent to make sure they can withstand forces that threaten to alter and eventually destroy them. In the digital world the quantized / binary nature of the stored information provides the possibility of continuous corrections to prevent any deterioration that might occur over time.

Writing an immutable blockchain aims to retain a digital history that cannot be altered over time and on top of which one can verify that a trace of an event, known as a transaction, is recorded in it. This is particularly attractive when it comes to assessing the ownership or the authenticity of an asset or to validate one or more transactions.

We should note that, on top of the inherent immutability of a well-designed and implemented blockchain, hashing algorithms also provide a means to encode the information that gets written in the history so that the capacity to verify a trace/transaction can only be performed by actors possessing sufficient data to compute the one-way[1][3] cascaded encoding/encryption. This is typically implemented on top of Merkle trees where hashes of concatenated hashes are computed.

![][4]![][5]![][5]

Legitimate questions can be raised about the guarantees for indefinitely storing an immutable data structure:

1. If this is an indefinitely growing history, where can it be stored once it grows beyond capacity of the ledgers?
2. As the history size grows (and/or the computing power needed to validate further transactions increases) this reduces the number of potential participants in the ecosystem, leading to a de facto loss of decentralisation. At what point does this concentration of 'power' create concerns?
3. How does the verification performance deteriorate as the history grows?
4. How does it deteriorate when a lot of data gets written on it concurrently by the users?
5. How long is the segment of data that you replicate on each ledger node?
6. How much network traffic would such replication generate?
7. How much history is needed to be able to compute a new transaction?
8. What compromises need to be made on linearisation of the history, replication of the information, capacity to recover from anomalies and TPS throughput?

Further to the above questions we would also like to understand how many replicas converging to a specific history (i.e. consensus) would be needed for it to carry on existing, and in particular:

1. Can a fragmented network carry on writing to their known history[2][6] ?
2. Is an approach designed to 'heal' any discrepancies in the immutable history of transactions by rewarding the longest fork, fair and efficient?
3. Are the deterrents strong enough to prevent a group of ledgers forming their own fork[3][7] that eventually reaches a wider adoption?

Furthermore, a new requirement to comply with the General Data Protection Regulations (GDPR) in Europe and 'the right to be forgotten' introduced new challenges to the perspective of keeping permanent and immutable traces indefinitely. This is important because fines for breach of GDPR are potentially very significant. The solutions introduced so far effectively aim at anonymising the information that enters the immutable on-chain storage process, while sensitive information is stored separately in support databases where this information can be deleted if required. None of these approaches has yet been tested by the courts, nor has a definition of what the GDPR 'right to be forgotten' means in practice.

The challenging aspect here is to decide upfront what is considered sensitive and what can safely be placed on the immutable history. A wrong upfront choice can backfire at a later stage in the event that any involved actor manages to extract or trace sensitive information through the immutable history.

Immutability represents one of the fundamental principles that motivates the research into blockchain technology, both private and public. The solutions explored so far have managed to provide a satisfactory response to the market needs via the introduction of history linearisation techniques, one-way hashing encryptions, merkle trees and off-chain storage, although the linearity of the immutable history[4][8]comes at a cost (notably transaction volume).

### 2\. Decentralisation of the control

During the aftermath of the 2008 global financial crisis (one interpretation of which is that it highlighted the global financial disasters that could occur from over centralisation and the misalignment of economic incentives) there arose a deep mistrust of 'traditional', centralised institutions, political and commercial. One reaction against such centralisation was the exploration of various decentralised mechanisms which could replace those traditional, centralised structures. The proposition that individuals operating in a social context ideally would like to enjoy the freedom to be independent from a central authority gained in popularity. Self determination, democratic fairness and heterogeneity as a form of wealth are among the dominant values broadly recognised in Western (and, increasingly, non-Western) society. These values added weight to the movement that introducing decentralisation in a system is positive. I have rarely seen this very idea being challenged at all (in the same way one rarely hears criticism of the proposition that 'information wants to be free'), although in some circumstances the unwanted consequences of using this approach can clearly be seen.

For instance, one might argue that it is only due to our habits that we normally resolve anomalies in a system by contacting a central authority, which according to our implicit or explicit contractual terms, bears the responsibility for what happens to the system. Therefore, in the event of a damage incurred through a miscarried transaction that might be caused by a system failure or a fraudulent actor, we are typically inclined to contact the central bearer of the responsibility to intervene and try to resolve the damage sustained. Human history is characterised by the evolution of hierarchical power structures, even in the most 'democratic' of societies, and these hierarchies naturally create centralisation, independent of the dominant political structure in any particular society. This characteristic continues into the early 21st century.

With decentralisation, however, there is no such central authority that could resolve those issues for us. Traditional, centralised systems have well developed anti-fraud and asset recovery mechanisms which people have become used to. Using new, decentralised technology places a far greater responsibility on the user if they are to receive all of the benefits of the technology, forcing them to take additional precautions when it comes to handling and storing their digital assets. In particular they need to keep the access to their digital wallets protected and make sure they don't lose it. Similarly when performing transactions, such as giving away a digital asset to a friend or a relative, they have to make sure it is sent to the right address/wallet, otherwise it will be effectively lost or mistakenly handed over to someone else.

Also, there's no point having an ultra-secure blockchain if one then hands over one's wallet private key to an intermediary (more 'centralisation' again) whose security is lax: it's like having the most secure safe in the world then writing the combination on a whiteboard in the same room.

Is the increased level of personal responsibility that goes with the proper implementation of a secure blockchain a price that users are willing to pay; or will they trade off some security in exchange for ease of use (and, by definition, more centralisation)? It's too early to see how this might pan out. If people are willing to make compromises here, what other compromises re, say, security or centralisation would they be prepared to accept in exchange for lower cost/ease of use? We don't know, as there's no secure blockchain ecosystem yet operating at scale.

Another threat to the broad endorsement and success of the decentralisation principle is posed by governmental regulatory/legal pressures on digital assets and ecosystems. This is to ensure that individuals do not use the blockchain for tax evasion and that the ownership of their digital assets is somehow protected. However any attempt to regulate this market from a central point is undermining the effort to promote the adoption of a decentralised form of authority.

### 3\. Consensus

The consistent push towards decentralised forms of control and responsibility has brought to light the fundamental requirement to validate transactions without the need for (or intervention of) a central authority; this is known as the 'consensus' problem and a number of approaches have grown out of the blockchain industry, some competing and some complementary.

There has also been a significant focus around the concept of governance within a blockchain ecosystem. This concerns the need to regulate the rates at which new blocks are added to the chain and the associated rewards for miners (in the case of blockchains using proof of work (POW) consensus methodologies). More generally, it is important to create incentives and deterrent mechanisms whereby interested actors contribute positively to the healthy continuation of the chain growth.

Besides serving as economic deterrent against denial of service and spam attacks, POW approaches are amongst the first attempts to automatically work out, via the use of computational power, which ledgers/actors have the authority to create/mine new blocks[5][9]. Other similar approaches (proof of space, proof of bandwidth etc) followed, however, they all suffered from exposure to deviations from the intended fair distribution of control. Wealthy participants can in fact exploit these approaches to gain an advantage via purchasing high performance (CPU / memory / network bandwidth) dedicated hardware in large quantity and operating it in jurisdictions where electricity is relatively cheap. This results in overtaking the competition to obtain the reward, and the authority to mine new blocks, which has the inherent effect of centralising the control. Also the huge energy consumption that comes with the inefficient nature of the competitive race to mine new blocks in POW consensus mechanisms has raised concerns about its environmental impact and economic sustainability. The most recent report on the [energy usage of Bitcoin][10] can be seen here on digiconomist.

Proof of Stake (POS) and Proof of Importance (POI) are among the ideas introduced to drive consensus via the use of more social parameters, rather than computing resources. These two approaches link the authority to the accumulated digital asset/currency wealth or the measured productivity of the involved participants. Implementing POS and POI mechanisms, whilst guarding against the concentration of power/wealth, poses not insubstantial challenges for their architects and developers.

More recently, semi-automatic approaches, driven by a human-curated group of ledgers, are putting in place solutions to overcome the limitations and arguable fairness of the above strategies. The Delegated Proof of Stake (DPOS) and Proof of Authority (POA) methods promise higher throughput and lower energy consumptions, while the human element can ensure a more adaptive and flexible response to potential deviations caused by malicious actors attempting to exploit a vulnerability of the system.

Whether these solutions actually manage to fulfill the inherent requirements, set by the principle of control distribution, is debatable. Similarly, when it comes to the idea of bringing in another layer of human driven consensus for the curation, it is clear that we are abandoning a degree of automation. Valuing trust and reputation in the way authority gets exercised on the governance of a particular blockchain appears to bring back a form of centralised control, which clearly goes against the original intention and the blockchain ethos.

This appears to be one of the areas where, despite the initial enthusiasm, there is not yet a clear solution that drives consensus in a fair, sustainable and automated manner. Moving forward I expect this to be the main research focus for the players in the industry, as current solutions leave many observers unimpressed. There will likely emerge a number of differing approaches, each suitable for particular classes of use case.

### 4\. Distribution and resilience

Apart from decentralising the authority, control and governance, blockchain solutions typically embrace a distributed Peer to Peer (P2P) design paradigm. This preference is motivated by the inherent resilience and flexibility that these types of networks have introduced and demonstrated, particularly in the context of file and data sharing ([see a brief p2p history here][11]). The diagram below is frequently used to explain the difference among three network topologies: centralised, decentralised and distributed.

![][12]![][13]![][14]

A centralised network, typical of mainframes and centralised services[6][15], is clearly exposed to a 'single point of failure' vulnerability as the operations are always routed towards a central node. In the event that the central node breaks down or is congested, all the other nodes will be affected by disruptions.

Decentralised and distributed networks attempt to reduce the detrimental effects that issues occurring on a node might trigger on other nodes. In a decentralised network, the failure of a node can still affect several neighbouring nodes that rely on it to carry out their operations. In a distributed network the idea is that failure of a single node should not impact significantly any other node. In fact, even when one preferential/optimal route in the network becomes congested or breaks down entirely, a message can reach the destination via an alternative route. This greatly increases the chances to keep a service available in the event of failure or malicious attacks such as a denial of service (DOS) attack.

Blockchain networks where a distributed topology is combined with a high redundancy of ledgers backing a history have occasionally been declared "unhackable" by enthusiasts or, as some more prudent debaters say, "difficult to hack". There is truth in this, especially when it comes to very large networks such as Bitcoin (see an additional explanation here). In such a highly distributed network, the resources needed to generate a significant disruption are very high, which not only delivers on the resilience requirement, but also works as a deterrent against malicious attacks (principally because the cost of conducting a successful malicious attack becomes prohibitive).

Although a distributed topology can provide an effective response to failures or traffic spikes, we need to be aware that delivering resilience against prolonged over-capacity demands or malicious attacks requires adequate adapting mechanisms. While the Bitcoin network is well positioned, as it currently benefits from a high capacity condition (due to the historical high incentive to purchase hardware by third party miners[7][16] ), this is not the case for other emerging networks as they grow in popularity. This is where novel instruments, capable of delivering preemptive adaptation combined with back pressure throttling applied to the P2P level, can be of great value.

Distributed systems are not new and, whilst they provide highly robust solutions to many enterprises and governmental problems, they are subject to the laws of physics and require their architects to consider the trade-offs that need to be made in their design and implementation (e.g. consistency vs availability). This remains the case for blockchain systems.

### 5\. Automation

In order to sustain a coherent, fair and consistent blockchain and its surrounding ecosystem a high degree of automation is required. Existing areas with a high demand of automation include those common to most distributed systems. For instance; deployment, elastic topologies, monitoring, recovery from anomalies, testing, continuous integration, and continuous delivery. In the context of blockchains, these represent well-established IT engineering practices. Additionally, there is a creative R&D effort to automate the interactions required to handle assets, computational resources and users across a range of new problem spaces (e.g. logistics, digital asset creation and trading etc).

The trend of social interactions has seen a significant shift towards scripting for transactional operations. This is where 'Smart Contracts' and constrained virtual machines (VM) interpreters have emerged — an effort pioneered by the Ethereum project.

The possibility to define through scripting how to operate an asset exchange, under what conditions and actioned by which triggers, has attracted many blockchain enthusiasts. Some of the most common applications of Smart Contracts involve lotteries, trade of digital assets and derivative trading. While there is clearly an exciting potential unleashed by the introduction of Smart Contracts, it is also true that it is still an area with a high entry barrier. Only skilled developers that are willing to invest time in learning Domain Specific Languages (DSL)[8][17]have access to the actual creation and modification of these contracts.

Besides, developers can create contracts that contain errors or are incapable to operate under unexpected conditions. This can happen, for instance, when the implementation of a contract is commissioned to a developer that does not have sufficient domain knowledge. Although the industry is taking steps in the right direction, there is still a long way to go in order to automatically adapt to unforeseen conditions and create effective Smart Contracts in non-trivial use cases. The challenge is to respond to safety and security concerns when Smart Contracts are applied to edge case scenarios that deviate from the 'happy path'. If badly-designed contracts cannot properly rollback/undo a miscarried transaction, their execution might lead to assets being lost or erroneously handed over to unwanted receivers. A number of organisations are conducting R&D effort to respond to these known issues and introduce VMs operating under more restrictive constraints to deliver a higher level of safety and security. However, from a conceptual perspective, this is a restriction that reduces the flexibility to implement specific needs.

Another area in high need for automation is governance. Any blockchain ecosystem of users and computing resources requires periodic configurations of the parameters to carry on operating coherently and consensually. This results in a complex exercise of tuning for incentives and deterrents to guarantee the fulfilment of ambitious collaborative and decentralised goals. The newly emerging field of 'blockchain economics' (combining economics; game theory; social science and other disciplines) remains in its infancy.

Clearly the removal of a central ruling authority produces a vacuum that needs to be filled by an adequate decision making body, which is typically supplied with an automation that maintains a combination of static and dynamic configuration settings. Those consensus solutions referred to earlier which use computational resources or social stackable assets to assign the authority, not only to produce blocks but also to steer the variable part of governance[9][18], have originally succeeded to fill the decision making gap in a fair and automated way. Successively, the exploitation of flaws in the static element of governance has hindered the success of these models. This has contributed to the rise of popularity of curated approaches such as POA or DPOS, which not only bring back a centralised control, but also reduce the automation of governance.

I expect this to be one of the major area where blockchain has to evolve in order to succeed in getting a widespread market adoption.

### 6\. Transparency and Trust

In order to produce the desired audience engagement for a blockchain and eventually determine its mass adoption and success, its consensus and governance mechanisms need to operate transparently. Users need to know who has access to what data, so that they can decide what can be stored and possibly shared on-chain. These are the contractual terms by which users agree to share their data. As previously discussed users might require to exercise the right for their data to be deleted, which typically is a feature delivered via auxiliary, 'off-chain' databases. In contrast, only hashed information, effectively devoid of its meaning, is preserved permanently on-chain.

Given the immutable nature of the chain history, it is important to decide upfront what data should be permanently written on-chain and what gets written off-chain. The users should be made aware of what data gets stored on-chain and with whom it could potentially be shared. Changing access to on-chain data or deleting it goes against the fundamentals of the immutability and therefore is almost impossible. Getting that decision wrong at the outset can significantly affect the cost and usability (and therefore likely adoption) of the blockchain in question.

Besides transparency, trust is another critical feature that users legitimately seek. This is one of the reasons why blockchain manages to attract customers who have developed distrust in traditional centrally-ruled networks (most notably banks and rating organisations after the mishandling of the subprime mortgages that led to the 2008 financial crisis). It is vital, therefore, that central operating bodies in the shape of curated POA/DPOS consensus act in a transparent and trustworthy manner, so that decision makers are not perceived as an elite that could pursue their own goals, instead of operating in the interest of the collective.

Another example of trust towards the people involved becomes relevant when the blockchain information is linked to the real world. As it will be clarified in the context of the next principle (see heading 7), this link involves people and technology dedicated to guarantee the accurate preservation of these links against environmental deterioration or fraudulent misuse.

Trust also has to go beyond the scope of the people involved as systems need to be trusted as well. Every static element, such as an encryption algorithm, the dependency on a library, or an fixed configuration, is potentially exposed to vulnerabilities. Concerns here are understandable given the increasing amount of well-publicised hacks and security breaches that have occurred over the last couple of years. In the cryptocurrency space, these attacks have frequently resulted in the perpetrators successfully walking away with large sums of money, without leaving traces that could be realistically used to track down their identity, or rollback to a previous healthy state. In the non-crypto space they have resulted in widespread hacks of data and the disabling of corporate and civil IT systems.

In some circumstances digital wallets were targeted, as the users might not have stored the access keys in a sufficiently secure place[10][19], and in other circumstances the blockchain itself. This is the case of the ['DAO attack' on Ethereum][20] or the so known ['51% attacks' on Bitcoin][21].

Blockchain enthusiasts tend to forget that immutability is only preserved by having a sufficient number of ledgers backing a history. Theoretically in the event that a genuine history gets overruled by a large group ledgers interested in backing a different history, we could fall in a lack of consensus situation, which leads to a fork of the chain. If supported by a large enough group of ledgers[11][22], the most popular fork could eclipse the genuine minor fork making it effectively irrelevant. This is not a reason to be excessively alarmed; it should just be a consideration to be aware of when we put our trust in a system. The bitcoin network, for instance, is currently backed by such a vast amount of ledgers that makes it impractical for anyone to hack.

Similar considerations need to be made for state-of-the-art encryption, which has a deterrent against brute force attacks based on the current cost and availability of computational power. Should new technologies such as quantum computing emerge, it is expected that even that encryption would need an upgrade.

### 7\. Link to the external world

The attractive features that blockchain has brought to the internet market would be limited to handling digital assets, unless there was a way to link informations to the real world. For some reason this brings back to my mind the popular movie "The Matrix" and the philosophical question from René Descartes about what is real and if there is another reality behind the perceived one. Without indulging excessively in arguable analogies, it is safe to say that there would be less interest if we were to accept that a blockchain can only operate under the restrictive boundaries of the digital world, without connecting to the analog real world in which we live.

Technologies used to overcome these limitations include cyber-physical devices such as sensors for input and robotic activators for output, and in most circumstances, people and organisations. As we read through most blockchain whitepapers we might occasionally come across the notion of the oracle, which in short, is a way to name an input coming from a trusted external source that could potentially trigger/activate a sequence of transactions in a Smart Contract or which can otherwise be used to validate some information that cannot be validated within the blockchain itself.

Under the Transparency and Trust section we discussed how these peripheral areas are as susceptible to errors and malicious interference as the core blockchain and Smart Contracts automations. For instance, suppose we are tracking the history of a precious collectible item, unless we have the capacity to identify reliably the physical object in question we risk that its history is lost or attributed to another object.

A remarkable example of object identification approach via physical characteristics is the one used by Everledger to track diamonds. As briefly explained, [40 metadata information][23] can be extracted from the object, including the cut, the clarity, the colour, etc. Given the quasi-immutable nature of the objects in question, this has proved a particularly successful use case. It is more challenging instead to accurately identify objects that degrade over time (e.g. fine art). In this case typically trusted people are involved, or a combination of people and sensor metadata. Relying on expert actors to provide external validation relies upon a properly aligned set of incentives. 'Traditional' industries have a long history of dealing with these issues and well-developed mechanisms for dealing with them: blockchain-based solutions are exploring many ways in which they can interface (and adapt) these existing mechanisms.

On a different perspective even wealth itself only makes sense if it can be exercised in the 'real world'. This is as valid for blockchain as well as traditional centrally-controlled systems, and in fact the idea of virtualising wealth is not new to us as we shifted from trading time and goods directly, to stacking wealth into account deposits. What's new in this respect is the introduction of alternate currencies known as cryptocurrencies.

Bitcoin and Ethereum, the two dominant projects (in September 2018) in the blockchain space are by many investors seen as an opportunity to diversify a portfolio or speculate on the value of their respective cryptocurrency. The same applies to a wide range of other cryptocurrencies with the exception of fiat pegged currencies, most notably Tether, where the value is effectively bound to the US dollar. Conversions from one cryptocurrency to another and to/from fiat currencies is typically operated by exchanges on behalf of an investor. These are again peripheral services that serve as link to the external world.

From a blockchain perspective, some argue that the risk control a cryptocurrency investor demands — so that there is the possibility to step back and convert back to fiat currencies — is the wrong mindset. Evangelising trust towards the cryptocurrency diversification however, understandably, requires an implementation period during which investors legitimately might want to exercise the option to pull-out.

Besides oracles and cyber-physical links, an interest is emerging with linking Smart Contracts together to deliver a comprehensive solution. Contracts could indeed operate in a cross-chain scenario to offer interoperability among a variety of digital assets and protocols. Although attempts to combine different protocols and approaches have emerged (e.g. see [the EEA][24] and the [Accord Project][25]), this is still an area where further R&D is necessary in order to provide enough instruments and guarantees to developers and entrepreneurs. The challenge is to deliver cross-chain functionalities without the support of a central governing agency/body.

### Conclusion

The financial boost that the blockchain market has benefited from, through the large fundraise operations conducted through the 2017–2018 initial coin offerings (ICO), has given the opportunity to conduct a substantial amount of R&D studies aimed at finding solutions to the challenges described in this blogpost. Although step changes have been introduced by the work of visionary individuals with mathematical backgrounds such as S. Nakamoto and V. Buterin, it seems clear that contributions need to come from a variety of expertises to ensure a successful development of the technology and the surrounding ecosystem. It is an exercise that involves evangelisation, social psychology, automation, regulatory compliance and ethical direction.

The challenges the market is facing can be interpreted as an opportunity for ambitious entrepreneurs to step in and resolve the pending fundamental issues of consensus, governance, automation and link to the real world. It is important in this sense to ensure that the people you work with have the competence, the technology and a good understanding of the issues to be resolved, in order to successfully drive this research forward.

As discussed in the introduction, this blog post only focuses on assessing the state of advancement of the technology in response to the motivating principles, and analyses known issues without proposing solutions. That said, I and the people I work with, are actively working on solutions that will be presented and discussed in a separate forum. If you are interested to learn more, stay tuned for the next chapter :-) ..

Footnotes

1\. One-way in this context means that you cannot retrieve the original information from a hash value which also frequently involves the destruction of an information, potentially leading to rare collisions (read more on [perfect hash function][26]).[↩][27]

2\. In the event of a split brain, a typical consensus policy is to allow fragmented networks to carry on writing blocks on their known chain and once the connection is re-established the longest chain part (also known as fork) is preferred while the shortest is deleted. Note this could lead to a temporary double spending scenario, a fundamental 'no-go' in the blockchain (and 'traditional') world.[↩][28]

3\. Note that in this case the very concept of ownership of an asset can be threatened. E.g: if i remain the only retainer of a history that is valid, while the rest of the world has moved on in disagreement with it. My valid history gets effectively invalidated. History is indeed written by the victors![↩][29]

4\. Blockchain stores its blocks in a linear form although there have been attempts to introduce graph fork tolerant approaches such as the [IOTA tangle][30].[↩][31]

5\. Mining is the process of adding a block of transactions to the chain (see here for instructions and here for more context).[↩][32]

6\. Historically a central server was the only economically viable option given the high cost of performant hardware and cheaper cost of terminals.[↩][33]

7\. Bitcoin's POW rewards a successful miner with a prize in bitcoin cryptocurrency. This is no longer an incentive in some countries. See [here][34] a report released in May about the cost to mine 1 bitcoin per country.[↩][35]

8\. For example Solidity is a popular DSL [inspired by JavaScript][36].[↩][37]

9\. Once discovered and understood, malicious users can take advantage of any static / immutable configuration. For instance, rich/resourceful individuals could gain an advantage via the purchase of a vast amount of computational resources to bend the POW fairness.[↩][38]

10\. A common guideline is to split the access key into parts and store each in a different cryptovault.[↩][39]

11\. The Bitcoin network estimated computing power at the time of writing (September 2018) amounts to [80704290 petaflops][40] while the world's most powerful supercomputer reaches[200 petaflops][41]. This obviously only allows to infer by analogy the magnitude of the amount of ledgers on the network. [↩][42]

Original post published on Erlang Solutions: 

![][43]![][13]![][44]

[1]: https://cdn-images-1.medium.com/freeze/max/75/1*TJ9ixk6KcfNw2Rxj2Jf4mg.jpeg?q=20
[2]: https://cdn-images-1.medium.com/max/2000/1*TJ9ixk6KcfNw2Rxj2Jf4mg.jpeg
[3]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn1
[4]: https://cdn-images-1.medium.com/freeze/max/75/0*-lcSLC6dJunB4wap.png?q=20
[5]: https://cdn-images-1.medium.com/max/2000/0*-lcSLC6dJunB4wap.png
[6]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn2
[7]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn3
[8]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn4
[9]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn5
[10]: https://digiconomist.net/bitcoin-energy-consumption
[11]: https://medium.com/paratii/a-brief-history-of-p2p-content-distribution-in-10-major-steps-6d6733d25122
[12]: https://cdn-images-1.medium.com/freeze/max/75/0*Cr33taJSIj6aQ4b9.jpg?q=20
[13]: https://hackernoon.com/undefined
[14]: https://cdn-images-1.medium.com/max/2000/0*Cr33taJSIj6aQ4b9.jpg
[15]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn6
[16]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn7
[17]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn8
[18]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn9
[19]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn10
[20]: https://www.coindesk.com/understanding-dao-hack-journalists/
[21]: https://www.investopedia.com/terms/1/51-attack.asp
[22]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#fn11
[23]: https://techcrunch.com/2015/06/29/everledger/
[24]: https://entethalliance.org/
[25]: https://www.accordproject.org/
[26]: https://en.wikipedia.org/wiki/Perfect_hash_function
[27]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref1 "Jump back to footnote 1 in the text."
[28]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref2 "Jump back to footnote 2 in the text."
[29]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref3 "Jump back to footnote 3 in the text."
[30]: https://www.iota.org/
[31]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref4 "Jump back to footnote 4 in the text."
[32]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref5 "Jump back to footnote 5 in the text."
[33]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref6 "Jump back to footnote 6 in the text."
[34]: https://www.marketwatch.com/story/heres-how-much-it-costs-to-mine-a-single-bitcoin-in-your-country-2018-03-06
[35]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref7 "Jump back to footnote 7 in the text."
[36]: https://solidity.readthedocs.io/en/latest/
[37]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref8 "Jump back to footnote 8 in the text."
[38]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref9 "Jump back to footnote 9 in the text."
[39]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref10 "Jump back to footnote 10 in the text."
[40]: https://bitcoincharts.com/bitcoin/
[41]: https://www.engadget.com/2018/06/08/summit-supercomputer-research-ai-oak-ridge/
[42]: https://www.erlang-solutions.com/blog/blockchain-2018-myths-vs-reality.html#ref11 "Jump back to footnote 11 in the text."
[43]: https://cdn-images-1.medium.com/freeze/max/75/1*3H8nO5vRvdoYGlDqkZAlbg@2x.png?q=20
[44]: https://cdn-images-1.medium.com/max/2000/1*3H8nO5vRvdoYGlDqkZAlbg@2x.png

  