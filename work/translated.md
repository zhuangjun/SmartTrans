
https://hackernoon.com/on-the-network-effects-of-stores-of-value-4286f6c98cdc
https://hackernoon.com/on-the-network-effects-of-stores-of-value-4286f6c98cdc

# On The Network Effects Of Stores Of Value
# 关于价值存储的网络效应

This post is a spiritual successor to [The Smart Contract Network Effect Fallacy][1].
这篇文章是[智能合约网络效应谬误][1]的精神继承者。

Bitcoin has a network effect. Many crypto evangelists assert that the network effect of Bitcoin is so strong that [hyperbitcoinization][2] is inevitable.
比特币具有网络效应。许多加密福音传道者断言，比特币的网络效应是如此强大，以至于[超比特币化][2]是不可避免的。

But this is not quite right. Bitcoin's network effect as digital gold is not what many assert that it is. Network effects are nuanced, and generally misunderstood.
但这不太对。比特币作为数字黄金的网络效应并不像许多人所说的那样。网络效应是微妙的，并且通常被误解。

In this essay, I'll explore the network effects of Bitcoin as digital gold, and as digital cash. I'll also explore other competitive moats that are not network effects.
在这篇文章中，我将探讨比特币作为数字黄金和数字现金的网络效应。我还将探索其他不具备网络效应的竞争性护城河。

For general background, I recommend this [Medium post][3], this a16z [slideshow][4], this [Techstars post][5], and this post on [data network effects][6]. For longer-form reading on network effects and technology platforms more generally, I recommend [Platform Scale][7] and books by the author Sangeet Choudary.
对于一般背景，我推荐这个[Medium post][3]，这个a16z [幻灯片][4]，这[Techstars帖子][5]，以及[数据网络效果][6]上的这篇文章。对于更广泛的网络效应和技术平台的长篇阅读，我推荐[平台规模][7]和作者Sangeet Choudary的书籍。

**Foundations Of Network Effects**
**网络效应的基础**

Network effects are an _emergent_ _property_ that occur when:
网络效应是_emergent__property_，在以下情况下发生：

_A product or service becomes more valuable to its existing users as more people use it._
_随着越来越多的人使用它，产品或服务对现有用户变得更有价值._

There are a few different kinds of network effects:
有几种不同的网络效应：

_Direct Network Effects_ — increases in usage lead to direct increases in value.
_直接网络效应_ - 使用量的增加导致价值的直接增加。

![][9]

Direct network effects work because existing users gain the option to interact with an increasing number of people as the underlying product/service is adopted. Basically all closed-loop communication networks exhibit this type of network effect, including Internet-based services such as Facebook and Whatsapp.
直接网络效应起作用，因为当采用基础产品/服务时，现有用户可以选择与越来越多的人进行交互。基本上所有闭环通信网络都表现出这种类型的网络效应，包括基于互联网的服务，如Facebook和Whatsapp。

_Indirect Network Effects — _increased usage of the product spawns the production of increasingly valuable complementary goods, which results in an increase in the value of the original product. Operating systems (OS) are the most famous type of product that benefit from indirect network effects. App developers are drawn to build on an OS to reach consumers; by building an app for a given OS, that OS becomes more attractive to new consumers, creating a larger market for future app developers.
_间接网络效应 - 产品使用量的增加会产生越来越有价值的互补产品，从而导致原始产品价值的增加。操作系统（OS）是受益于间接网络效应的最着名的产品类型。应用程序开发人员习惯于在操作系统上构建以吸引消费者;通过为给定的操作系统构建应用程序，该操作系统对新消费者更具吸引力，为未来的应用开发者创造更大的市场。

_Two Sided Network Effects_ — increases in usage by one set of users increases the value of a complementary product to another distinct set of users, and vice versa. Some famous examples include eBay, Uber and Lyft, AirBnB, and Amazon's marketplace business. In each of these networks, consumers benefit from more choice and competition among suppliers, which drives more consumers, which attracts more suppliers.
_Two Sided Network Effects_ - 一组用户使用量的增加会使补充产品的价值增加到另一组不同的用户，反之亦然。一些着名的例子包括eBay，Uber和Lyft，AirBnB以及亚马逊的市场业务。在这些网络中，消费者可以从供应商的更多选择和竞争中受益，从而吸引更多的消费者，从而吸引更多的供应商。

_Data Network Effects_ — when a product, generally powered by machine learning, becomes smarter as it acquires more data users. Data network effects occur in most modern cloud-based apps today, though their relative strengths vary widely by use case and sophistication.
_Data Network Effects_ - 当通常由机器学习提供支持的产品随着获取更多数据用户而变得更加智能时。数据网络效应发生在当今大多数现代基于云的应用程序中，尽管它们的相对优势因用例和复杂程度而有很大差异。

**Quantifying The Strength Of Network Effects**
**量化网络效应的力量**

Measuring the precise strength of network effects is rather difficult. It's not an exact science.
测量网络效应的精确强度相当困难。这不是一门精确的科学。

It's particularly challenging because the marginal value of additional users to the system changes over time. For example, many of my friends have begun to delete their Facebook profiles in the last few years. Facebook is approximately just as useful to me now as it was 3 years ago. The loss of 5% or even 10% of my Facebook friends has relatively little impact on my Facebook experience because I still have 500 other friends who use Facebook.
这特别具有挑战性，因为系统中其他用户的边际价值会随着时间而变化。例如，我的很多朋友在过去几年里已经开始删除他们的Facebook个人资料。 Facebook现在和3年前一样对我有用。我的Facebook朋友损失5％甚至10％对我的Facebook体验的影响相对较小，因为我还有500个使用Facebook的朋友。

It is often said that the defensive moat of a network-effect bound business can be quantified using [Metcalfe's Law][10], which states that the value of a network is proportional to the square of the number of users. For readability, it can be said the network effect of businesses that are subject to Metcalfe's law have a network effect of n^2.
人们常说，网络效应约束企业的防御护城河可以使用[梅特卡夫定律][10]来量化，该法律规定网络的价值与用户数量的平方成正比。为了便于阅读，可以说受Metcalfe定律影响的企业的网络效应具有n ^ 2的网络效应。

Since Metcalfe proposed this working definition of the value of a network, it's been thoroughly [debunked][11]. There are [no known networks][12] that exhibit a network effect of n^2 in perpetuity as they grow. Moreover, the original assumption driving n^2 was that all connections in a network are equally valuable. Instead, it's it's more commonly recognized that the network effects of most networks are likely closer to n*log(n) than n^2.
由于Metcalfe提出了这个网络价值的工作定义，因此它被彻底[揭穿][11]。有[没有已知的网络][12]随着它们的成长，永久性地表现出n ^ 2的网络效应。此外，驱动n ^ 2的原始假设是网络中的所有连接同样有价值。相反，人们更常识别的是，大多数网络的网络效应可能比n ^ 2更接近n*log（n）。

While this certainly makes more sense than n^2 (nothing can grow quadratically forever), even n*log(n) is a perpetually super-linear curve. What we see in reality is that not only are all connections not equally valuable, but that after a certain point, the value of each marginal connection in the system begins to decrease (e.g. the next 10M Facebook users in Asia are worth very little to existing American users).
虽然这肯定比n ^ 2更有意义（没有任何东西可以永久地平方增长），但即使n*log（n）也是永久的超线性曲线。我们在现实中看到的是，不仅所有连接都不具有同等价值，而且在某一点之后，系统中每个边际连接的价值开始下降（例如，亚洲的下一个10M Facebook用户对现有的价值很小美国用户）。

In practice, _best case_ network effects resemble an S-curve more than n^2 or n*log(n).
在实践中，_best case_网络效果类似于大于n ^ 2或n*log（n）的S曲线。

![][15]

There are many case studies that empirically demonstrate the S-curve nature of network effects in practice. This is why the Macintosh survived the 90s (if the network effect of Windows was actually n^2, Apple probably wouldn't have survived), why there are so many messaging apps (Whatsapp, Telegram, Facebook Messenger, Signal, etc), why Lyft can effectively compete with Uber (I don't care how many drivers are on the road as long as I get a car in less than two minutes), and why so many specialty e-commerce stores can compete with Amazon.
有许多案例研究在实践中凭经验证明了网络效应的S曲线性质。这就是为什么Macintosh在90年代幸存下来（如果Windows的网络效应实际上是n ^ 2，Apple可能不会幸免），为什么有这么多的消息应用程序（Whatsapp，Telegram，Facebook Messenger，Signal等），为什么Lyft可以有效地与Uber竞争（我不在乎有多少司机在路​​上，只要我在不到两分钟内买到一辆车），以及为什么这么多专业电子商务商店可以与亚马逊竞争。

Why do people continue to say that networks are subject to n^2 or n*log(n) network effects given the very high-profile examples as evidence to the contrary? Because in all three curves, it's very hard to discern the difference between the left-most part of each curve:
为什么人们继续说网络受到n ^ 2或n*log（n）网络效应的影响，因为非常高调的例子作为相反的证据？因为在所有三条曲线中，很难辨别每条曲线最左边部分之间的差异：

![][17]

It's the right half of each curve — the part that only occurs once a network has achieved critical mass — in which these three curves materially diverge. The n^2 curve continues to accelerate upwards quadratically. The n*log(n) curve also accelerates upwards in perpetuity, albeit at a much lower rate. On the other hand, the S-curve turns from super-linear to sub-linear as the network crosses some saturation point.
它是每条曲线的右半部分 - 只有在网络达到临界质量时才出现的部分 - 这三条曲线实质上分歧。 n ^ 2曲线继续以二次方式向上加速。 n*log（n）曲线也会永久性地向上加速，尽管速度要低得多。另一方面，当网络穿过某个饱和点时，S曲线从超线性变为次线性。

Of course, not all networks are subject to identical S-curves. And not all networks are even subject to the _best-case _network effects of an S-curve.
当然，并非所有网络都遵循相同的S曲线。并非所有网络都受到S曲线的_best-case_network效应的影响。

Some network effects never achieve exponential-like network effects such as the left half of the S-curve. Some networks are only subject to log(n) network effects from inception, making them perpetually sub-linear, as opposed to the S-curve, which is super-linear at first.
一些网络效应永远不会达到像指数一样的网络效应，例如S曲线的左半部分。一些网络从一开始就仅受到log（n）网络效应的影响，使得它们永远是次线性的，而不是S曲线，它首先是超线性的。

The most common example of a log(n) network effect is an exchange for a liquid, fungible good. Even if you make the very aggressive assumption that each additional user increases daily liquidity, the marginal value of that extra liquidity becomes increasingly worthless to all existing users. This holds true even from the earliest days of a network. This curve is never super-linear; it's always sub-linear.
log（n）网络效应最常见的例子是交换液体，可替代的商品。即使您做出非常积极的假设，即每个额外的用户都会增加每日流动性，那么额外流动性的边际价值对于所有现有用户来说变得越来越没价值。即使从网络的早期开始也是如此。这条曲线永远不是超线性的;它总是次线性的。

Let's consider a simple case in which each new user trading for some fungible good adds .01% to the daily liquidity of the good.
让我们考虑一个简单的案例，其中每个新用户交易某些可替代商品会使商品的每日流动性增加0.01％。

When there are 100 users, daily liquidity is 1% of the market cap of the good.
当有100个用户时，每日流动性是商品市值的1％。

When there are 1,000 users, daily liquidity is 10% of the market cap of the good.
当有1000个用户时，每日流动性是商品市值的10％。

When there are 10,000 users, daily liquidity is 100% of the market cap of the good.
当有10,000个用户时，每日流动性是商品市值的100％。

When there are 100,000 users, daily liquidity is 1,000% of the market cap of the good (10x daily turnover).
当有10万用户时，每日流动性是商品市值的1000％（每日营业额10倍）。

If a user owns .1% of the goods in being traded, the value of the liquidity provided by each marginal users becomes increasingly worthless. Technically, slippage will decrease as the number of users and therefore liquidity grows, but in practice the marginal liquidity benefit will be so low that it will be imperceptible not just to a given user, but all existing users.
如果用户拥有交易中的0.1％的商品，则每个边际用户提供的流动性价值变得越来越无价值。从技术上讲，随着用户数量和流动性的增长，滑点将会减少，但实际上边际流动性收益将会非常低，以至于不仅对特定用户而且对所有现有用户来说都是不可察觉的。

All exchanges for a given fungible asset have a network effect of approximately log(n), which can be visualized as follows:
给定可替换资产的所有交易所具有大约log（n）的网络效应，其可视化如下：

![][19]

There is ample evidence that this is empirically true. If the network effects of exchanges for fungible goods were super-linear at any point on the curve, we wouldn't have so many crypto exchanges. What we can observe is that if an exchange has some liquidity — a fraction of that of the market leader — it's often enough to sustain a viable exchange, and to provide reasonable liquidity to market participants.
有充分的证据表明这是经验上的。如果可互换商品交换的网络效应在曲线上的任何一点都是超线性的，我们就不会有这么多的加密交换。我们可以观察到，如果交易所具有一定的流动性 - 只是市场领导者的一小部分 - 通常足以维持可行的交易所，并为市场参与者提供合理的流动性。

**The Network Effect Of Digital Gold**
**数字黄金的网络效应**

Which type of network effect does digital gold exhibit?
数字黄金展示了哪种类型的网络效应？

To answer this question, let's walk through the mechanics of how users will use digital gold.
要回答这个问题，让我们来看看用户如何使用数字黄金的机制。

The purpose of a store of value such as digital gold is to… store value for consumption at some later date. Other than the time in which the digital gold is converted into something else, digital gold just sits there, doing nothing. It doesn't benefit from the addition or removal of new users.
数字黄金等价值存储的目的是......在以后某个时间存储消费价值。除了将数字黄金转换成其他东西的时候，数字黄金只是坐在那里，什么都不做。它不会从添加或删除新用户中受益。

When a user wants to liquidate their digital gold to consume some other good or service, she needs to find liquidity: someone who is willing to purchase the digital gold. This can be done at an exchange that specializes in fungible digital gold.
当用户想要清算他们的数字黄金以消费其他商品或服务时，她需要找到流动性：愿意购买数字黄金的人。这可以在专门从事可互换数字黄金的交易所完成。

The utility of digital gold is a function of its liquidity. As described above, this means that the network effect for Bitcoin can be approximated as log(n).
数字黄金的效用是其流动性的一个功能。如上所述，这意味着比特币的网络效应可以近似为log（n）。

**The Network Effect Of Digital Cash**
**数字现金的网络效应**

Which type of network effect does digital cash exhibit?
数字现金表现出哪种网络效应？

To answer this question, let's walk through the mechanics of how users will use digital cash.
要回答这个问题，让我们来看看用户如何使用数字现金的机制。

The purpose of digital cash is to both store value and be used as a medium of exchange. Additionally, digital cash can become a unit of account.
数字现金的目的是既存储价值又用作交换媒介。此外，数字现金可以成为一个帐户单位。

The utility of digital cash in aggregate therefore is a function of how many merchants want to accept payment for goods and services in digital cash.
因此，数字现金在总体上的效用取决于有多少商家想要以数字现金接受货物和服务的支付。

This resembles the direct network effect (the telephone diagram) as described above. The more people who accept payment using digital cash, the more merchants existing users can do business with.
这类似于如上所述的直接网络效应（电话图）。使用数字现金接受付款的人越多，现有用户可以与之开展业务的商家就越多。

All major global currencies exhibit this network effect in their respective jurisdictions. Because merchants and consumers must pay taxes in each jurisdiction in the native fiat currency of their country, they choose to receive wages (employees) and revenues (businesses) in the form of the local fiat currency. This creates a powerful network effect, as very few people want to take on the balance sheet risk of holding a currency that's subject to price-fluctuations relative to the currency with which they purchase goods/services and pay taxes with.
所有主要全球货币在各自的司法管辖区都表现出这种网络效应。由于商人和消费者必须在其所在国家的法定货币的每个司法管辖区纳税，他们选择以当地法定货币的形式获得工资（雇员）和收入（企业）。这产生了强大的网络效应，因为很少有人想要承担资产负债表风险，即持有相对于他们购买商品/服务并缴税的货币价格波动的货币。

Intuitively, this is likely to be subject to an S-curve network effect. The first 50% merchants that accept digital cash for payment make it exponentially more useful than the second 50%.
直觉上，这很可能受到S曲线网络效应的影响。接受数字现金支付的前50％商家使其比第二个50％的指数更具有用性。

**Store Of Value Vs Utility**
**价值存储与实用工具**

Bitcoin maximalists will argue that the argument presented above is based on semantics. Specifically, they'll argue "Of course new users will make Bitcoin more valuable. They'll buy it and hold it, by definition making it more valuable! The liquidity argument is a red herring."
比特币极端主义者会争辩说上面提出的论点是基于语义的。具体来说，他们会争辩说“当然新用户会让比特币变得更有价值。他们会购买并持有它，从定义上讲它更有价值！流动性论证是一个红色的鲱鱼。”

While this is true in a narrow sense, it ignores the competitive reality: what if something else becomes digital cash and achieves a super-linear network effect? That's the broader point I'm making. The sub-linear network effect of liquidity alone is, in isolation, a red herring. But if something else becomes digital cash with a super-linear network effect while Bitcoin remains digital gold with a sub-linear network effect, then Bitcoin will be surpassed.
虽然这在狭义上是正确的，但它忽略了竞争现实：如果其他东西变成数字现金并实现超线性网络效应呢？这是我正在做的更广泛的观点。仅流动性的亚线性网络效应就是孤立的红鲱鱼。但如果其他东西变成具有超线性网络效应的数字现金，而比特币仍然是具有亚线性网络效应的数字黄金，那么比特币将被超越。

In crypto circles, this framing is often presented as the [store of value (SoV) vs. utility debate][20]. The SoV view is based upon reflexivity: The more people hold it, the more valuable it becomes, therefore driving more people to hold it.
在加密圈中，这种框架通常表现为[存储价值（SoV）与效用辩论][20]。 SoV视图基于反身性：拥有它的人越多，它变得越有价值，因此驱使更多的人持有它。

Of course, reflexivity works going up and down. This creates excessive volatility and therefore instability, defeating the purpose of a store of value entirely. It's very easy to believe the SoV hypothesis when the price only increases. But when the price decreases, the underlying value of the utility value creates an organic price floor.
当然，反身性工作起伏不定。这会造成过度的波动，从而造成不稳定，完全破坏了储值的目的。当价格仅上涨时，很容易相信SoV假设。但是当价格下降时，公用事业价值的潜在价值会产生有机价格下限。

It's easy forget how early we are with regard to cryptocurrency. There are 7 billion people on Earth. Less than 50 million have any cryptocurrency. We're at less than 1% global saturation. In a world of open-source software where [every feature can be copied][21], the key to winning is to achieve network effects as quickly as possible. And this is why the strength of the underlying network effect is so important. Over tens and hundreds of millions of users, these benefits compound (or fail to), creating massive differences in the terminal value of the network.
很容易忘记数字货币的早期程度。地球上有70亿人。不到5000万人拥有任何数字货币。我们的全球饱和度不到1％。在[可以复制每个功能]的开源软件世界中[21]，获胜的关键是尽快实现网络效果。这就是为什么潜在网络效应的力量如此重要的原因。超过数万和数亿用户，这些好处复合（或失败），造成网络终端价值的巨大差异。

**Other Moats**
**其他护城河**

Network effects are just one type of competitive moat. There are many types of moats.
网络效应只是竞争性护城河的一种。有许多类型的护城河。

The other moats that Bitcoin maximalists espouse are "brand recognition" and third-party ecosystem integrations such as exchanges, ATMs, other financial products, hardware and mobile wallets, etc.
比特币极端主义者所支持的其他护城河是“品牌认知”和第三方生态系统集成，如交易所，ATM，其他金融产品，硬件和移动钱包等。

To explore the power of these moats, I'll compare Bitcoin against Ethereum. This is not to suggest that Ethereum specifically is likely to overtake Bitcoin. Rather, it's mean to serve as an example of what a competitive network can achieve in less than three years since launch.
为了探索这些护城河的力量，我将比特币与以太坊进行比较。这并不是说以太坊特别有可能超过比特币。相反，它意味着作为竞争网络自推出后不到三年内可以实现的目标的一个例子。

Brand recognition is indeed a moat. Bitcoin is the leader among cryptocurrencies. But to suggest that its brand is somehow untouchable is simply false. No brand is untouchable.
品牌认知确实是一种护城河。比特币是数字货币的领导者。但是，建议其品牌在某种程度上是不可触及的，这简直是错误的。没有品牌是不可触及的。

There is not a good way to measure brand value of an open, permissionless brand like Bitcoin, but we can use Google trends as a crude measurement tool.
没有一种很好的方法来衡量像比特币这样的开放，无许可的品牌的品牌价值，但我们可以将谷歌趋势作为一种粗略的衡量工具。

![][23]

Bitcoin is blue, Ethereum is red. At the time of largest divergence, Bitcoin was about 11x as frequently searched as Ethereum. Today, the difference is 8x. Given how volatile and rapidly evolving the space is, this lead could be wiped out within a few years.
比特币是蓝色的，以太币是红色的。在最大分歧的时候，比特币的搜索频率是以太网的11倍。今天，差异是8倍。考虑到空间的波动性和快速变化，这一领先优势可能会在几年内消失。

What about third-party integrations? Here, Ethereum is almost on par with Bitcoin:
第三方集成怎么样？在这里，以太坊几乎与比特币相提并论：

Exchanges — All major exchanges support fiat pairs with Bitcoin and Ethereum.
交易所 - 所有主要交易所都支持比特币和以太坊的法定货币对。

Hardware wallets — All major hardware wallets support both Bitcoin and Ethereum.
硬件钱包 - 所有主要硬件钱包都支持比特币和以太坊。

ATMs — To the best of my knowledge, all crypto ATMs support both.
ATMs  - 据我所知，所有加密ATM都支持这两种方式。

Mobile wallets — Both Bitcoin and Ethereum have a plethora of mobile wallets for iOS and Android.
移动钱包 - 比特币和以太坊都有大量适用于iOS和Android的移动钱包。

Other financial products — Bitcoin has a lead with CME, CBOE, and NASDAQ futures. But given Ethereum's trajectory, it seems quite reasonable that it will achieve parity within 24 months.
其他金融产品 - 比特币领先CME，CBOE和纳斯达克期货。但鉴于以太坊的发展轨迹，它将在24个月内达到平价似乎是合理的。

Again, my point is not that Ethereum is set to overtake Bitcoin, but rather that the range of 3rd party integrations is not insurmountable.
同样，我的观点并不是说以太坊会超越比特币，而是第三方集成的范围并非不可克服。

**Conclusion**
**结论**

Network effects and competitive moats are generally misunderstood. Contrary to popular belief, there are no networks that exhibit n^2 network effects, and in fact many exhibit log(n) network effects, notably fungible asset exchanges. Bitcoin as digital gold will be subject to the perpetually sub-linear log(n) network effect, whereas Bitcoin as digital cash can achieve super-linear network effects as crypto adoption grows from <1% to 50% of the global population. The cryptocurrency that becomes the dominant store-of-value will _by definition_ need to exhibit super-linear network effects as it grows.
网络效应和竞争性护城河通常被误解。与流行的看法相反，没有网络表现出n ^ 2网络效应，事实上许多网络表现出log（n）网络效应，特别是可互换的资产交换。作为数字黄金的比特币将受到永久的亚线性log（n）网络效应，而比特币作为数字现金可以实现超线性网络效应，因为加密采用率从全球人口的&lt;1％增加到50％。成为主要价值存储的数字货币将在定义时随着它的增长呈现出超线性网络效应。

Moreover, other types of competitive moats such as brand and broader ecosystem integrations do not exhibit increasing returns to scale, and can be easily overcome by a competitive network with super-linear network effects. We already have ample evidence that this is true.
此外，品牌和更广泛的生态系统集成等其他类型的竞争性护城河并没有表现出越来越大的规模收益，并且可以通过具有超线性网络效应的竞争网络轻松克服。我们已经有足够的证据表明这是事实。

The battle to be the [super-mega winner][20] of crypto is just beginning. On the left-most 1% of all of the network effect curves, the differences are not easily discernible. It's easy to think that network effects have started to kick in before they actually have.
成为加密的[超级大赢家][20]的战斗才刚刚开始。在所有网络效应曲线的最左侧1％中，差异不容易辨别。人们很容易认为网络效应在实际发生之前已经开始发挥作用。

Thanks to [Chris Dixon][24] and [Matt Huang][25] for providing feedback on this essay.
感谢[Chris Dixon][24]和[Matt Huang][25]提供有关本文的反馈。

![][27]

[1]: https://multicoin.capital/smart-contract-network-effect-fallacy/
[2]: https://medium.com/@adamtache/the-many-faces-of-bitcoin-1c298570d191
[3]: https://medium.com/evergreen-business-weekly/the-power-of-network-effects-why-they-make-such-valuable-companies-and-how-to-harness-them-5d3fbc3659f8
[4]: https://a16z.com/2016/03/07/all-about-network-effects/
[5]: https://www.techstars.com/content/accelerators/understanding-network-effects/
[6]: http://mattturck.com/the-power-of-data-network-effects/
[7]: http://platformed.info/
[8]: https://cdn-images-1.medium.com/freeze/max/75/0*7eEBxFp0Y96lxPZf.?q=20
[9]: https://cdn-images-1.medium.com/max/2000/0*7eEBxFp0Y96lxPZf.
[10]: https://en.wikipedia.org/wiki/Metcalfe%27s_law
[11]: https://spectrum.ieee.org/computing/networks/metcalfes-law-is-wrong
[12]: https://vitalik.ca/general/2017/07/27/metcalfe.html
[13]: https://cdn-images-1.medium.com/freeze/max/75/0*yS9KviJBbGZ7GcY6.?q=20
[14]: https://hackernoon.com/undefined
[15]: https://cdn-images-1.medium.com/max/2000/0*yS9KviJBbGZ7GcY6.
[16]: https://cdn-images-1.medium.com/freeze/max/75/0*y6IaXAd2kqYNEy27.?q=20
[17]: https://cdn-images-1.medium.com/max/2000/0*y6IaXAd2kqYNEy27.
[18]: https://cdn-images-1.medium.com/freeze/max/75/0*RRcu4YGZdEXKGrgK.?q=20
[19]: https://cdn-images-1.medium.com/max/2000/0*RRcu4YGZdEXKGrgK.
[20]: https://multicoin.capital/2018/03/15/paths-to-tens-of-trillions/
[21]: https://multicoin.capital/2018/04/25/good-artists-copy-great-artists-steal/
[22]: https://cdn-images-1.medium.com/freeze/max/75/0*GvvkJeosqwI3hyyv.?q=20
[23]: https://cdn-images-1.medium.com/max/2000/0*GvvkJeosqwI3hyyv.
[24]: https://twitter.com/cdixon
[25]: https://twitter.com/matthuang
[26]: https://cdn-images-1.medium.com/freeze/max/75/1*QCV7h713dLgy5COZTyBLdQ@2x.png?q=20
[27]: https://cdn-images-1.medium.com/max/2000/1*QCV7h713dLgy5COZTyBLdQ@2x.png


