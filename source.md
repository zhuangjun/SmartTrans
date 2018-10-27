# The Ethereum Blockchain and ERC20 Tokens: Technical Challenges and Solutions for 2019 and Beyond

![][2]

In 2018, we've seen a lot of advancements in the capabilities of the Ethereum blockchain. These innovations are driven by both Ethereum and ERC20 token projects throughout the vast, growing ecosystem.

What do these innovations mean for Ethereum as a top blockchain platform for new tokens? Which areas can we expect to see tangible improvements in the near future? In this post, we explore several significant technical challenges and potential solutions. Finally, we'll highlight useful tokens listed on [**Ethex**][3] that are solving challenging today's problems with innovative solutions.

### **BatchOverflow Bug and Security Vulnerabilities**

In April 2018, many cryptocurrency exchanges had to shut down trading due to a batchOverflow bug found in multiple ERC20 smart contracts. Essentially, this bug equates to a traditional integer overflow issue. The problem was that these newer tokens added a new function (batchTransfer) that caused the issue.

Yes, the bug only directly affected around a dozen tokens that used a smart contract template developed by Open Zeppelin. The overall impact was quite small for the Ethereum blockchain itself. It also didn't really have much of an impact on most tokens. Nonetheless, it's important to think of the ways that continued security risks can also indirectly affect cryptocurrency exchanges and project teams. Moreover, this issue shows that potential vulnerabilities can arise at any time and that it is crucial to be cautious when adding new functions to smart contracts.

According to one article from February 2018, [3,000 known security vulnerabilities existed in smart contracts][4] at that time. In total, these contracts had a value of $6 million. Additionally, other security issues like [tradeTrap][5] (mixed with vulnerable implementation) have been known to impact hundreds of tokens, many of which are listed on major cryptocurrency exchanges. The fact that existing smart contracts can't be edited creates more pressure on future code analysis efforts. Because smart contract code is highly complex and difficult to analyze, we could see similar security vulnerabilities arise for quite some time. This is a critical issue for ERC20 token projects to resolve moving forward.

![][8]

The batchOverflow bug had a significant impact on cryptocurrency trading and several tokens in April 2018.

### **Interoperability With Other Blockchains**

Interoperability continues to be a major obstacle for collaboration between various projects in blockchain. Being able to communicate across multiple blockchains is not something that a lot of projects have put emphasis on yet. However, in 2018, we have seen some projects begin to develop the necessary infrastructure for this vision to become a reality.

For example, the POA Network (public, permissioned-based) [announced a partnership][9] with Sentinal Chain (private, consortium permissioned-based) back in July 2018. This move will allow both networks to become fully compatible with the Ethereum blockchain through the creation of an ERC20-to-ERC20 cross chain bridge, allowing the EVM-based blockchain community to have access to a closed market running on a private blockchain.

Non-Ethereum blockchains have also made significant progress in making the Ethereum blockchain more accessible to everyone. Wanchain is one example. Back in July, the project released Wanchain 2.0, which makes it possible to conduct an ICO on Wanchain that can accept ETH. In October 2018, Wanchain partnered with MakerDAO to enter a beta testing process that makes [**DAI**][10] the [first ever cross-chain ERC20 token][11]. Additionally, Wanchain's list of compatible, interoperable assets will likely expand to include a number of other ERC20 tokens.

![][13]

POA Network is working to increase blockchain interoperability.

### Greater Scalability Needed: Sidechain and Sharding

The Ethereum blockchain still needs major upgrades in scalability in order to drive the future adoption of ETH and ERC20 tokens. In 2018, we have seen some major progress in the research and development of scalability technologies but still need to see these solutions implemented. There are quite a few blockchain projects and research teams working on the scalability of the Ethereum blockchain, particular via sharding and second layer protocols. In May, Vitalik Buterin stated that it is realistic for the Ethereum blockchain to reach a 10,000x scalability gain, 100x with sharding and 100x with Plasma.

In September 2018 at the ETHBerlin hackathon, blockchain researcher Vlad Zamfir successfully [finalized a proof-of-concept][14] for Ethereum sharding. Still, this technology isn't scheduled to be ready for implementation for another two years or more. As Zamfir has said, this proof-of-concept is missing important features like a system for transaction fees and a way to route transactions and messages from one shard to another. While this test is a positive step forward, it is only beginning to scratch the surface of what is possible with sharding.

ERC20 token projects like [Loom Network][15] present a possible solution that not only increases scalability but also developability. This project offers an SDK that developers can follow to easily launch dapps. So how exactly does this provide greater scalability? Loom Network provides a technology called DAppChains, which allows developers to utilize a second layer blockchain solution. This means that dapps of the future could be far more customizable and scalable, all while maintaining the same level of security of the Ethereum blockchain.

![][17]

Loom Network sidechain technology is developing a sidechain technology to make dapps on the Ethereum blockchain more scalable.

### **Useful Tokens and User Adoption**

Security, interoperability, and scalability are all crucial factors that impact user adoption of ERC20 tokens. Building a better blockchain ecosystem is an essential part of not only increasing people's interest in cryptocurrencies as assets but also for developing use cases for cryptocurrencies as P2P payments capable of solving real-world problems that traditional technologies can't.

The following useful tokens are just two examples of the many innovative projects listed on [**Ethex**][3]. All of the projects on listed on Ethex have successfully launched mainnets. If you're interested in submitting your project for listing, [click here to fill out a submission form][18].

[**0xBTC**][19] is an ERC20 token that combines some of the best elements of Ethereum and Bitcoin. One of the things that makes this project unique is that it is the first to offer an ERC20 token that utilizes SHA-3 Keccak256, which is similar to the SHA-256 Proof-of-Work consensus algorithm used by Bitcoin. Another aspect that sets this project apart from many others is that it didn't launch any sort of ICO to raise funds. In fact, this project also has no pre-mine, no masternodes, and no founders reward. Users can mine and transfer 0xBTC exactly like BTC at 10x speed and 1/100 the cost.

![][21]

Because it utilizes SHA-256, 0xBTC provides a new way to mine an ERC20 token.

Storing value in cryptocurrency can often be difficult to achieve. Stablecoins can help to mitigate this issue. Unlike other Stablecoins (i.e. Tether), [**DAI**][10] doesn't rely upon a centralized/trusted authority to maintain its value. Instead, it utilizes smart contracts within the Ethereum blockchain and remains pegged to value of $1. Because other Stablecoins options on the market that utilize their own blockchains, they often require their own wallets. In contrast, DAI is simple for anyone with an Ethereum wallet to own, accept, and transfer.

![][23]

DAI is an ERC20 Stablecoin pegged to the value of $1 USD.

### Conclusion

While these certainly aren't all the challenges that the Ethereum blockchain and ERC20 token projects face today, the above-mentioned problems and solutions do provide some perspective. Hopefully, as the capabilities of the Ethereum blockchain continue to improve, we will see more of Vitalik clapping in the near future.

![][25]

[1]: https://cdn-images-1.medium.com/freeze/max/75/1*4J-8u-MjNiqlw4RKL3o2ng.png?q=20
[2]: https://cdn-images-1.medium.com/max/2000/1*4J-8u-MjNiqlw4RKL3o2ng.png
[3]: https://ethex.market/
[4]: https://motherboard.vice.com/en_us/article/8xddka/millions-of-dollars-in-ethereum-are-vulnerable-to-hackers-right-now-smart-contract-bugs
[5]: https://medium.com/@peckshield/highly-manipulatable-erc20-tokens-identified-in-multiple-top-exchanges-including-binance-d158deab4b9a
[6]: https://cdn-images-1.medium.com/freeze/max/75/1*zWaLQYAGmb095e2l1NOABw.jpeg?q=20
[7]: https://medium.com/ethex-market/undefined
[8]: https://cdn-images-1.medium.com/max/2000/1*zWaLQYAGmb095e2l1NOABw.jpeg
[9]: https://medium.com/poa-network/sentinel-chain-and-poa-network-form-strategic-partnership-for-joint-development-of-erc20-to-erc20-704b4ece21ec
[10]: https://ethex.market/#DAI
[11]: https://medium.com/wanchain-foundation/https-medium-com-wanchain-foundation-makerdao-dai-on-wanchain-727b0b95df19
[12]: https://cdn-images-1.medium.com/freeze/max/75/1*foFd6M_XbWJmYgBCJmXDFQ.png?q=20
[13]: https://cdn-images-1.medium.com/max/2000/1*foFd6M_XbWJmYgBCJmXDFQ.png
[14]: https://www.coindesk.com/ethereums-vlad-zamfir-claims-breakthrough-in-blockchain-sharding/
[15]: https://loomx.io/
[16]: https://cdn-images-1.medium.com/freeze/max/75/1*O4FmbhHmU1_YyO2pcYZs3A.gif?q=20
[17]: https://cdn-images-1.medium.com/max/2000/1*O4FmbhHmU1_YyO2pcYZs3A.gif
[18]: https://docs.google.com/forms/d/1CJ42rFQVfTtkgW_6oLwUXQy-Hx0VnDwbZP9e1ZyIFtk/viewform?edit_requested=true
[19]: https://ethex.market/#0xbtc
[20]: https://cdn-images-1.medium.com/freeze/max/75/1*l3WfYNxjo4a34_qrTnQ-vw.gif?q=20
[21]: https://cdn-images-1.medium.com/max/2000/1*l3WfYNxjo4a34_qrTnQ-vw.gif
[22]: https://cdn-images-1.medium.com/freeze/max/75/1*Dp4qpjqC_yFuQ6jczHOkbA.png?q=20
[23]: https://cdn-images-1.medium.com/max/2000/1*Dp4qpjqC_yFuQ6jczHOkbA.png
[24]: https://cdn-images-1.medium.com/freeze/max/75/1*iulXWRTkLA2f3viTfN6lag.gif?q=20
[25]: https://cdn-images-1.medium.com/max/2000/1*iulXWRTkLA2f3viTfN6lag.gif