
https://hackernoon.com/difference-between-sidechains-and-state-channels-2f5dfbd10707
https://hackernoon.com/difference-between-sidechains-and-state-channels-2f5dfbd10707

State Channels and Sidechains are the two terms in Ethereum community that are often used interchangeably, thus causing mass confusion.
状态通道和侧链是以太坊社区中的两个术语，通常可以互换使用，因此导致大规模混淆。

But today we will get it clear.
但今天我们会弄清楚。

Go make a cup of coffee first, it's going to be a long one.
先去喝一杯咖啡，这将是一个很长的过程。

The purpose of this article is to clearly define:
本文的目的是明确定义：

* What are State channels ?
* 什么是状态通道？
* What are Sidechains ?
* 什么是侧链？

Then we will compare the two:
然后我们将比较两者：

* What problems are they trying to solve ?
* 他们试图解决什么问题？
* Which is a better scaling solution among the two ?
* 哪个是两者中更好的扩展解决方案？

Without wasting much time, let's get started.
不浪费时间，让我们开始吧。

### What are State Channels ?
### 什么是状态通道？

State channels are a very broad and simple way to think about blockchain interactions which _could_ occur on the blockchain, but instead get conducted _off_ of the blockchain, without significantly increasing the risk of any participant. The most well known example of this strategy is the idea of [payment channels][1] in Bitcoin, which allow for instant fee-less payments to be sent directly between two parties. Here is a list of some of the State Channel Projects.
状态通道是一种非常宽泛和简单的方式来考虑区块链中可能发生的区块链交互，而是在区块链下进行，而不会显着增加任何参与者的风险。这个策略最着名的例子是比特币中[支付通道][1]的想法，它允许在双方之间直接发送即时免费支付。以下是一些状态通道项目的清单。

[**10 State Channel Projects Every Blockchain Developer Should Know About**
_What are State Channels and why should I care The whole world is going through a blockchain revolution. But people…_hackernoon.com][2]
_什么是状态通道，我为什么要关心整个世界正在经历区块链革命。但人...... _hackernoon.com] [2]

> **State channels are the general form of payment channels, applying the same idea to any kind of state-altering operation normally performed on a blockchain**.
> **状态通道是支付渠道的一般形式，将相同的想法应用于通常在区块链上执行的任何类型的状态改变操作**。

Moving these interactions off of the chain without requiring any additional trust can lead to _significant_ improvements in cost and speed. State channels will be a critical part of scaling blockchain technologies to support higher levels of use.
将这些交互从链中移除而不需要任何额外的信任可以导致成本和速度的显着改善。状态通道将是扩大区块链技术的关键部分，以支持更高的使用水平。

The basic components of a state channel are very simple:
状态通道的基本组件非常简单：

![][4]

A 2 way state channel
双向状态通道

1. **Part of the blockchain state is locked** via [multisignature][5] or some sort of smart contract, so that a specific set of participants must completely agree with each other to update it.
1. **区块链状态的一部分通过[多重签名][5]或某种智能合约被锁定**，因此一组特定的参与者必须完全同意才能更新它。
2. **Participants update the state amongst themselves** by constructing and signing transactions that _could_ be submitted to the blockchain, but instead are merely held onto for now. Each new update "trumps" previous updates.
2. **参与者通过构建和签署可以提交给区块链的交易来更新状态**，而不仅仅是暂时保留。每个新的更新都“胜过”以前的更新。
3. Finally, **participants submit the state back to the blockchain**, which closes the state channel and unlocks the state again (usually in a different configuration than it started with).
3.最后，**参与者将状态提交回区块链**，这将关闭状态通道并再次解锁状态（通常采用与开始时不同的配置）。

That's it! If the "state" being updated between participants was a digital currency balance, then we would have a payment channel. Steps 1 and 3, which open and close the channel, involve blockchain operations. But **in step 2 an unlimited number of updates can be rapidly made without the need to involve the blockchain at all** — and this is where the power of state channels comes into play, because only steps 1 and 3 need to be published to the network, pay fees, or wait for [confirmations][6]. In fact, with careful planning and design, state channels can remain open almost indefinitely, and be used as part of larger [hub and spoke systems][7] to power an entire economy or ecosystem.
而已！如果参与者之间更新的“状态”是数字货币余额，那么我们将有一个支付渠道。打开和关闭通道的步骤1和3涉及区块链操作。但是在步骤2中**可以快速进行无限数量的更新而无需涉及区块链**  - 这就是状态通道的功能发挥作用的地方，因为只需要发布步骤1和3到网络，支付费用，或等待[确认][6]。事实上，通过精心的规划和设计，状态通道几乎可以无限期地保持开放，并被用作大型[中心和辐条系统][7]的一部分，为整个经济或生态系统提供动力。

Despite my simple description here, state/payment channels have generally been perceived as [quite complicated][8]. There are several reasons for this, and one of them is that **there are some important subtleties hidden in my phrasing** of the three steps. Let's take a closer look at what these simple phrases imply, starting with:
尽管我在这里有简单的描述，但状态/支付渠道通常被认为是[非常复杂][8]。这有几个原因，其中之一是**在我的三个步骤的措辞中隐藏了一些重要的微妙之处。让我们仔细看看这些简单的短语意味着什么，从以下开始：

> could be submitted to the blockchain
> 可以提交给区块链

In order for state channels to work, participants have to be assured that they _could_ publish the current state of the channel to the blockchain at any time. This results in some important limitations, such as the fact that **someone has to stay online** to protect each individual party's interests until the channel is closed.
为了使状态通道有效，参与者必须确保他们可以随时将区域链的当前状态发布到区块链。这导致了一些重要的限制，例如**有人必须保持在线**以保护每个方的利益，直到通道关闭。

Imagine that when we initiated a payment channel I started with 100 bitcoins and you started with 10. If we first sign an update that transfers 10 of those bitcoins to me, and then _later_ sign an update that transfers 50 back to you, the later update is obviously more beneficial to you than the earlier one is. If you were to [unexpectedly lose internet access][9], and I were to pretend the second update never happened, I might be able to publish the first update to the blockchain and effectively _steal 50 bitcoins from you_! What you need is somebody to stay online with a copy of that later transaction so that they can "trump" the earlier one and make sure your bitcoins are protected. **It doesn't have to be you** — you could send a copy to many random servers who agree via smart contract to publish it only if needed (for a small fee of course). But however you do it, you need to be assured that the latest signed update to the state is available to trump all others. Which leads us to our next subtle phrase:
想象一下，当我们启动一个支付渠道时，我开始使用100个比特币，你从10开始。如果我们首先签署一个更新，将10个比特币转移给我，然后签署一个更新，将50转回给你，后来的更新显然比前一个更有益于你。如果你[意外地失去了互联网访问][9]，我假装第二次更新从未发生过，我可能会发布第一次更新到区块链，并有效地从你那里发送50比特币！你需要的是一个人留在网上用一个后来的交易副本，以便他们可以“胜过”前一个交易，并确保你的比特币受到保护。 **它不一定是你**  - 您可以将副本发送给许多随机服务器，这些服务器通过智能合约同意仅在需要时发布（当然只需支付少量费用）。但无论如何，您需要确保最新签署的状态更新可以胜过其他所有人。这引导我们进入下一个微妙的短语：

> Each new update "trumps" previous updates
> 每个新的更新都“胜过”以前的更新

To make this part of the state channel work, **the locking and unlocking mechanisms have to be properly designed** so that old state updates submitted to the blockchain have a chance to be corrected by the newer state updates which replaced them. **The simplest way is to have any unlocking attempt start a timer**, during which any _newer _update can replace the old update (restarting the timer as well). When the timer completes, the channel is closed and the state adjusted to reflect the last update received. The length of the timer would be chosen for each state channel, balancing the inconvenience of a long channel closing time with the increased safety it would provide against internet connection or [blockchain problems][10]. Alternatively, you could structure the channel with a financial penalty so that anyone publishing an inaccurate update to the blockchain will lose more than they could gain by pretending later transactions didn't happen.
为了使状态通道的这一部分工作，**必须正确设计锁定和解锁机制**，以便提交给区块链的旧状态更新有可能被替换它们的较新状态更新纠正。 **最简单的方法是让任何解锁尝试启动计时器**，在此期间任何新的更新都可以替换旧更新（也重新启动计时器）。当计时器完成时，关闭通道并调整状态以反映最后收到的更新。将为每个状态通道选择定时器的长度，平衡长通道关闭时间的不便与它对互联网连接或[区块链问题][10]提供的增加的安全性。或者，您可以通过财务惩罚来构建渠道，这样任何发布区块链不准确更新的人都会因为假装以后的交易没有发生而损失得更多。

But the mechanism ends up not mattering very much, because (going back to the previous point) the game theory of this situation puts a twist on things. **As long as this mechanism is theoretically sound, it will probably never have to be used**. Actually going through the timer/penalty process may introduce extra fees, delays, or other inconveniences; given that _forcing_ someone into the mechanism can't give you any advantage anyways, **parties to a state channel will probably just close the channel out by mutually agreeing** on a final channel state. This final close-out operation needs to be fundamentally different from the normal "intermediate" updates (since it will bypass the "trumping" mechanism above), so **participants will only sign a final close-out transaction once for each portion of the state locked within a particular channel**.
但是这种机制最终并不重要，因为（回到前一点），这种情况的博弈论对事物产生了扭曲。 **只要这种机制在理论上是合理的，它就可能永远不会被使用**。实际上，通过计时器/罚款过程可能会产生额外费用，延误或其他不便;鉴于强制有人进入机制无论如何都无法给你带来任何好处，**状态通道的参与者可能只是通过在最终通道状态上相互同意**来关闭通道。这个最终结束操作需要与普通的“中间”更新根本不同（因为它将绕过上面的“特朗普”机制），所以**参与者只会为每个部分签署一次最终结束交易。状态锁定在特定通道**。

The details of these "subtleties" aren't especially important. What it all ultimately breaks down to is that **participants open the channel by setting up a "judge"** smart contract, **sign promises to each other** which the judge can enforce and adjudicate if necessary, and then **close the channel by agreeing** amongst themselves so that the judge's adjudication isn't needed. As long as the "judge" mechanism can be assumed to be reliable, these promises can be counted as instant transfers, with the judge only appealed to in exceptional circumstances, such as when one party disappears.
这些“微妙之处”的细节并不是特别重要。最终分解的是**参与者通过建立一个“法官”**智能合约来打开渠道，**签署彼此的承诺**，如果有必要，法官可以执行和裁决，然后**通过同意**来关闭渠道，以便不需要法官的裁决。只要“判断”机制可以被认为是可靠的，这些承诺就可以算作即时转移，而法官只在特殊情况下提出上诉，例如当一方失踪时。

Of course, these details are only _part_ of the reason people think that state/payment channels are complicated. A much bigger one is that **Bitcoin payment channels _are _complicated**. Building a "judge" mechanism in Bitcoin with even [reasonably useful properties][11] is surprisingly intricate. But once you have a clear concept of state channels in general, you can see that **this only comes from trying to implement the idea in a constrained context**. Basic smart contract features like a timer mechanism and allowing two different paths to be taken depending on the signed message submitted are just plain harder to do in Bitcoin. Some of these features are being gradually added or built. By seeing that **payment channels are only a special subcase of the broader "state channel" idea**, we realise that this is a much broader technique, and that **state channels can apply to any smart contract** which deals with frequent updates between a defined set of participants. You can anticipate seeing this approach in many (if not most) distributed applications going forward.
当然，这些细节只是人们认为状态/支付渠道复杂的原因。更大的一点是**比特币支付渠道_8复杂**。在比特币中建立一个“判断”机制，甚至[合理有用的属性][11]令人惊讶地错综复杂。但是一旦你对状态通道有一个明确的概念，你可以看到**这只是试图在受约束的环境中实现这个想法**。基本的智能合约功能，如计时器机制，允许根据提交的签名消息采取两种不同的路径，这在比特币中更难做到。其中一些功能正在逐步添加或构建。通过看到**支付渠道只是更广泛的“状态通道”理念的一个特殊**，我们意识到这是一个更广泛的技术，**状态通道可以适用于任何处理的智能合约**定义的一组参与者之间的频繁更新。您可以预期在许多（如果不是大多数）分布式应用程序中看到这种方法。

Now we have a bit clear idea that what is a "state channel". So, let's move to side chain.
现在我们清楚地知道什么是“状态通道”。所以，让我们转向侧链。

### What are SideChains ?
### 什么是侧链？

> **A sidechain is a separate blockchain that is attached to its parent blockchain(mainchain) using a two-way peg.**
> **侧链是一个单独的区块链，使用双向挂钩连接到其父区块链（主链）。**

In other words, you can move assets to the sidechain and then back to the parent chain.
换句话说，您可以将资产移动到侧链，然后再移回父链。

![][13]

sidechain
侧链

The two-way peg enables interchangeability of assets at a predetermined rate between the parent blockchain and the sidechain. The original blockchain is usually referred to as the 'main chain' and all additional blockchains are referred to as 'sidechains'. The blockchain platform Ardor refers to its sidechains as 'childchains'.
双向挂钩使得能够在父区块链和侧链之间以预定速率互换资产。原始区块链通常被称为“主链”，所有其他区块链被称为“侧链”。区块链平台Ardor将其侧链称为“子链”。

A user on the parent chain first has to send their coins to an output address, where the coins become locked so the user is unable to spend them elsewhere. Once the transaction has been completed, a confirmation is communicated across the chains followed by a waiting period for extra security. After the waiting period, the equivalent number of coins is released on the sidechain, allowing the user to access and spend them there. The reverse happens when moving back from a sidechain to the main chain.
父链上的用户首先必须将他们的代币发送到输出地址，其中代币被锁定，因此用户无法在其他地方消费。交易完成后，将通过链条传达确认信息，然后等待一段时间以获得额外的安全性。在等待期之后，在侧链上释放相等数量的代币，允许用户访问并在那里使用它们。从侧链向主链移回时会发生相反的情况。

#### Federations
#### 联盟

A federation is a group that serves as an intermediate point between a main chain and one of its sidechains. This group determines when the coins a user has used are locked up and released. The creators of the sidechain can choose the members of the federation. A problem with the federation structure is that it adds another layer between the main chain and the sidechain.
联邦是一个组，作为主链和其中一个侧链之间的中间点。该组确定用户使用的代币何时被锁定和释放。侧链的创建者可以选择联盟的成员。联邦结构的一个问题是它在主链和侧链之间添加了另一个层。

Sidechains are responsible for their own security. If there isn't enough mining power to secure a sidechain, it could be hacked. Since each sidechain is independent, if it is hacked or compromised, the damage will be contained within that chain and won't affect the main chain. Conversely, should the main chain become compromised, the sidechain can still operate, but the peg will lose most of its value.
Sidechains负责自己的安全。如果没有足够的采矿能力来保护侧链，它可能被黑客入侵。由于每个侧链都是独立的，如果它被黑客入侵或受到损害，那么损害将包含在该链中并且不会影响主链。相反，如果主链受到损害，侧链仍然可以运行，但挂钩将失去其大部分价值。

Sidechains need their own miners. These miners can be incentivized through 'merged mining', whereby two separate cryptocurrencies, based on the same algorithm, are mined simultaneously.
侧链需要自己的矿工。这些矿工可以通过“合并挖掘”来激励，从而同时挖掘基于相同算法的两个独立的加密货币。

Here is a list of some of the Sidechain Projects.
以下是一些Sidechain项目的列表。

[**11 sidechain projects every blockchain developer should know about**
_The whole world is going through the blockchain revolution. But wait…is this really what we dreamed of? Present…_hackernoon.com][14]
_整个世界正在经历区块链革命。但等等......这真的是我们梦寐以求的吗？目前... _hackernoon.com] [14]

Now, we have a good understanding of sidechains too. So, let's put them to the ring.
现在，我们对侧链也有很好的理解。所以，让我们把它们放到戒指上。

### What problems are they trying to solve ?
### 他们试图解决什么问题？

> Both Sidechain and State Channel are tricks to improve the poor scalability of blockchains in general.
> 侧链和状态通道都是提高区块链可扩展性的技巧。

They both follow a bit same model.
他们都遵循相同的模型。

* Locking up state/assets.
* 锁定状态/资产。
* Doing transactions off the blockhain/mainchain.
* 在区块链 / 主链上进行交易。
* Unlocking the state/assets from the state channel/sidechain.
* 从状态通道/侧链解锁状态/资产。

But despite this analogy, there are many differences between the two which arises from the point that **_in State Channels we do not use a separate blockchain whereas in Sidechains we use a separate blockchain_**. Let's see what are its consequences.
但是，尽管有这样的比喻，两者之间存在许多差异，这些差异源于状态通道中** _我们不使用单独的区块链，而在侧链中我们使用单独的区块链_ **。让我们看看它的后果是什么。

### Which is a better scaling solution among the two ?
### 两者中哪个是更好的扩展解决方案？

To decide this, let's see their pros and cons.
要决定这一点，让我们看看它们的优缺点。

#### State Channel pros
#### 状态通道优点

* **State channels have strong privacy properties: **This is because everything is happening "inside" a channel between participants, rather than broadcast publicly and recorded on-chain. Only the opening and closing transactions must be public. Whereas in sidechains every transaction is published on the sidechain which is received by every participant on the sidechain irrespective of the fact that you are not interacting with all of the participants on the sidechain.
* **状态通道具有强大的隐私属性：**这是因为一切都发生在参与者之间的一个通道“内部”，而不是公开播放并记录在链上。只有开始和结束交易必须是公开的。而在侧链中，每个交易都发布在侧链上，而侧链上的每个参与者都会收到这些交易，而不管您是否与侧链上的所有参与者进行交互。
* **State channels have instant finality**, meaning that as soon as both parties sign a state update, it can be considered final. Both parties have a very high guarantee that, if necessary, they can "enforce" that state on-chain. But as discussed above that the state channel closing could take variable time considering the security level of the transaction. Whereas in sidechains you have a blockchain on the other side. So the finality depends on the mining power of the sidechain.
* **状态通道具有即时终结性**，这意味着一旦双方签署状态更新，就可以认为是最终的。双方都有很高的保证，如果有必要的话，他们可以“强制”执行该状态的链条。但如上所述，考虑到交易的安全级别，状态通道关闭可能需要不同的时间。而在侧链中，你在另一侧有区块链。因此，最终结果取决于侧链的挖掘能力。

#### State Channel **cons**
#### 状态通道缺点

* **_State Channels need 100% availability of all the participants involved: _**As we have discussed above that if anyone the participants goes unavailable, then this could prove costly to him. The participants can use someone to represent him if he goes unavailable, but the possibility of the representative getting attacked or bribed makes it a problem for state channel. Whereas in sidechains you don't have to be available all the time you are on the sidechain.
* ** _状态通道需要所有参与者100％的可用性：_ **正如我们上面所讨论的那样，如果参与者不可用，那么这对他来说可能是代价高昂的。参与者可以使用某人代表他，如果他不在，但代表受到攻击或贿赂的可能性使其成为状态通道的问题。而在侧链中，您不必在侧链上随时可用。
* **_State channels are best used for applications with a defined set of participants: _**This is because the Judge contract(the contract used to lock the state) must always know the participants/entities (i.e. addresses) that are part of a given channel. We can add and remove people, but it requires a change to the contract each time. Whereas in sidechains there is no such limitation on the movement of the participants.
* ** _状态通道最适用于具有一组已定义参与者的应用程序：_ **这是因为Judge合同（用于锁定状态的合同）必须始终知道作为其一部分的参与者/实体（即地址）给定的通道。我们可以添加和删除人员，但每次都需要更改合同。而在侧链中，对参与者的运动没有这样的限制。
* **_State Channels are particularly useful where participants are going to be exchanging many state updates over a long period of time:_ **This is because there is an initial cost to _creating_ a channel in deploying the Judge contract. But once it is deployed, the cost per state update inside that channel is extremely low.
* ** _状态通道在参与者将在很长一段时间内交换许多状态更新时特别有用：_ **这是因为在部署Judge合同时创建一个通道有一个初始成本。但是一旦部署，该通道内的每个状态更新成本极低。

#### Sidechain pros
#### 侧链有点

* **_Sidechains are permanent. You don't have create your own sidechain for specific purpose if there is one present: _**Sidechains are created and maintained once made. We don't close sidechains, rather we lock the assets on sidechain to move back to the mainchain. This can be helpful in the way that anyone who is doing a specific task off blockchain/mainchain (for eg. [transacting in dogecoin][15]) will come to the same sidechain. So, you don't have to create separate chains for every new participant. Whereas in state channels you usually have to create a new channel to add a new participant. But projects such as Lightning , Raiden network have come up with brilliant solution for this. They create a mesh of participants so you don't have to create a new channel for every new participant you interact with. You can interact with participants indirectly creating a channel between you and recipient through some other participant who is common to both: you and the recipient.
* ** _侧链是永久性的。如果存在一个，则没有为特定目的创建自己的侧链：_ **侧链是一旦创建并维护的。我们不关闭侧链，而是将资产锁定在侧链上以移回主链。这对于在区块链/主链上执行特定任务的任何人（例如在狗狗币[15]中进行交易）将来到同一个侧链的方式会有所帮助。因此，您不必为每个新参与者创建单独的链。而在状态通道中，您通常需要创建一个新渠道来添加新参与者。但Lightning，Raiden等网络项目已经为此提出了出色的解决方案。他们创建了一个参与者网格，因此您无需为与之交互的每个新参与者创建新通道。您可以通过与您和收件人共同的其他参与者间接地在您和收件人之间创建渠道，从而与参与者进行互动。
* **_Sidechains allow cryptocurrencies to interact with one another:_** They add flexibility and allow developers to experiment with Beta releases of Altcoins or software updates before pushing them on to the main chain. Traditional banking functions like issuing and tracking ownership of shares can be tested on sidechains before moving them onto main chains.
* ** _侧链允许加密货币互相交互_ **它们增加了灵活性，允许开发人员在将其推送到主链之前尝试使用Beta版本的Altcoins或软件更新。发布和跟踪股份所有权等传统银行业务可以在将其转移到主链上之前在侧链上进行测试。

#### Sidechain cons
#### 侧链缺点

* **_Sidechains need a lot of initial investment to start off: _**To create a sidechain we need to have enough miners so that the network is safe from attackers. Also, we have to make it sure that they are up and running. Whereas there is no blockchain involved in state channels. So, no such requirement is needed.
* ** _侧链需要大量的初始投资才能开始_ **要创建一个侧链，我们需要有足够的矿工，这样网络才能安全地抵御攻击者。此外，我们必须确保它们正常运行。而状态通道中没有区块链。因此，不需要这样的要求。
* **_A Federation is needed for sidechains: _**This adds another layer between the mainchain and the sidechain. This could prove as another weak point for the attackers to attack by bribing or attacking the federation. Whereas in state channel we just need a smart contract to do this for us.
* ** _侧链需要联邦_ **这会在主链和侧链之间增加另一层。这可能是攻击者通过贿赂或攻击联盟进行攻击的另一个弱点。而在状态通道，我们只需要一份智能合约来为我们做这件事。

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


