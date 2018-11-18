
> 本文翻译自：https://medium.com/@davekaj/blockchain-interoperability-cosmos-vs-polkadot-48097d54d2e2
>
> 由于篇幅较长， 本文将分成3个部分
> * Cosmos 详细介绍 
> * Polkadot 详细介绍（本文）
> * Cosmos和Polkadot 对比
-----------------------------------------------

### **Polkadot**

Polkadot网络是另一个与强大的技术团队一起解决区块链互操作性的项目。 Polkadot由Parity开发，Parity是同名的Ethereum客户端背后的团队，用Rust语言编写。

![][11]

Polkadot网络[10]

### 技术设计和协议

#### **共识**

正如Cosmos所做的那样，他们还将共识架构与州应用程序分离开来。根据他们的白皮书，他们的共识引擎实际上受到了Tendermint和HoneyBadgerBFT的启发。 [11]

![][12]

Polkadot技术堆栈的细分。具有共识作为外层的对等网络，其通过WebAssembly解释器连接到区块链状态机。 [12]

然而，最近在Youtube视频中他们提到他们计划在Aurand和Tendermint上使用混合共识机制用于PBFT。 Aurand允许随机选择的Validator提出一个块，而不需要2/3的共识。混合设计允许更快的共识，但它也带来了如果Validator恶意行为则必须恢复某些块的可能性。 [12]

![][13]

Tendermint PBFT和Aurand的混合设计。 Tendermint保证了该图中每5个区块的最终结果，而其间的四个区块可以快速处理而无需2/3的共识。它比PBFT快，但有折衷。现在可以发布坏块，需要还原它们。 [12]

### Polkadots互操作性

Cosmos和Polkadot的互操作性策略也类似。 Polkadot网络具有中继连接器，它是中央连接器，其功能类似于Cosmos Hub。它有连接到中继链的区块链，它们命名为Parachains。 Cosmos Zones和Parachains具有相同的用途。 Polkadot还将拥有连接现场区块链的桥梁，类似于Cosmos的Peg Zones。

#### **Parachains**

Parachains和Cosmos Zones都使用链中继来实现区块链互操作性。但他们的实施确实不同。最大的区别在于他们计划如何连接链并共享安全性。使用Polkadot，可以汇集和共享网络安全。这意味着各个链条可以利用集体安全性，而无需从头开始获得牵引力和信任。 [13]

这是通过粘合点来创建新的Parachains，以及通过取消粘合点去除无用的Parachains来完成的。 Cosmos不要求Atoms被绑定以创建另一个链，他们使用治理来决定主要的Cosmos Hub是否应该连接到Cosmos Zone。 [13]

#### **桥梁**

Bridges和Peg Zones是同一件事的两个名字。它们都允许连接到实时区块链网络，例如以太坊主网。预计Cosmos和Polkadot都希望在开始时快速连接到以太坊主网。

#### 实现两个链之间的互操作性

如前所述，第一个与Cosmos Hub互操作的链将是Ethermint。 Polkadot很可能也会创建一个。他们应该没有太多麻烦，因为他们已经拥有了以太网奇偶校验客户的这么多经验。

#### Polkadot网络

Polkadot Network是一个权益证明区块链，其原生代币是“Dots”。 Dots提供治理，以及通证持有者以诚实的方式行事的游戏理论激励。网络中心枢纽是中继链，其功能类似于cosmos中心在cosmos网络中的作用。网络将验证者，提名者，合作者和渔民作为四个主要的利益相关者。 [13]波尔卡多也削减惩罚不良行为。

Polkadot上的验证器与Cosmos中的验证器具有相同的目的，而Polkadot中的Nominators就像Cosmos中的委托人一样。 [11]下面的Polkadot白皮书中的图表显示了每个股东如何相互作用。

![][14]

Polkadot Network四个股东之间的互动。 [11]

验证者不会期望维护所有Parachains的完全同步的数据库，因为存储的数据太多。因此，验证者将把存储和验证新的Parachain块的任务交给第三方，称为Collat​​or。 Collat​​ors的主要功能是生成有效的Parachain块。他们必须维护一个完整的节点。他们将执行一个没有密封知识证明的未密封块，并将其提供给一个或多个负责向中继链提出Parachain块的验证器。 Collat​​ors和Validators将收取这些任务的交易费用。 [11]

渔民就像独立的赏金猎人一样寻求大笔奖励。预计仅仅存在它们将导致不良行为很少发生，因为验证者和合作者知道他们会被抓住并被削减。渔民将发送Validators或Collat​​ors创建的任何非法活动的证据。 [11]

治理有几个层次，主要是通过Dots在网络上投票。他们还计划设立一个由12-24个账户组成的理事会，对没有得到利益相关方关注的提案进行投票。 [14]这是低选民投票率的备用解决方案。他们承诺会增加[Adaptive Quorum Biasing][15]。他们为增加不同的投票指标打开了大门，例如为长期持有者或验证者，甚至是长期为网络做出贡献的dApp团队赋予更多权重。 [15]但这些只是目前的想法。

#### **主网启动时的当前状态**

他们的第一个概念证明已经能够验证块并同意状态转换。他们已经能够通过一个测试网发送几个点。概念证明是用Rust编写的，运行时是在WebAssembly上构建的。 [16]

他们宣布了2019年第三季度的目标发布日期，并且一直表示他们正在努力实现这一目标。 [16]

### 开发人员在Polkadot上构建

#### **Substrate**

Substrate是一个用于构建区块链的技术堆栈。这与Cosmos使用The Cosmos SDK所做的完全相似。 Polkadot网络建立在Substrate之上，就像Cosmos Hub建立在Cosmos SDK之上。您不必担心共识或网络，您可以只关注区块链应用程序。

Substrate是用Rust编写的，但状态机的核心功能编译成WebAssembly。它可以使用编译的Rust代码或通过WebAssembly解释器本机运行。 [14]这可以在下图中看到。

![][16]

如果本机客户机节点是最新的，它可以本机运行WebAssembly代码，但如果不是，则必须使用on链式WebAssembly解释器，这将更慢。 [12]

#### **在Polkadot上构建dApp**

您可以在支持智能合约的Parachains之上构建dApp。这类似于Cosmos，其中Polkadot Relay Chain和Cosmos Hub都没有智能合约支持，但它们的连接链可以。

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
