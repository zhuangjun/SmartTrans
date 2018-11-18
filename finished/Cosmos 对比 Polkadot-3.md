
> 本文翻译自：https://medium.com/@davekaj/blockchain-interoperability-cosmos-vs-polkadot-48097d54d2e2
>
> 由于篇幅较长， 本文将分成3个部分
> * Cosmos 详细介绍 
> * Polkadot 详细介绍
> * Cosmos和Polkadot 对比 （本文）
-----------------------------------------------

### 比较Cosmos和Polkadot

让我们来看看每个网络的主要组件，以及它们如何相互叠加。这是文章的多汁部分，您可以比较差异并自行决定哪个网络可能更成功！

#### **共识协议**

他们都使用Tendermint进行PBFT共识，尽管Polkadot承诺与Aurand使用混合共识。混合方法将加速达成共识，但可能导致块的恢复。这两种方法仍然需要在实时区块链网络上进行战斗测试。这两种协议都比以太坊或比特币的工作量证明协议快得多。

Polkadot还在他们的网站上提到他们打算使用[“乐观的BFT权威证明”][17]，但不清楚它们的含义是什么。 [Web3基金会最近表示][18]“Polkadot被设想为完全公开和公开，没有任何特定的组织或信任的权威来维护它。”从Polkadot在白皮书中提出的整体设计来看，很明显，Dots的股权证明将成为达成共识的主要因素。如果使用了权威证明，它可能只是次要角色。

#### **通证和证明设计**

他们都有一个用于治理和赌注的通证。每个都有Validators保护网络，然后是将通证绑定到Validator的Delegators / Nominators。 Polkadot已加入Collat​​ors以帮助Parachains，而Fisherman则会密切注意任何不良演员。他们中的任何一方都会对不良演员进行大幅削减，并且在网络发布时可能会对调整参数进行调整和测试。 Polkadots股权证明设计更先进，但这也使它变得更加复杂。

Cosmos的优势在于它们将首先脱离Mainnet，它们的简单设计将使利益相关者更容易组织和创建稳定的去中心化网络。 Polkadots的优势在于四个利益相关者允许网络更加去中心化。很难找出哪种策略能更好地运作，但时间会证明。

#### **治理**

Cosmos在治理方面的协议不太复杂，因为它仅基于Validators，Delegators和成文宪法。

Polkadot在治理方面承诺更多，通过增加自适应仲裁偏见，以及一个对利益相关者投票率较低的提案进行投票的Validators委员会。

实时区块链中的股权证明治理在很大程度上未经过测试，并且可以期望两个团队提出在一开始就调整治理协议的提案。这两种设计都很简单，通过小规模的迭代和改进，可以实现更强大的去中心化治理体系。最好从简单开始并增加复杂性，而不是在一开始就强加一堆规则和规则。

网络似乎也足够去中心化，以防止一些验证器控制网络。希望这将使他们能够避免EOS Mainnet推出的一些问题，因为他们被指控过于集中的21个街区生产商的低门槛。

#### **安全**

Polkadot允许Parachains和Relay Chain之间的共享池安全性，而Cosmos已经将它留给了区域来保护自己的网络。这些意味着为了开始一个新的Parachain，你需要积累大量的Dots，然后放入它们以便将你的Parachain连接到Polkadot网络。因此，每个Parachain的安全性都植根于Dots本身，这为整个网络创建了一个共享的安全模型。

Cosmos计划允许区域管理自己的安全模型，即所谓的主权区域。 Cosmos Hub将使用治理来决定允许哪些区域连接到它。其他Hub和Zone可以选择自己的安全方法，为网络提供了很大的灵活性。

在任何情况下，只能与您信任的另一个区域或集线器进行IBC通证转移。区域可能会秘密计划在未来审查交易，因此您需要查看区域的历史记录并确定它们是否真正去中心化且值得信赖。但是，对于任何区块链都是如此，因为您不希望将比特币换成另一个您从未听说过的区块链通证。

重要的是要注意，在进行IBC转移时，您必须信任与您交换通证的区域以及任何中继者。如果您在区域B上收到源自区域A但通过集线器（区域A  - > 宇宙集线器 - > 区域B）的通证，则您需要信任所有三个区块链（不仅是区域A）。

在区块链之间交易通证时，通常所做的事情是类似的，因为您需要信任用于交换数字货币的集中交换。您必须信任区块链A和B，以及作为受信任的第三方的集中交换。

通过Cosmos的Sovereign Zones，每个连接的区域都必须自己创建一个安全的去中心化网络。因此，如果Cosmos Hub有5个完全可用的区域，则可能有100个Cosmos验证器和5个100区域验证器。这是一个比Polkadot更去中心化的模型，如果它工作，它应该工作得很好。

可以想象，100个Polkadot验证器可以保护中继链和5个子链，而Cosmos Network需要100个Hub验证器和500个区域验证器。这表明Polkadots模型可以更容易地创建新的Parachains，但这也意味着功能集中在Dot所有权上。 Cosmos允许更去中心化的安全模型，但实施起来会更困难。

但是，Cosmos表示他们还计划在发布后不久支持共享安全模型。一旦他们拥有了这个，它就为开发人员提供了更大的灵活性，因为在Cosmos上他们可以共享以Atoms为根的安全性，或创建自己的通证和安全性。他们正在制定这两种模式的权衡是通过治理将Sovereign Zones添加到网络中，这为恶意区域连接提供了可能性，尽管这种情况不太可能发生。

Polkadot的一个独特功能是无需fork即可升级运行时。他们通过在链上实际存储WebAssembly运行时来实现这一点。未更新其本地版本客户端的节点将被强制使用此运行时。这消除了对验证器进行链下协调以更新其软件的需要，这通过消除链分裂的可能性来增加安全性。

#### **速度和可扩展性**

两种共识协议都允许每秒1000次的交易处理。这取决于有多少节点以及参数是什么。对于添加的每个Parachain或Zone，它将增加可以完成的交易量，轻松达到两个网络每秒1000次的交易。实际的瓶颈将出现在每个Zone或Parachain中运行的状态机应用程序中。

#### **互操作性**

每个网络都使用链中继来连接到中央集线器。他们都使用Peg Zones / Bridges连接到Ethereum Mainnet，他们都希望能够非常快速地建立这种连接。它们都可以轻松地在各自的网络上运行EVM Zones / EVM Parachains。在Mainnet发布稳定后，Cosmos将推出Ethermint，而Polkadot可能会做类似的事情。

#### **开发人员**

Cosmos-SDK和Polkadots Substrate与开发平台的想法相同。它们使开发人员可以轻松地在网络上创建自己的区块链。两个团队都致力于开发人员友好，并试图打开一个新的开发平台。就像以太坊用智能合约和代币一样。

每个平台上的开发不同的是Polkadots对WebAssembly和Rust的承诺，以及Cosmos对Golang的承诺。

Polkadot通过支持WebAssembly展望未来。 WebAssembly得到谷歌，苹果，微软和Mozilla的支持，很有可能在未来十年内得到广泛应用。 [17] Rust也一直在努力成为编译成WebAssembly的主要语言之一。在5年的展望中，似乎Polkadot正在采取正确的措施来长期吸引开发商。

然而，正如我们在以太坊中看到的那样，有时首先进入市场更为重要。还有其他智能合约区块链允许用其他语言编写智能合约，但以太网几乎涵盖了所有智能合约活动，因为他们建立了一个围绕Solidity和EVM的生态系统，这个生态系统早期与开发人员相关。

Cosmos将率先推向市场。在Cosmos上开发的主要方式是在Golang中通过Cosmos-SDK，他们还有[Lotion-JS][19]这是一个Javascript实现，可以在Tendermint之上创建区块链。 [但网站声明，Lotion-JS][20]代码未经过安全审核，如果您想保护价值，请使用Cosmos-SDK。

目前，Cosmos没有支持WebAssembly的工作。但是你可以在很快就打赌Golang将增加对编译到WebAssembly的支持。 [他们已经取得了很好的进展][21]。最后，与Rust相比，Golang也是一种比较简单的学习语言，全球有更多Golang开发人员。

**主网发布**

Cosmos将于2018年第三季度推出。但他们表示，他们将锁定交易，直到网络稳定，并且开放回滚，直到每个人都确信网络可以安全运行。

Polkadot将于2019年第三季度推出，因此他们将为Cosmos提供一年的领先优势。

Cosmos似乎在这里具有优势，但Polkadot也有机会学习Cosmos的错误。

### 摘要

现在很难说哪个网络会更成功。但可以肯定地说，无论哪一个吸引更多的开发人员将是增长最快并占据市场最大份额的开发商。

作为开发人员，如果你认为Cosmos会更成功，你会想要开始学习Golang，如果你相信Polkadot，你会想要开始学习Rust和WebAssembly。您还可以使用编译为WebAssembly的任何其他语言编写parachain，例如C或C ++。

虽然最终会比另一个更大，但值得注意的是，它们可能拥有一个既存在又相互联系的世界。例如，如果两个网络都在以太坊主网上创建Peg Zones / Bridges，那么您可以使用Dots的ERC20副本交换原子的ERC20副本。这将允许两个网络完全互操作。这可能会创建一个巨大的交织区块链网络，其中以太坊，所有Parachains和所有区域的所有通证都是可互操作的。这样就可以连接[以太坊等离子体链][22]。

正如您所看到的，Polkadot和Cosmos创建区块链可互操作网络的网络效应是天文数字。值得花时间关注每个网络的进展，并为两者取得成功。


[1]: https://cdn-images-1.medium.com/max/1600/1*pNbvt8A0i0eCqZQXvebuEw.png
[2]: https://cosmos.network/
[3]: https://polkadot.network/
[4]: https://cdn-images-1.medium.com/max/1600/1*_uyjLy8_ZjaRuLJCsr3XhA.png
[5]: https://cdn-images-1.medium.com/max/1600/1*wZrMqYyYHnEXGGe6O5W6aQ.jpeg
[6]: https://cdn-images-1.medium.com/max/1600/1*K44yfQ-uiXosLtOCPUK8Dw.jpeg
[7]: https://cdn-images-1.medium.com/max/1600/1*t0q7E6Nh3y5DNqnteiXf2w.png
[8]: https://cdn-images-1.medium.com/max/1600/1*fZQKLXyQVb1qBO_I3K_mrw.png
[9]: https://cdn-images-1.medium.com/max/1600/1*gqhdqGDUqw7bRJyafrIg2g.jpeg
[10]: https://blog.cosmos.network/latest-in-cosmos-critical-community-update-may-4350bc6cc25
[11]: https://cdn-images-1.medium.com/max/1600/0*wjI7MxXZlimQaeA6.jpg
[12]: https://cdn-images-1.medium.com/max/1600/1*gau9098Iz5sjoN9ZefgBEg.png
[13]: https://cdn-images-1.medium.com/max/1600/1*1jJHpW4PxdyrJMv3Hx_YgQ.png
[14]: https://cdn-images-1.medium.com/max/1600/1*wFZ5uKEEf-V9zne9tSK_dw.png
[15]: https://en.wikipedia.org/wiki/Adaptive_bias
[16]: https://cdn-images-1.medium.com/max/1600/1*sQ2a9hvc5E736kg9-uhAzQ.png
[17]: https://polkadot.network/#roadmap
[18]: https://medium.com/web3foundation/investigating-short-term-scaling-solutions-for-ethereum-a5951fee8967
[19]: https://github.com/keppel/lotion
[20]: https://lotionjs.com/
[21]: https://github.com/golang/go/issues/18892
[22]: https://plasma.io/
[23]: https://static1.squarespace.com/static/55f73743e4b051cfcc0b02cf/t/5886800ecd0f68de303349b1/1485209617040/Chain+Interoperability.pdf
[24]: https://tendermint.com/static/docs/tendermint.pdf
[25]: https://blog.cosmos.network/understanding-the-value-proposition-of-cosmos-ecaef63350d
[26]: https://cosmos.network/whitepaper
[27]: https://blog.cosmos.network/a-beginners-guide-to-ethermint-38ee15f8a6f4
[28]: https://blog.cosmos.network/the-internet-of-blockchains-how-cosmos-does-interoperability-starting-with-the-ethereum-peg-zone-8744d4d2bc3f
[29]: https://blog.cosmos.network/introducing-the-hard-spoon-4a9288d3f0df
[30]: https://github.com/w3f/polkadot-white-paper/blob/master/PolkaDotPaper.pdf
[31]: https://www.youtube.com/watch?time_continue=2&v=iUMZyL5kTwc
[32]: https://polkadot.network/Polkadot-lightpaper.pdf
[33]: https://medium.com/polkadot-network/how-polkadot-tackles-the-biggest-problems-facing-blockchain-innovators-1affc1309b0f
[34]: https://www.youtube.com/watch?v=VsZuDJMmVPY&feature=youtu.be&t=24703
[35]: https://medium.com/polkadot-network/now-live-polkadot-proof-of-concept-1-3e718512a8d
[36]: https://en.wikipedia.org/wiki/WebAssembly


#### 区块链中文字幕组

致力于前沿区块链知识和信息的传播，为中国融入全球区块链世界贡献一份力量。

如果您懂一些技术、懂一些英文，欢迎加入我们，加微信号:w1791520555。

[点击查看项目GITHUB，及更多的译文...](https://github.com/BlockchainTranslator/EOS)

#### 本文译者简介

小丹 区块链技术爱好者  热衷于区块链底层技术研究

版权所有，转载需完整注明以上内容。

----------------------------------------------------
