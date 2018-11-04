https://medium.com/coinmonks/powered-by-lightning-part-2-5ef1e76e4288

In the future we will be able to use the LN for the following time of payments:

* Paying peers
* Paying merchants
* Programmable money (games, streaming entertainment, services, IoT, etc)

We'll take a look at each scenario and discuss how it can be done with Bitcoin and the Lightning Network.

### Entering Bitcoin

Firstly, how does Alice enter Bitcoin? Alice purchases it off an exchange of some sorts, by making a purchase with fiat, and withdrawing her Bitcoin to her mobile and hardware wallets. Mobile wallets for small, quick purchases, often referred to as a "hot wallet" and hardware wallets to store the bulk of her Bitcoin for security, often called a "cold wallet".

The following is the typical flow:

![][1]![][2]![][2]

Buying and withdrawing Bitcoin

In a lightning-powered future, Alice will do it no differently. From the same wallet that she currently uses as a hot wallet, she will open a channel with her exchange, creating her first lightning channel.

> The semantics of "opening channels" will most likely be dropped in the future Bitcoin wallet to avoid confusing users. Instead, users will have a "lightning wallet" which will have software (Autopilot) that will open channels seamlessly behalf of the user; and these channels will be opened with a number of different nodes, not just an exchange node.

The lightning wallet is accessed from Alice's mobile device, but the mobile device is capable of holding Bitcoin at both Layer 1 and Layer 2. Future mobile wallet apps should strive to have very clear user experience around the two layers; most likely treating the lightning wallet as the "everyday cash account", and the blockchain wallet as the "savings account". The hardware wallet would then be the "term deposit" or the "super fund".

We'll soon see why her Mobile Wallet should have both Layer 1 and Layer 2 Bitcoin. Just a note; Layer 1 Bitcoin is always the same as Layer 2 Bitcoin, but Layer 1 Bitcoin can be viewed as unencumbered, whilst Layer 2 Bitcoin has been signed into a conditional wallet. To relate to the legacy finance system, Layer 1 Bitcoin is akin to cash in a bank account, whilst Layer 2 Bitcoin is akin to your Paypal balance — it's the same cash, but both you and Paypal have oversight on your Paypal balance.

> Note: with Bitcoin, your assets can never be seized in Layer 1 or Layer 2, unlike bank accounts and your PayPal balance, which are just database en特里结构s and can be wiped at any time.

![][3]![][4]![][5]

Alice opens a lightning channel with her Exchange.

Alice can now do the following:

* Add Bitcoin to her lightning wallet, or withdraw it
* Spend Bitcoin from her lightning wallet

#### Adding and withdrawing Bitcoin

Alice will want to keep topping up her Bitcoin wallet. She can do this by the following:

1. Send cash to her exchange
2. Add Bitcoin directly from her mobile blockchain wallet
3. Add Bitcoin directly from her hardware wallet

Adding Bitcoin directly to her Lightning Wallet is called "splicing", and Alice can splice-in from any other on-chain wallet she owns. When Alice sends cash to the exchange and buys Bitcoin, the exchange will be splicing-in from their on-chain wallet into her channel.

![][6]![][4]![][7]

Alice can keep filling her Lightning Wallet by sending cash to her Exchange

To Alice this is all completely seamless. She can view her Lightning Wallet's balance and is able to add to it from any mechanism she desires. Under the hood, her wallet is performing a series of atomic on-chain transactions in order to place her Bitcoin into her Lightning Wallet.

Withdrawing Bitcoin is simply the above actions in reverse:

1. Withdraw Bitcoin to cash: withdraw via her exchange
2. Withdraw Bitcoin to her Layer 1 wallet: splice out from her lightning wallet
3. Withdraw Bitcoin to her cold wallet: splice out from her lightning wallet

#### Spending Bitcoin

Once Alice has a Lightning Wallet with a balance, she can spend to anyone else that is on the Lightning Network. She enters her recipient's address and sends the payment. Her mobile wallet performs the following actions:

* Calculates the best route to Bob
* Sends the payment and waits for receipt

![][8]![][4]![][9]

In the case that Alice opened her channel(s) with her local exchange, the payment will be routed first via the exchange's node, this is the "gateway node". The last node in the payment route will be the node that Bob's wallet first connected to, also called a gateway node. This is likely to be an exchange node, simply because exchange nodes are in the best positions to on-board new users onto Lightning efficiently. Bridge nodes are nodes that open channels with other nodes, and have more outgoing liquidity than incoming.

Gateway nodes perform important functions in the payment flow, and can make or break Alice's payment experience. Luckily there is a lot of innovation happening right now, so we'll talk about that.

> It is in Alice and Bob's interest to open a number of channels with different gateway nodes for privacy, redundancy and reliability.

#### Issues

Some immediate issues in the payment flow above, as well as their solutions, are discussed:

1. Bob doesn't have a lightning wallet.

> In this case, Alice's smart mobile wallet will detect that Bob's address is not a lightning address, and will instead send Bob Layer 1 Bitcoin seamlessly.

2\. Alice's lightning wallet doesn't have enough Bitcoin to make the payment at Layer 1 or Layer 2.

> The future smart mobile wallet will be able to inform Alice that she will need to either top up her Lightning Wallet, or withdraw from her Lightning Wallet.

3\. Bob is not online to receive his lighting payment

> If Bob cannot receive the payment as he is not online, then it will fail and route back to Alice. Alice's wallet will then ask Alice to pay Bob with Layer 1 Bitcoin, which can be sent if Bob is not online.

4\. The payment route that Alice selects fails due liquidity or reliability

> Alice's smart wallet will be able to re-try the payment with a different route.

5\. Bob's node doesn't have enough Bitcoin to route to Bob.

> For Bob to receive $100, then $100 needs to be on the other side of Bob's channel; ie, with his exchange. This may not be the case, in which case then Alice will be unable to pay Bob, through no fault of either Bob or Alice. The solution to this is for Alice to open a channel directly with Bob.

We can see that the main issues circulate around Bob and his node. If Alice encounters any issues with her payment choice or liquidity, she can make corrections _before_ she sends the payment. However, she is at the mercy of Bob's payment limitations and his node.

The solution to this is that Bob receives payments _at his node_ instead of directly to his wallet. His node can then inform him of an incoming payment via email, sms or push notification, and then he has the ability to go online and withdraw any incoming payments to his wallet.

Bob may choose to run his own node, or he may open an account at his lightning-enabled exchange and let their node accumulate payments for him.

![][10]![][4]![][11]

Bob receives a notification of an incoming payment

#### E-commerce and Paying Merchants

Making payments to peers is fairly easy although with some issues discussed above, but Lightning comes into its own when paying merchants or making e-commerce payments.

The main reason for this is that Merchants and e-commerce payment solutions will be running their own infrastructure and will care less about verifying each payment absolutely. Instead, they will be accumulating daily takings, and making batch withdrawals in cycles.

Additionally, merchants will more likely choose to receive payments in legacy fiat or stablecoins to pay tax, salaries and other business expenses. Thus it makes even more sense that they will have a merchant account at a local exchange and let the exchange handle incoming payments.

![][12]![][4]![][13]

A Merchant will likely use Exchange Infrastructure

### **Atomic Multi-path Payments (AMP)**

We mentioned before that Alice's wallet will be able to choose the route to Bob, but that's only scratching the surface.

AMP is revolutionary feature yet to be built on Lightning, as it was only [conceived recently][14]. The main issue with Lightning currently is that payments can only be made across channels that already have existing liquidity, ie, a $10 payment can only be sent across a channel that already has $10 in it.

AMP allows payments to be atomically sent across many different channels at once, and Bob will receive all of them, or none of them. As an example, Alice wishes to pay Bob $1000. Instead of sending a single $1000 payment that will likely fail, Alice can send 1000 $1 payments. Each payment goes across a different route and when Bob receives them all, he will have the full $1000.

When we thought Lightning allowed unicast payments, AMP allows _multi-cast_ payments. This has ground-breaking improvements to the following characteristics of Lightning:

1. **Reliability.** Each channel will have an extremely likely chance of already having $1 in it, so the overall reliability of the payment will quickly go to 100%.
2. **Fee competitive.** Nodes who attempt to charge high fees will quickly lose selection from routes and will lose traffic. They will always have to charge highly competitive fees to attract traffic.

![][15]![][4]![][16]

An AMP Payment

Here in this diagram Alice pays Bob $10 with two $5 payments. The routes are chosen to maximise reliability and liquidity. We can see that apart from the gateway nodes, no single node knew of the full payment size, nor who was paying who. As a result, the more payments are made across the network, the faster to re-balance and more healthy the entire network becomes. This is all thanks to AMP.

### Programmable Money

Lightning enables Bitcoin to become Programmable Money. In the future, all of Alice's devices will have a lighting wallet to enable them to quickly pay on behalf of Alice, programmatically. Her self-driving car, her phone, her fridge will all have wallets and Alice will be able to set rules about how they pay, and how much. Such as:

* Phone to pay no more than $10/month for fast internet
* Fridge to pay $200/week for her grocery bills, set by her menu
* Car to spend no more than $10/week on tolls

Alice will be able to top them all up from her primary wallet, sending liquidity to them. She'll get notified whenever they get low, as well as how much they are spending on behalf of her. As they will only spend with Alice's permission, Alice will never be charged for something she didn't know about, and she'll have complete control of spending.

Alice will never be able to spend more than she has, which means she'll never accrue debt.

![][17]![][4]![][18]

The future of Money

### A node in every house

We can see that the health and useability of the Lightning Network really comes down to the number of nodes and funded channels there are available. Additionally, it is in Alice, Bob and the merchants' best interests to run their own nodes as they can make better choices around fees, liquidity and privacy.

The good thing is that running a Lightning node will quickly become a very trivial thing, to the point where the household of the future will bundle the internet router with a Bitcoin and a Lightning node. Members of each household will simply connect their mobile wallets with their own node, and it will run 24/7 as they currently do.

Some awesome nodes coming into production include the [Casa Node][19] and [RaspiBlitz][20].

Ensuring that the Bitcoin network of the future remains accessible to all, so that anyone can host a node at home, is becoming more and more important. As such I am firmly in the Segwit + 1mb block limit camp. Currently the Bitcoin chain is 185GB, and takes about a day to sync on typical devices. Single chip computers (RPi) can be synced just as fast by being pre-loaded with a pre-validated chain-set.

We'll discuss in Part 5 of this series how we can foreseeably on-board the entire world onto Bitcoin and the Lightning Network with the _no change_ to the current Bitcoin blockchain parameters, as well the massive benefits the current design choices of Bitcoin actually give us.

### Conclusion

Lightning is a massive improvement to how we can use and spend Bitcoin and is part of a broader movement where we are slowly transitioning to debt-free, programmable money with complete control of spending.

However, there are some limitations to how we will use Lightning, mainly around the recipient of the payment. The good news is there is massive amount of innovation happening in this area and most issues will likely be readily solved.

Get started here: 

### Acknowledgements

Many thanks to @ln_master_hub and [BTCPay Server][21] for giving me feedback on this article and some technicals.

[1]: https://cdn-images-1.medium.com/freeze/max/75/1*HdEa1dDLpS5oARt6bdLkEw.png?q=20
[2]: https://cdn-images-1.medium.com/max/2000/1*HdEa1dDLpS5oARt6bdLkEw.png
[3]: https://cdn-images-1.medium.com/freeze/max/75/1*0_s_nZmOI8J6aRjiPm4dWA.png?q=20
[4]: https://medium.com/coinmonks/undefined
[5]: https://cdn-images-1.medium.com/max/2000/1*0_s_nZmOI8J6aRjiPm4dWA.png
[6]: https://cdn-images-1.medium.com/freeze/max/75/1*VKKWuJePgDZceb8Hv3CzGA.png?q=20
[7]: https://cdn-images-1.medium.com/max/2000/1*VKKWuJePgDZceb8Hv3CzGA.png
[8]: https://cdn-images-1.medium.com/freeze/max/75/1*5IeUobntmEAeYp7zSL1IAQ.png?q=20
[9]: https://cdn-images-1.medium.com/max/2000/1*5IeUobntmEAeYp7zSL1IAQ.png
[10]: https://cdn-images-1.medium.com/freeze/max/75/1*gy3KJppKCj47xFzhhOU3kw.png?q=20
[11]: https://cdn-images-1.medium.com/max/2000/1*gy3KJppKCj47xFzhhOU3kw.png
[12]: https://cdn-images-1.medium.com/freeze/max/75/1*7pSMjQ6Wo357uqgIS9R1tA.png?q=20
[13]: https://cdn-images-1.medium.com/max/2000/1*7pSMjQ6Wo357uqgIS9R1tA.png
[14]: https://lists.linuxfoundation.org/pipermail/lightning-dev/2018-February/000993.html
[15]: https://cdn-images-1.medium.com/freeze/max/75/1*0eAD3iOyWTr69_NnBAOmlQ.png?q=20
[16]: https://cdn-images-1.medium.com/max/2000/1*0eAD3iOyWTr69_NnBAOmlQ.png
[17]: https://cdn-images-1.medium.com/freeze/max/75/1*SY47XnjsrWxcFBItyGWhLQ.png?q=20
[18]: https://cdn-images-1.medium.com/max/2000/1*SY47XnjsrWxcFBItyGWhLQ.png
[19]: https://store.casa/lightning-node/
[20]: https://github.com/rootzoll/raspiblitz
[21]: https://medium.com/@BtcpayServer

  