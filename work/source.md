
# Cross-chain infrastructure

![][1]![][2]![][2]

There is a problem facing the blockchain community; one that poses a risk to both incumbent and next generation smart contract platforms. Ecosystem fragmentation is a critical issue that could significantly impede adoption of decentralised systems.

Despite the prudence of a blockchain agnostic approach, projects building decentralised infrastructure today are allocating scarce resources, and must have a framework to determine which platforms to support. The development of tools that reduce the friction of implementing infrastructure on multiple chains will improve the speed of adoption and allowing projects to choose multiple chains in parallel, rather than being forced to focus on a single one. This will introduce more efficient resource allocation into new smart contract platforms, and reduce the power of incumbent platforms to monopolise resources.

#### The Problem

Since its launch in 2015, Ethereum has been the dominant smart contract platform. In addition to demonstrating the strength of first mover advantage in this space, Ethereum has also proven that incumbents like Bitcoin can lose mindshare to systems that offer new or improved functionality.

Just as Ethereum used Bitcoin to fund its development, new blockchains are using Ethereum for funding. Many of these projects are attempting to surpass Ethereum on a critical dimension: scalability. While Ethereum has a well-defined path to scaling, the uncharted decentralized system design space is too vast to wait for one project to find the solution. The opportunity to displace Ethereum has led to the funding of many new blockchain projects, each attempting to solve the scaling dilemma before Ethereum.

This competition for developer resources and attention will likely play out over the coming years, or even decades. Whether any of the current or proposed smart contract platforms survive remains unclear. The opaque future of decentralised systems necessitates diversified investment into many potential solutions. The issue is this introduces fragmentation.

#### Fragmentation

The problem we face is how to handle ecosystem fragmentation, particularly when we are building infrastructure on existing blockchains.

As an example, imagine we have two blockchains, Beepchain and Boopchain. Both are decentralised smart contract systems, and both are courting developers. For Dapps to function on these chains, they need various pieces of infrastructure, such as file storage. Now let's assume there are two teams trying to create a decentralised storage system, Zettacoin and Yottacoin, each team has a novel approach to the problem. Our final assumption is there is a 50% chance that a given blockchain will scale, and a 50% chance a given storage solution will be functional. If a successful Dapp ecosystem needs file storage, then the expected outcomes look like this:

![][3]![][4]![][5]

Since Zettacoin always fails and Beepchain always fails, unless Yottacoin builds on Boopchain, both chains will fail to build a viable Dapp ecosystem. If the possibility of one failing component can prevent a successful component from working, then the probabilities are chained.

So, in a world where Yottacoin chooses to build on only Beepchain, no one wins. This means that if each project picks one chain to build on, there is a 50% chance of failure for the entire ecosystem. Even though we have two functioning components, we have the wrong combination of components.

Now imagine we scale this problem to multiple critical infrastructure components. If we need five components (including the chain itself) to end up with a successful Dapp ecosystem, and for each component there are five solutions, and only one is viable, we have a 1/3125 (0.032%) chance that the correct components are implemented together.

To take a more optimistic view, let's assume you need all five but there is a 50% chance any one will be successful. That gives you a 1/32 (3%) chance of finding five successful components on one chain. Considering we are rebuilding the entire financial infrastructure for the world, this is not ideal.

#### Cross-Chain Implementations

The obvious solution is to get projects to implement platforms across multiple chains. Complicating this solution is that, even if the larger chains attract a lot of talent, we are seeing strong competition from highly funded challengers.

We have seen this play out before across operating systems. For years, Windows has been the dominant consumer operating system worldwide; but as Linux gained traction for servers, most of the development effort shifted there. Even though there are many flavors of Linux, tools like Apache work on all of them.

To contrast, imagine if Apache only worked on SUSE, nGINX only worked on Ubuntu, and the effort of porting them across was half of the initial build effort. Now imagine only one combination is a viable solution. This exemplifies the problem we face as the smart contract platform wars commence.

#### Liquidity is Centralized

In the webserver world, a team can choose the stack on which they want to implement, and simply install the software, leading to a much more frictionless market. In crypto, you need to acquire tokens for each platform in order to build on the system. This is an issue because most of the liquidity for tokens exists on centralised exchanges. And a lack of liquidity can doom even the best project.

Reviving our scenario presented above, let's say that the Yottacoin team wants to implement on both Beepchain and Boopchain. Not only would this require native tokens for both chains, but they need to have a version of Yottacoin on each chain, and it must be listed on multiple exchanges. A further complication is that the value of these coins would be somewhat independent, based on the success and adoption of Yotta on each chain. In this scenario, exposure to the success of a team is no longer limited to holding a single project token, now you must be holding the right version of their token — the one on the most successful chain.

#### Conclusion

Decentralised ecosystems require multiple layers of infrastructure to be successful, and there are numerous teams tackling these challenges. Unfortunately, without a focus on compatibility across chains, we may fall into a period of fragmentation and inefficiency.

As the blockchain universe continues to expand, it becomes increasingly important that teams building infrastructure do not become blinded to the overarching goal of supporting decentralised systems. Picking winners at a platform level is likely impossible at this stage of the evolution, and simply selecting the largest ecosystem could lead to significant developmental delays if scaling and other barriers remain unresolved.

It is critical that blockchains and smart contract systems attempting to test novel approaches and solutions to these problems do everything possible to encourage infrastructure teams to invest resources in more than one chain. We at Havven intend to lead by example in this regard. As a critical piece of decentralised infrastructure, and one of the few projects with an operational system, we have made a commitment to implementing on multiple chains. We hope our investment of time and resources will inspire other projects to consider this approach, for the benefit of the entire ecosystem.

[Website][6] |[ Telegram][7] |[ Reddit][8] |[ Twitter][9] |[ Discord][10]

[1]: https://cdn-images-1.medium.com/freeze/max/33/1*Cl8sJqgnVkZEKFcQ_0kIeQ.png?q=20
[2]: https://cdn-images-1.medium.com/max/880/1*Cl8sJqgnVkZEKFcQ_0kIeQ.png
[3]: https://cdn-images-1.medium.com/freeze/max/33/1*wl7hRA_T7HLsVWmcmgZZ2g.png?q=20
[4]: https://blog.havven.io/undefined
[5]: https://cdn-images-1.medium.com/max/880/1*wl7hRA_T7HLsVWmcmgZZ2g.png
[6]: https://havven.io/
[7]: https://t.me/havven_official1
[8]: https://www.reddit.com/r/havven/
[9]: https://twitter.com/havven_io
[10]: https://discord.gg/7QSNzEn

  