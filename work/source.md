[Source](https://medium.com/all-things-venture-capital/intro-to-vc-how-blockchain-protocols-work-750e9371b053 "Permalink to How Blockchain Protocols Work – All Things Venture Capital – Medium")

# How Blockchain Protocols Work – All Things Venture Capital – Medium

This post kicks off part two of my three part series on blockchain technology. In the first part of the series I discussed the historical context of the blockchain, providing a history of both [the modern internet][1] and [blockchain networks][2].

This second part of the series will focus on how the technology works, including one post on how protocols work and another on ICOs, DAPPs and DAOs. The third part of the series will then highlight a few of the most attractive areas for investment in the space. Also, if you find these posts interesting and want to see more, [follow my publication on twitter][3]! Alright, enough of the overview, let's dive in!

![][4]

So why are we starting with protocols? We're starting with protocols because they are the fundamental breakthrough of blockchain technology. When Satoshi Nakamoto published his paper in 2008, the true technological innovation of bitcoin was the blockchain protocol that powered the bitcoin network. However, before we get into the nitty-gritty of blockchain protocols, I think it's helpful to start with the protocols that power the modern internet (blockchain protocols wouldn't be possible without them). If you have a solid understanding of these, feel free to skip ahead!

### **Internet Protocols**

The first question to ask is: what is a protocol? A protocol is [the method by which data is sent from one computer to another ][5]over the internet. The three protocols that power the modern internet are the HyperText Transfer Protocol ("HTTP"), Transmission Control Protocol ("TCP"), and Internet Protocol ("IP"). The TCP and IP are the protocols that help to route information across the network and HTTP is an application-level protocol for web browsers. If you're a little bit confused by what these terms mean, that's totally understandable. Let's break it down.

![][6]

Source: <https://www.researchgate.net/> | Uploaded by Stan Mierzwa

**TCP / IP**

The Transmission Control Protocol and Internet Protocol make up what is known as the "internet protocol stack". This is due to the fact that they are the protocols that actually route information across a network. The graphic to the left provides a good visual of how this works. The Transmission Control Protocol takes information from your applications, breaks that information down into smaller data packets, adds headers so that the information can be repackaged in the recipient's computer, and then sends those data packets to the Internet Protocol. The IP then takes those data packets, adds IP headers (which includes the IP address of both the sender and the receiver) and routes that information across the internet. Once the data packets arrive at the recipient's computer, the recipient's IP passes them along to the TCP, which repackages them and sends them to the appropriate application.

**HTTP**

Like I mentioned above, the HyperText Transfer Protocol is an application-level protocol. That means it is a protocol that sends data to the TCP / IP protocol stack (which then routes it across the network). HTTP is the protocol that allows web browsers to communicate with web servers. Let's look at an example. When you type a URL into Google Chrome, the web browser connects to a Domain Name Service and identifies what IP address the website is being hosted at. After identifying the website, the browser sends an HTTP request to the server (via the TCP / IP protocol stack). If the page exists, then the web server sends the content back to the browser and the browser displays it on the requester's screen. If the page does not exist, then the server sends back an HTTP 404 error saying that the page does not exist (I'm guessing we've all experienced this annoying error before). While HTTP is one type of application protocol, it certainly isn't the only one. There are a number of protocols that we use on a daily basis, including the Simple Mail Transfer Protocol, which enables email communication.

Alright hopefully we didn't lose you there! I think it's helpful to start with the current internet protocol stack because blockchain protocols are actually built on top of TCP / IP, similar to application protocols like HTTP. If you're looking for a more detailed overview of internet protocols, check out [this awesome white paper ][7]written by Rus Shuler. Now, let's move on and dig into into how blockchain protocols work.

### **Blockchain Protocols**

As we discussed, protocols are a method for sending information across a network. Blockchain protocols approach this a little differently than the traditional internet protocols. Although not every blockchain protocol is the same, they share a few defining characteristics. Those characteristics include (i) distributed ledgers, (ii) encryption, (iii) consensus algorithms, and (iv) integrated blocks of data. Let's briefly discuss how each of these elements work.

![][8]

**Distributed Ledgers**

Distributed ledgers are probably the best place to start. So what is a distributed ledger? A distributed ledger is a decentralized database that is shared across several locations or network participants. Said differently, a distributed ledger is a peer-to-peer network where every piece of information / transaction is shared across the network and stored by each network participant (or "node").

Distributed ledgers directly contrast the client-server architecture that powers the modern internet. [A client-server architecture][9] is a model where information is stored on central servers and may be requested by users (known as "clients"). For example, institutions like Facebook, Google and Amazon have large, centralized servers where they store their users' transaction histories, personal information, etc. Clients (aka everyday users like you and me) tap into those servers through HTTP requests, which we discussed above. Peer-to-peer networks differ from the client-server model because they don't have an intermediary that acts as a central point of storage. Rather, each connected node acts as both a client _and _a server.

So why would we do this? What's the benefit? The benefit of using a distributed ledger rather than a centralized databases is that there is [no single point of failure, which decreases the odds that a network is hacked / information is lost][10]. In addition to that, there is not a single entity that owns the data stored on the network. This means that nobody is monetizing that data or using it in a way that the user doesn't approve of. As a result, users have control over their data and can decide what they want to do with it. In the future, network participants may actually be able to sell their data if they want to. For example, if you store your search history on a blockchain version of Google, then you may be able to sell that search history to advertisers. Advertisers would pay you for the ability to send you targeted adds rather than an intermediary like Google. However, I'm getting ahead of myself as this has yet to become a reality.

Okay, one more point on distributed ledgers. I'm guessing you're thinking, THIS IS INSANE. It's a total invasion of privacy. Why would I store my personal information on a bunch of strangers' computers? Luckily, blockchain protocols have a solution for this: encryption. Blockchain protocols incorporate advanced encryption methods to conceal both the identities of network participants and the content of transactions, which is what we're going to cover in the next section.

![][11]

**Encryption**

Like I mentioned above, transactions executed on the blockchain are secured through advanced encryption algorithms. This is the key reason why blockchain networks are considered to be more secure than traditional internet protocols. So how does this encryption work? Unfortunately, it's a little bit complicated but I'm going to do my best to simplify it here. Encryption on the blockchain works through three core features: hashing, public / private key authentication, and digital signatures. Before we dive in, keep in mind that these encryption methods were not invented as a part of blockchain technology. Rather, blockchain incorporated existing encryption methods into its protocol.

_Hashing:_

Let's start with the first core feature: hashing. Broadly speaking, h[ashing is a mathematical function][12] that takes an input of any length (this could be a letter, a sentence, or an entire book), and uses a formula to create a seemingly random output of a fixed number of letters and numbers. For example, if you [use the SHA 256][13] hashing function (which is used in Bitcoin's protocol) to create a hash of the line "This is a hash function!", you get the following output:

2c886077bbc252137f1d78d2915d96befe71bca1caf3ff9cc7b6dcb47b3c4248

What's interesting about hash functions is that a small change in the input will create a completely different hash. For instance, if you remove the exclamation point and take the hash of "This is a hash function", the output would change to:

4ca94a9dbbe380459790d3ba464a1f916f9a30c1f2e01e023d306649236f651e

While there are a number of different hash functions (including SHA 1, SHA 256, MD 5, Keccak-256, etc.), they all adhere to a few important rules.

1. The same input must always create the same output.
2. Two different inputs cannot produce the same output.
3. It must be impossible to determine the input given the output.
4. A slight change to the input must completely change the output.

So why does this matter? [Why are hash functions useful][14]? Hash functions have two characteristics that make them particularly useful for authentication. First, they can take an almost infinite amount of content and reduce it to a short string of characters. Second, as the rules above allude to, hash functions are unique one way functions. Therefore, by taking the hash of a file, you can generate a fixed string of characters that is unique to that file, which essentially functions as a _digital fingerprint _of the file.

As a result, it's much easier to verify that two files are exactly the same. Rather than check whether every single character of a document is exactly the same as the original, you can create a hash of that document and compare that to the hash of the original. If even a tiny alteration has been made to the document, the hash will be drastically different. Using an example, imagine that you pay for a digital book and want to confirm that the book has exactly the same content as the original. Rather than check every chapter to make sure nothing is missing, you can just create a hash of the book, compare that hash to the hash of the original and easily confirm that the 256 characters match up.

So how is hashing used in blockchain protocols? It is used to create _digital signatures _and it is used to _integrate blocks of transactions_ to form an immutable ledger. We'll discuss each of those use cases below.

_Public / Private Key Encryption:_

Now that we understand hashing, let's move on to the second key component of encryption on the blockchain: public / private key encryption, also known as asymmetric encryption. I know that sounds fancy and complicated so let's break it down. There are two core methods of encrypting data: symmetric encryption and asymmetric encryption. [Symmetric encryption ][15]utilizes a single private key to both encrypt and decrypt a message. Symmetric encryption has been the most popular way to encrypt data for a long time and has several benefits; most notably, it's faster than asymmetric encryption. The only issue with symmetric encryption is that all parties need to have the private key to decrypt the message. In order for each party to have the private key, it needs to be distributed. Unfortunately, the only truly reliable way to distribute a private key is through in-person communication as all other communication methods could potentially be hacked. This could be an issue if you are trying to send encrypted data to someone in a different geographic region or to someone that you don't know personally.

That brings us to asymmetric encryption. With asymmetric encryption, there are two keys: a public key and a private key. As the names imply, users broadly disseminate the public key but never share the private key. The two keys are mathematically linked, meaning that the content that is encrypted using the public key can only be decrypted using the private key. As an example, if John wants to send a message to Bob using asymmetric encryption, he can use Bob's public key to encrypt the message. After encrypting the message using Bob's public key, the only way to decrypt that message would be to use Bob's private key. This enables users to exchange messages without ever having to exchange keys. [While this negatively impacts the speed of transactions, it significantly increases security][16] and allows users to share content without needing to share a private key, making it particularly useful for blockchain protocols. As a result, all blockchain protocols incorporate asymmetric (or public / private key) encryption methods.

_Digital Signatures:_

The final piece of the encryption puzzle is called a digital signature. Digital signatures are made possible by both hashing and public / private key encryption. Digital signatures enable users to _authenticate_ the identify of the sender and confirm that a document has not been altered in transit. So how do they work? I think the best way to understand digital signatures is by walking through the process of using them to authenticate a document.

_Digital Signature Process:_

* First, the sender takes their message and creates a hash of it.
* Second, the sender encrypts the hashed file using his / her private key and sends the document to the receiver.
* Third, the receiver decrypts the message using the sender's public key. This allows the receiver to get the hash of the file.
* Fourth, the receiver takes the fully decrypted document and hashes it.
* Fifth, the receiver compares the two hashes and confirms that they match.

This allows the recipient to authenticate the identify of the sender and confirm that the information was not tampered with in transit because the two hashes will not match up if (i) the message's content had been altered in any way or (ii) if any key other than the sender's private key was used to encrypt the data. If you want to see this visually, you can find a helpful graphic [here][17].

This is a pretty condensed description of hashing, public / private keys and digital signatures. For more info, please look at the links at the bottom of the page. The takeaway from this section is that blockchain protocols combine these three encryption methods in a way that makes them an incredibly secure way to send information across a network. It allows users to authenticate who sent the information, who received the information, and that the information was not tampered with along the way. With that, let's move on to consensus algorithms.

![][18]

**Consensus Algorithms**

What are consensus algorithms? That's a difficult question to answer concisely but I'll do my best. As we discussed before, there is no central authority in a decentralized network. Therefore, networks need a decision-making mechanism to force participants to come to agreement. Blockchain networks have built consensus algorithms into their protocols to serve that purpose.

At a high level, consensus algorithms are how network participants agree on a "single version of the truth". Network participants use consensus algorithms to confirm that proposed transactions are valid and that a person that is sending an asset actually owns that asset in the first place. For bitcoin, that means that if somebody is trying to send 10 bitcoin, the network participants use consensus algorithms to agree that the person owned those 10 bitcoin in the first place.

These mechanisms are important because they are how blockchain networks solve the double spend problem. I covered this in a little more detail in [my prior post][2] but t[he double spend problem][19] essentially refers to the idea that digital assets are easy to replicate so there's a chance that somebody could try to copy a digital asset and use it twice. The double spend problem is the reason that we have historically needed trusted third parties to confirm that the digital assets we are exchanging (currency, property, etc.) have not already been spent elsewhere. Consensus algorithms allow decentralized networks to validate that transactions are legitimate without requiring a trusted third party.

So how do they work? There are a number of different consensus algorithms so I'm going to cover the two most popular ones here and then provide a link to a few others that are interesting.

_Proof of Work:_

The first consensus algorithm to be implemented in a blockchain protocol was the proof-of-work algorithm. It is the algorithm that powers a number of the top blockchain networks, including bitcoin and ethereum.

The proof-of-work algorithm requires network participants to verify transactions through a computationally complex math puzzle and incentivizes them to verify transactions by providing a reward to the node that successfully completes that problem. This idea of computational complexity provides additional security to the system because it requires an enormous amount of time and energy to make any changes to the blockchain after consensus has been reached. Essentially, a hacker would need to have enough computing power to compete with the entire existing blockchain network if they wanted to make any retroactive changes.

As always, I think it's easiest to understand how the concept works by walking through an example. Let's say that a number of bitcoin transactions have occurred and need to be validated. All of the nodes that are connected to the network (known as miners) will then compete to "mine" the block of transactions. They do this by taking a hash of a few different inputs, including (i) all of the transactions in the block, (ii) the timestamp of when the block was hashed, (iii) the difficulty of the block (don't worry about this for now), (iv) the hash of the previous block of transactions, and (v) an extra number called a "nonce" (more on this later).

So what mathematical problem do miners have to solve? The problem that bitcoin forces miners to solve is to take all of those hash inputs and find a specific hash output. The only way to do this is to guess a nonce and hash the inputs. If those inputs don't lead to the correct output, the miner has to guess a different nonce and re-hash the inputs. The miner then does this over and over until they arrive at the correct output. Said another way, the math problem is a guess and check problem where the nonce is the variable that can be manipulated. The first miner to guess the right nonce, wins the competition and is awarded a pre-set number of bitcoin. After this occurs, all of the other nodes on the network check the transactions and the nonce to make sure that the transactions are valid and create the correct output. Then, the nodes move onto the next block and start the process all over again.

This method requires a ton of computational resources because the only way to solve the puzzle is through brute force guess and check. As we discussed above, the computational intensity of proof-of-work networks provides additional security and mitigates the threat of a DOS attack. However, this computational intensity also presents a problem. As proof-of-work networks have scaled, they have begun to consume monstrous amounts of energy. This has led to criticisms from sustainability groups, as well as from people who are worried that mining has become concentrated among a few players that can either afford the best equipment or operate in areas with the cheapest electricity. [The latter argument is particularly interesting because if mining operations begin to concentrate among a few players, it could effectively centralize the decentralized network][20]. The final argument against proof-of-work networks is that they are slow and people are beginning to demand faster transaction speeds. That leads us to our next consensus algorithm: proof-of-stake.

_Proof-of-stake:_

Proof-of-stake ("POS") was first used by Peercoin in 2012 and has since gained in popularity. In fact, even [Ethereum will be switching to ][20]it in the near-term. The benefit of using a proof-of-stake system is that it reduces the amount of energy and expensive hardware required to validate transactions. That makes it more environmentally friendly and further decentralizes the network as there are lower barriers to entry for becoming a validating node.

Let's break down how it works. In a proof-of-stake system, there is no math puzzle for nodes to compete to solve. Instead, validating nodes (known as "forgers") are selected in a semi-random way, where the probability of being selected is based on a combination of the number of network tokens the forger owns and the amount of time he / she has owned those coins for. For a good description of these selection methods, check out [this article][21].

So how do you make sure that these forgers don't validate fraudulent transactions? Proof-of-stake protocols solve this potential issue by forcing forgers to lock up their "stake" (aka their network tokens) in an escrow of sorts. If a forger validates a fraudulent transaction, it will lose the coins in the escrow account and will not be allowed to partake in the forging process in the future.

Another key difference between POW and POS consensus mechanisms is how they financially incentivize network participants to validate transactions. Unlike proof-of-work, there are no block rewards in a proof-of-stake system. Instead, nodes receive transaction fees for validating transactions. What's interesting is that the transaction fees are actually a way for proof-of-stake networks to regulate the number of forgers (aka validating nodes). If a network wants to encourage more forgers, it can increase the value of transaction fees and vice versa.

This is a very high level overview of proof-of-stake; however, the key takeaways are that (i) POS systems choose validating nodes based on their ownership in the network, (ii) POS systems reduce the amount of electricity / computational power required to validate transactions making them more energy efficient and scalable, and (iii) POS systems may improve decentralization by reducing the barriers to entry for validating nodes. However, this method is still relatively new and has drawn criticism for being less secure than proof of work.

While these are by far the two most popular consensus algorithms, they certainly aren't the only ones. Other consensus algorithms include delayed proof of work, delegated proof of stake, proof of authority, proof of weight, and many more. If you want to do a little more digging on these, you can find an awesome article published in Hacker Noon that details 30 of them [here][22].

![][23]

**Integrated Blocks**

I know this has been a dense post but stay with me, we're almost there. The final differentiating component of a blockchain protocol is how blocks of transactions are integrated to create an "immutable ledger". This integration is done through hashing. The best way to understand how this works is to look at how blockchain networks initially get off the ground.

The first block in a blockchain is known as the "genesis block". The genesis block differs from other blocks because it is [hardcoded into the network and details the initial parameters of the blockchain][24]. When the transactions from this genesis block are validated, they are hashed to generate a unique value that identifies the block. When the second block is validated, the transactions from the second block, as well as the hash value of the first block, are used as inputs to create the second block's unique hash value. This is then done for each subsequent block in the blockchain, effectively linking the blocks together. This linking feature is what makes the blockchain "immutable" because hackers cannot just hack one block. If a hacker tries to change the data stored in a validated block, it will change the hash of each subsequent block and cause a ripple effect throughout the rest of the chain. This will instantly be spotted by every other node, providing an additional level of security to the network.

Additionally, by linking blocks in this manner, the hash of the most recent block incorporates every single transaction that has occurred on the chain up to that point. Therefore, by agreeing on the most recent hash value, miners can easily come to consensus on the "current state of the chain". That integration represents the final piece of the blockchain puzzle so it's time to wrap this post up.

#### Conclusion

I know this piece covers a ton of dense information so thanks for taking the time to read it! Just to quickly sum it up (or…re-hash it if you will), blockchain protocols are an innovative way of sending information across a network. They sit on top of the TCP / IP protocol stack and incorporate several elements that make them a much more secure method for sending information and transferring value. These elements include distributed ledgers, encryption, consensus mechanisms, and integrated blocks.

### Wrapping Up

That wraps up my post on blockchain protocols, I hope you found it interesting! If you enjoyed this post and would like future posts sent directly to your email, please reach out to me at roywalker03@gmail.com. My next post will break down how ICOs, DApps and DAOs work.

Also, if you have an interest in venture capital and want to read VC-related content, please subscribe to my publication ["All Things Venture Capital"][25] or [follow it on twitter][3]. Additionally, please reach out to me if you are interested in adding to the publication! My goal is to continue to add high quality content (articles, podcasts, videos, etc.) from aspiring and current venture capitalists that want to share their perspective. Thanks for reading!

### Sources:

[1]: https://medium.com/all-things-venture-capital/intro-to-vc-a-history-of-the-modern-internet-53e344886f97
[2]: https://medium.com/all-things-venture-capital/intro-to-vc-the-history-of-blockchain-17ec65dfcf78
[3]: https://twitter.com/AllThings_VC
[4]: https://cdn-images-1.medium.com/max/1600/1*BYUjjX6PIv36or0PGrNNrQ.jpeg
[5]: https://www.techopedia.com/definition/12938/network-protocols
[6]: https://cdn-images-1.medium.com/max/1200/1*Paw0gxQlgffoyxJR4bLO1g.png
[7]: https://web.stanford.edu/class/msande91si/www-spr04/readings/week1/InternetWhitepaper.htm
[8]: https://cdn-images-1.medium.com/max/1200/1*A6pvhAE_8DRy1vLFQSYW5Q.png
[9]: https://en.wikipedia.org/wiki/Client%E2%80%93server_model
[10]: https://lisk.io/academy/blockchain-basics/how-does-blockchain-work/what-is-a-peer-to-peer-network
[11]: https://cdn-images-1.medium.com/max/1200/1*RKQBL6eBOG9G9Em-Mn59sQ.jpeg
[12]: https://medium.com/tech-tales/what-is-hashing-6edba0ebfa67
[13]: https://www.movable-type.co.uk/scripts/sha256.html
[14]: https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process
[15]: https://en.wikipedia.org/wiki/Symmetric-key_algorithm
[16]: http://www.uobabylon.edu.iq/eprints/paper_1_2264_649.pdf
[17]: https://lisk.io/academy/blockchain-basics/how-does-blockchain-work/digital-signatures
[18]: https://cdn-images-1.medium.com/max/1200/1*I2XP9GbzmOgWB0UQLvWBBw.jpeg
[19]: https://www.investopedia.com/terms/d/doublespending.asp
[20]: https://blockgeeks.com/guides/ethereum-casper/
[21]: https://hackernoon.com/what-is-proof-of-stake-8e0433018256
[22]: https://hackernoon.com/consensuspedia-an-encyclopedia-of-29-consensus-algorithms-e9c4b4b7d08f
[23]: https://cdn-images-1.medium.com/max/1200/1*jmUT7b0zcE214_Ptz0PuHA.png
[24]: https://www.blockchainsemantics.com/blog/genesis-block/
[25]: https://medium.com/all-things-venture-capital

