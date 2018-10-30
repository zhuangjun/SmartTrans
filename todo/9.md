https://hackernoon.com/difference-between-sidechains-and-state-channels-2f5dfbd10707

State Channels and Sidechains are the two terms in Ethereum community that are often used interchangeably, thus causing mass confusion.

But today we will get it clear.

Go make a cup of coffee first, it's going to be a long one.

The purpose of this article is to clearly define:

* What are State channels ?
* What are Sidechains ?

Then we will compare the two:

* What problems are they trying to solve ?
* Which is a better scaling solution among the two ?

Without wasting much time, let's get started.

### What are State Channels ?

State channels are a very broad and simple way to think about blockchain interactions which _could_ occur on the blockchain, but instead get conducted _off_ of the blockchain, without significantly increasing the risk of any participant. The most well known example of this strategy is the idea of [payment channels][1] in Bitcoin, which allow for instant fee-less payments to be sent directly between two parties. Here is a list of some of the State Channel Projects.

[**10 State Channel Projects Every Blockchain Developer Should Know About**  
_What are State Channels and why should I care The whole world is going through a blockchain revolution. But people…_hackernoon.com][2]

> **State channels are the general form of payment channels, applying the same idea to any kind of state-altering operation normally performed on a blockchain**.

Moving these interactions off of the chain without requiring any additional trust can lead to _significant_ improvements in cost and speed. State channels will be a critical part of scaling blockchain technologies to support higher levels of use.

The basic components of a state channel are very simple:

![][3]![][4]![][4]

A 2 way state channel

1. **Part of the blockchain state is locked** via [multisignature][5] or some sort of smart contract, so that a specific set of participants must completely agree with each other to update it.
2. **Participants update the state amongst themselves** by constructing and signing transactions that _could_ be submitted to the blockchain, but instead are merely held onto for now. Each new update "trumps" previous updates.
3. Finally, **participants submit the state back to the blockchain**, which closes the state channel and unlocks the state again (usually in a different configuration than it started with).

That's it! If the "state" being updated between participants was a digital currency balance, then we would have a payment channel. Steps 1 and 3, which open and close the channel, involve blockchain operations. But **in step 2 an unlimited number of updates can be rapidly made without the need to involve the blockchain at all** — and this is where the power of state channels comes into play, because only steps 1 and 3 need to be published to the network, pay fees, or wait for [confirmations][6]. In fact, with careful planning and design, state channels can remain open almost indefinitely, and be used as part of larger [hub and spoke systems][7] to power an entire economy or ecosystem.

Despite my simple description here, state/payment channels have generally been perceived as [quite complicated][8]. There are several reasons for this, and one of them is that **there are some important subtleties hidden in my phrasing** of the three steps. Let's take a closer look at what these simple phrases imply, starting with:

> could be submitted to the blockchain

In order for state channels to work, participants have to be assured that they _could_ publish the current state of the channel to the blockchain at any time. This results in some important limitations, such as the fact that **someone has to stay online** to protect each individual party's interests until the channel is closed.

Imagine that when we initiated a payment channel I started with 100 bitcoins and you started with 10. If we first sign an update that transfers 10 of those bitcoins to me, and then _later_ sign an update that transfers 50 back to you, the later update is obviously more beneficial to you than the earlier one is. If you were to [unexpectedly lose internet access][9], and I were to pretend the second update never happened, I might be able to publish the first update to the blockchain and effectively _steal 50 bitcoins from you_! What you need is somebody to stay online with a copy of that later transaction so that they can "trump" the earlier one and make sure your bitcoins are protected. **It doesn't have to be you** — you could send a copy to many random servers who agree via smart contract to publish it only if needed (for a small fee of course). But however you do it, you need to be assured that the latest signed update to the state is available to trump all others. Which leads us to our next subtle phrase:

> Each new update "trumps" previous updates

To make this part of the state channel work, **the locking and unlocking mechanisms have to be properly designed** so that old state updates submitted to the blockchain have a chance to be corrected by the newer state updates which replaced them. **The simplest way is to have any unlocking attempt start a timer**, during which any _newer _update can replace the old update (restarting the timer as well). When the timer completes, the channel is closed and the state adjusted to reflect the last update received. The length of the timer would be chosen for each state channel, balancing the inconvenience of a long channel closing time with the increased safety it would provide against internet connection or [blockchain problems][10]. Alternatively, you could structure the channel with a financial penalty so that anyone publishing an inaccurate update to the blockchain will lose more than they could gain by pretending later transactions didn't happen.

But the mechanism ends up not mattering very much, because (going back to the previous point) the game theory of this situation puts a twist on things. **As long as this mechanism is theoretically sound, it will probably never have to be used**. Actually going through the timer/penalty process may introduce extra fees, delays, or other inconveniences; given that _forcing_ someone into the mechanism can't give you any advantage anyways, **parties to a state channel will probably just close the channel out by mutually agreeing** on a final channel state. This final close-out operation needs to be fundamentally different from the normal "intermediate" updates (since it will bypass the "trumping" mechanism above), so **participants will only sign a final close-out transaction once for each portion of the state locked within a particular channel**.

The details of these "subtleties" aren't especially important. What it all ultimately breaks down to is that **participants open the channel by setting up a "judge"** smart contract, **sign promises to each other** which the judge can enforce and adjudicate if necessary, and then **close the channel by agreeing** amongst themselves so that the judge's adjudication isn't needed. As long as the "judge" mechanism can be assumed to be reliable, these promises can be counted as instant transfers, with the judge only appealed to in exceptional circumstances, such as when one party disappears.

Of course, these details are only _part_ of the reason people think that state/payment channels are complicated. A much bigger one is that **Bitcoin payment channels _are _complicated**. Building a "judge" mechanism in Bitcoin with even [reasonably useful properties][11] is surprisingly intricate. But once you have a clear concept of state channels in general, you can see that **this only comes from trying to implement the idea in a constrained context**. Basic smart contract features like a timer mechanism and allowing two different paths to be taken depending on the signed message submitted are just plain harder to do in Bitcoin. Some of these features are being gradually added or built. By seeing that **payment channels are only a special subcase of the broader "state channel" idea**, we realise that this is a much broader technique, and that **state channels can apply to any smart contract** which deals with frequent updates between a defined set of participants. You can anticipate seeing this approach in many (if not most) distributed applications going forward.

Now we have a bit clear idea that what is a "state channel". So, let's move to side chain.

### What are SideChains ?

> **A sidechain is a separate blockchain that is attached to its parent blockchain(mainchain) using a two-way peg.**

In other words, you can move assets to the sidechain and then back to the parent chain.

![][12]![][13]![][13]

sidechain

The two-way peg enables interchangeability of assets at a predetermined rate between the parent blockchain and the sidechain. The original blockchain is usually referred to as the 'main chain' and all additional blockchains are referred to as 'sidechains'. The blockchain platform Ardor refers to its sidechains as 'childchains'.

A user on the parent chain first has to send their coins to an output address, where the coins become locked so the user is unable to spend them elsewhere. Once the transaction has been completed, a confirmation is communicated across the chains followed by a waiting period for extra security. After the waiting period, the equivalent number of coins is released on the sidechain, allowing the user to access and spend them there. The reverse happens when moving back from a sidechain to the main chain.

#### Federations

A federation is a group that serves as an intermediate point between a main chain and one of its sidechains. This group determines when the coins a user has used are locked up and released. The creators of the sidechain can choose the members of the federation. A problem with the federation structure is that it adds another layer between the main chain and the sidechain.

Sidechains are responsible for their own security. If there isn't enough mining power to secure a sidechain, it could be hacked. Since each sidechain is independent, if it is hacked or compromised, the damage will be contained within that chain and won't affect the main chain. Conversely, should the main chain become compromised, the sidechain can still operate, but the peg will lose most of its value.

Sidechains need their own miners. These miners can be incentivized through 'merged mining', whereby two separate cryptocurrencies, based on the same algorithm, are mined simultaneously.

Here is a list of some of the Sidechain Projects.

[**11 sidechain projects every blockchain developer should know about**  
_The whole world is going through the blockchain revolution. But wait…is this really what we dreamed of? Present…_hackernoon.com][14]

Now, we have a good understanding of sidechains too. So, let's put them to the ring.

### What problems are they trying to solve ?

> Both Sidechain and State Channel are tricks to improve the poor scalability of blockchains in general.

They both follow a bit same model.

* Locking up state/assets.
* Doing transactions off the blockhain/mainchain.
* Unlocking the state/assets from the state channel/sidechain.

But despite this analogy, there are many differences between the two which arises from the point that **_in State Channels we do not use a separate blockchain whereas in Sidechains we use a separate blockchain_**. Let's see what are its consequences.

### Which is a better scaling solution among the two ?

To decide this, let's see their pros and cons.

#### State Channel pros

* **State channels have strong privacy properties: **This is because everything is happening "inside" a channel between participants, rather than broadcast publicly and recorded on-chain. Only the opening and closing transactions must be public. Whereas in sidechains every transaction is published on the sidechain which is received by every participant on the sidechain irrespective of the fact that you are not interacting with all of the participants on the sidechain.
* **State channels have instant finality**, meaning that as soon as both parties sign a state update, it can be considered final. Both parties have a very high guarantee that, if necessary, they can "enforce" that state on-chain. But as discussed above that the state channel closing could take variable time considering the security level of the transaction. Whereas in sidechains you have a blockchain on the other side. So the finality depends on the mining power of the sidechain.

#### State Channel **cons**

* **_State Channels need 100% availability of all the participants involved: _**As we have discussed above that if anyone the participants goes unavailable, then this could prove costly to him. The participants can use someone to represent him if he goes unavailable, but the possibility of the representative getting attacked or bribed makes it a problem for state channel. Whereas in sidechains you don't have to be available all the time you are on the sidechain.
* **_State channels are best used for applications with a defined set of participants: _**This is because the Judge contract(the contract used to lock the state) must always know the participants/entities (i.e. addresses) that are part of a given channel. We can add and remove people, but it requires a change to the contract each time. Whereas in sidechains there is no such limitation on the movement of the participants.
* **_State Channels are particularly useful where participants are going to be exchanging many state updates over a long period of time:_ **This is because there is an initial cost to _creating_ a channel in deploying the Judge contract. But once it is deployed, the cost per state update inside that channel is extremely low.

#### Sidechain pros

* **_Sidechains are permanent. You don't have create your own sidechain for specific purpose if there is one present: _**Sidechains are created and maintained once made. We don't close sidechains, rather we lock the assets on sidechain to move back to the mainchain. This can be helpful in the way that anyone who is doing a specific task off blockchain/mainchain (for eg. [transacting in dogecoin][15]) will come to the same sidechain. So, you don't have to create separate chains for every new participant. Whereas in state channels you usually have to create a new channel to add a new participant. But projects such as Lightning , Raiden network have come up with brilliant solution for this. They create a mesh of participants so you don't have to create a new channel for every new participant you interact with. You can interact with participants indirectly creating a channel between you and recipient through some other participant who is common to both: you and the recipient.
* **_Sidechains allow cryptocurrencies to interact with one another:_** They add flexibility and allow developers to experiment with Beta releases of Altcoins or software updates before pushing them on to the main chain. Traditional banking functions like issuing and tracking ownership of shares can be tested on sidechains before moving them onto main chains.

#### Sidechain cons

* **_Sidechains need a lot of initial investment to start off: _**To create a sidechain we need to have enough miners so that the network is safe from attackers. Also, we have to make it sure that they are up and running. Whereas there is no blockchain involved in state channels. So, no such requirement is needed.
* **_A Federation is needed for sidechains: _**This adds another layer between the mainchain and the sidechain. This could prove as another weak point for the attackers to attack by bribing or attacking the federation. Whereas in state channel we just need a smart contract to do this for us.

[1]: https://bitcoin.org/en/developer-guide#micropayment-channel
[2]: https://hackernoon.com/10-state-channel-projects-every-blockchain-developer-should-know-about-293514a516fd "https://hackernoon.com/10-state-channel-projects-every-blockchain-developer-should-know-about-293514a516fd"
[3]: https://cdn-images-1.medium.com/freeze/max/75/1*6eEGoEk7_bmt4JCNmCnKnA.png?q=20
[4]: https://cdn-images-1.medium.com/max/2000/1*6eEGoEk7_bmt4JCNmCnKnA.png
[5]: http://bitcoin.stackexchange.com/questions/3718/what-are-multi-signature-transactions
[6]: https://en.bitcoin.it/wiki/Confirmation
[7]: https://www.mail-archive.com/bitcoin-development@lists.sourceforge.net/msg06576.html
[8]: https://www.youtube.com/watch?v=XdbsfRYskMk
[9]: http://www.slashgear.com/three-arrested-for-trying-to-cut-undersea-internet-cable-27275579/
[10]: https://bitcoin.org/en/alert/2015-07-04-spv-mining#list-of-forks
[11]: http://www.tik.ee.ethz.ch/file/716b955c130e6c703fac336ea17b1670/duplex-micropayment-channels.pdf
[12]: https://cdn-images-1.medium.com/freeze/max/75/1*hFdtS94EIFeSQGWREnNWJw.png?q=20
[13]: https://cdn-images-1.medium.com/max/2000/1*hFdtS94EIFeSQGWREnNWJw.png
[14]: https://hackernoon.com/13-sidechain-projects-every-blockchain-developer-should-know-about-804b65364107 "https://hackernoon.com/13-sidechain-projects-every-blockchain-developer-should-know-about-804b65364107"
[15]: https://www.reddit.com/r/dogecoin/comments/61vg5k/dogethereum_we_can_do_this_dogether/

  