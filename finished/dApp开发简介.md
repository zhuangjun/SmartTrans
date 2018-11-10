

> 本文翻译自：https://thecontrol.co/a-brief-overview-of-dapp-development-b8ac1648322c
>

----------------------------------------------------



# dApp开发简介

去中心化式应用程序（dApps）对全世界的开发人员越来越感兴趣。与在iOS和Android等平台上构建的传统应用程序不同，dApp可以直接连接用户和开发人员，而无需中间人来托管和管理代码和用户数据。构建dApp不需要权限，也没有可以更改平台规则的公司或集中人员组。今天，在领先的dApp平台以太坊上构建了[超过1000个dApps][1]。

dApp的后端代码在去中心化的对等网络上运行。将此与后端代码在集中式服务器上运行的应用程序进行对比。 dApp可以使用任何编程语言编写其前端代码，以便对其后端进行API调用。此外，它的前端可以托管在去中心化存储上，如[IPFS][2]。

作为dApps的新手，开始的前景可能让人感到畏惧。这篇文章的目的是为新人提供当前景观的全貌。

####**传统应用程序开发与dApp开发之间的主要区别**

dApp开发与传统应用程序开发之间的最大区别在于，在将代码推向生产之前必须仔细检查代码的严格程度。在这方面，dApp开发实际上更像是硬件开发而不是软件开发。****在硬件开发中，需要在向公众提供产品之前进行严格的测试和原型设计。硬件召回需要花费大量资金，需要很长时间才能修复，并损害了制造商的声誉。同样，在dApp开发中，智能合约一旦在主网上启动就无法更改。智能合约中的一个错误会丢失用户的资金并损害dApp开发人员的声誉。

相比之下，传统的应用程序开发往往强调[快速迭代周期][3]作为最佳实践。作为开发人员，您希望构建最低可行性产品，让人们测试产品，并尽快发布更新版本。像Facebook这样的传统应用程序的座右铭是“快速移动并破坏事物”，这并不是dApp开发的最佳座右铭。

![][6]

在活动和思想共享方面，以太坊目前是主导的dApp平台

### 以太坊是dApp运动的先锋

以太坊是第一个基于区块链的主要平台，用于构建图灵完整语言，用于编写区块链智能合约，并迅速成为dApp开发的首选平台。 [前70个dApps中的91个][7]建立在以太坊上，[从76开始][8]超过半年前。与下一个区块链社区相比，以太坊的开发人员数量增加了30倍[9]。

#### **dApp开发的编程语言**

[**Solidity**][10]是在以太坊上编程dApp的标准语言。 [CryptoZombies][11]是一个很棒的教程，它教你如何开始在Solidity中构建dApps。

尽管Solidity很受欢迎，但它的语言设计还有很多[问题][12]。目前正在开发的几种[新编程语言][13]可以成为编制智能合约的Solidity的替代品。

[**Vyper**][14]****是一种比Solidity简单得多的实验语言。 Vyper通过使代码尽可能易读，从而提高安全性，简单性和可审计性，从而使编写错误代码变得困难。因此，Vyper在其能力方面受到的限制更为有限。它不支持Solidity的许多功能，例如修饰符，类继承，内联汇编，运算符重载，递归调用，无限长循环和二进制不动点。

以太坊的另一种潜在语言是**Simplicity**，这是上个月在[斯坦福][15][BPASE][16][会议][17]提出的。简单性解决了四个问题。首先，Simplicity通过计算程序的资源成本来避免拒绝服务。其次，Simplicity通过使用静态分析工具来限制资源成本，从而避免耗尽气体。第三，简单性通过使用[Coq][18]（一种形式验证工具）来证明程序正确性，从而避免了攻击。最后，Simplicity通过在区块链出现之前修剪未使用的代码来增加隐私。

鉴于安全性在智能合约中的重要性，正式验证在dApp开发中比在传统应用程序开发中更常见。 [形式验证][19]是检查算法是否满足某些逻辑要求的过程。使用[Isabelle][20]和[Coq][21]等形式验证工具，您可以证明代码是无错误的，就像数学家如何证明定理是真的一样。

简单属于函数式语言系列（Haskell，Clojure，Lisp，OCaml等）。功能语言通常不受开发人员的欢迎;实际上，[Github上[最受欢迎的15种语言][22]中没有一种是函数式语言。尽管如此，另一个dApp平台[Tezos][23]使用函数式语言[**Liquidity**][24]来编写智能合约。如果安全性成为以太坊dApps的主要问题，那么功能语言将来会变得更加流行。

#### **用于dApp开发的开发人员工具**

有许多用于编程智能合约的以太坊[开发人员工具][25]。以下是一些最受欢迎的工具：

[**Parity**][26]****是用新的低级语言Rust编写的以太坊客户端。许多项目依赖于这个工具，因此[Parity Wallet hack][27]导致514k ETH被冻结的原因。 [**Truffle**][28]提供了快速创建，编译，部署和测试dApp的工具。 [**EthPM**][29]****是以太坊的包裹经理，[**Oyente**][30]是智能合约的静态分析工具，[**Remix**][31 ]是浏览器内的Solidity编辑器和编译器。

除了开发人员工具之外，还有[最佳实践][32]用于智能合约安全，以及[**Zeppelin**][33]等服务来审核部署在以太坊测试网络上的智能合约。 Zeppelin甚至提供游戏[**Ethernaut**][34]****来测试你的智能合约安全技能。

#### **关于以太坊dApp开发的误解**

**基于以太坊的dApp实际上包含非常少的智能合约代码。**在大多数dApp的宏伟计划中，智能合约占整个代码库及其功能的一小部分。智能合约是_on-chain_，意味着代码直接与区块链交互。相反，_off-chain_code不直接与区块链交互。

在[Storj][35]的情况下，[智能合约][36]（仅占整个代码库的9％）仅存在以提供交易逻辑。没有用于存储和加密共享文件，广播节点或光盘使用规则的代码。处理上述组件的功能代码库位于NodeJS编写的[独立存储库][37]中。类似地，在[Golem][38]的情况下，[智能合约][39]仅占代码库的3％，并且执行所有繁重工作的[codebase][40]用Python编写。

### 下一代dApp平台

在以太坊上开发dApp需要学习自定义编程语言。有下一代dApp平台允许您使用Python和JavaScript等传统语言进行开发，作为主要区别。

#### **Tendermint / Cosmos**

[Tendermint][41]由两部分组成：区块链共识引擎和通用应用程序接口。称为Tendermint Core的共识引擎确保在同一序列中的每台机器上记录相同的交易，以实现[拜占庭容错][42]。名为[Application Blockchain Interface][43]（ABCI）的应用程序接口构建在Tendermint Core之上，可以使用任何编程语言处理交易。

[Cosmos][44]是一个基于Tendermint的平台，允许您在任何编程语言中的不同区块链之间构建可互操作的dApp。如果您的应用程序需要主权和灵活性，那么您可以开发自己的区块链，而无需处理复杂的网络和共识部分的软件。相比之下，如果您的应用程序规模较小且不需要自己的区块链，那么您可以在[Ethermint][45]上进行开发，让您可以完成以太坊所做的一切，但性能更快。

#### **Blockstack**

[Blockstack][46]是用于构建用户拥有其个人数据的dApp的新平台。 Blockstack上的dApp是使用JSON REST API与底层Blockstack Core通信的链下程序。这些dApp可以用你想要的任何语言编写，Blockstack有一个很棒的[教程][47]，教你如何在其平台上构建dApp。

#### Neo

另一个区块链[Neo][48]提供对Python，Java和C#的支持，最终将支持在其平台上用JavaScript，Golang和C / C ++编写的程序。 Neo将这些语言编译为Neo虚拟机的指令。凭借多语言支持，它为90％以上的开发人员提供服务，而无需学习新语言。

### 以太坊与下一代dApp平台向前发展

如果你是一个新的开发人员，你当然应该自己评估一下，但在我看来，编程语言的选择不太可能成为大多数关于是否在以太坊，Cosmos，Blockstack，Neo上构建dApp的决定性因素，或其他平台。

网络效果通常比编程语言的选择重要得多 - 您希望首先最大化dApp的用户数量。如果拥有最多用户，大多数开发人员将在某个平台上构建应用程序，同样会有更多用户涌入具有最多应用程序的平台。历史还表明，如果对此类平台（Apple Store，NVIDIA GPU）上的应用程序有足够的需求，开发人员愿意学习专有语言（Objective-C / Swift，CUDA）。鉴于今天的趋势和历史数据，以太坊可能成为统治dApp开发的唯一链条。

_Note：可扩展性和治理是本文范围之外的考虑因素，可能成为未来构建下一代区块链的理由。今天，开发者体验+以太坊的网络效果相对于现有的替代方案是无与伦比的._

#### 一些额外的资源

* [以太坊开发演练][49]（第1-5部分）：以太坊和dApps的背景
* [CryptoZombies][11]：交互式代码学校，可以帮助您快速开始使用dApp
* [以太坊StackExchange][50]：有帮助的社区，可以快速回答问题
* [以太坊游戏开发者在1天内赚取超过500,000美元][51]：这篇文章展示了dApp开发激励的承诺

[1]: https://www.stateofthedapps.com/
[2]: https://ipfs.io/
[3]: https://www.amazon.com/Effective-Engineer-Engineering-Disproportionate-Meaningful/dp/0996128107/ref=sr_1_1?ie=UTF8&qid=1518907370&sr=8-1&keywords=effective+engineer
[4]: https://cdn-images-1.medium.com/freeze/max/75/1*50S4nt0B29TUIMF4XdTV5A.png?q=20
[5]: https://thecontrol.co/undefined
[6]: https://cdn-images-1.medium.com/max/1500/1*50S4nt0B29TUIMF4XdTV5A.png
[7]: https://coinmarketcap.com/tokens/
[8]: https://techcrunch.com/2017/06/08/how-ethereum-became-the-platform-of-choice-for-icod-digital-assets/
[9]: https://media.consensys.net/andrew-keys-ethereum-has-30-times-more-devs-than-the-next-blockchain-community-27980a5ddc09
[10]: https://solidity.readthedocs.io/en/develop/
[11]: https://cryptozombies.io/
[12]: https://news.ycombinator.com/item?id=14691212
[13]: https://github.com/ethereum/research/wiki/Problems#24-high-level-languages-hlls-40
[14]: https://github.com/ethereum/vyper
[15]: https://www.youtube.com/watch?v=VOeUq3oR2fk
[16]: https://cyber.stanford.edu/sites/default/files/slides-bpase-2018.pdf
[17]: https://arxiv.org/pdf/1711.03028v2.pdf
[18]: https://coq.inria.fr/
[19]: https://media.consensys.net/how-formal-verification-can-ensure-flawless-smart-contracts-cbda8ad99bd1
[20]: https://isabelle.in.tum.de/
[21]: https://coq.inria.fr
[22]: http://www.businessinsider.com/the-9-most-popular-programming-languages-according-to-the-facebook-for-programmers-2017-10#15-objective-c-1
[23]: https://www.tezos.com/
[24]: https://github.com/OCamlPro/liquidity
[25]: https://hackernoon.com/11-best-ethereum-development-tools-to-grow-your-stack-e782fd7156ab
[26]: https://www.parity.io/
[27]: https://medium.freecodecamp.org/a-hacker-stole-31m-of-ether-how-it-happened-and-what-it-means-for-ethereum-9e5dc29e33ce
[28]: https://github.com/ConsenSys/truffle
[29]: https://github.com/ethpm/ethpm-spec
[30]: https://github.com/melonproject/oyente
[31]: https://remix.ethereum.org/
[32]: https://consensys.github.io/smart-contract-best-practices/
[33]: https://zeppelin.solutions/
[34]: https://ethernaut.zeppelin.solutions/
[35]: https://storj.io/
[36]: https://github.com/Storj/storj-contracts/tree/master/contracts
[37]: https://github.com/Storj/core
[38]: https://golem.network/
[39]: https://github.com/golemfactory/golem-contracts
[40]: https://github.com/golemfactory/golem
[41]: https://tendermint.readthedocs.io/projects/tools/en/master/introduction.html#what-is-tendermint
[42]: https://en.wikipedia.org/wiki/Byzantine_fault_tolerance
[43]: https://tendermint.readthedocs.io/projects/tools/en/master/introduction.html#abci-overview
[44]: https://cosmos.network
[45]: https://github.com/tendermint/ethermint
[46]: https://blockstack.org
[47]: https://blockstack.org/tutorials
[48]: https://neo.org/
[49]: https://hackernoon.com/ethereum-development-walkthrough-part-1-smart-contracts-b3979e6e573e
[50]: https://ethereum.stackexchange.com/
[51]: https://medium.com/@skirmantas.januskas/ethereum-game-developer-makes-over-500-000-in-1-day-84178d5e5fc3



#### 区块链中文字幕组

致力于前沿区块链知识和信息的传播，为中国融入全球区块链世界贡献一份力量。

如果您懂一些技术、懂一些英文，欢迎加入我们，加微信号:w1791520555。

[点击查看项目GITHUB，及更多的译文...](https://github.com/BlockchainTranslator/EOS)

#### 本文译者简介

小丹 区块链技术爱好者  热衷于区块链底层技术研究

版权所有，转载需完整注明以上内容。

----------------------------------------------------
