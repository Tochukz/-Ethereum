# Mastering Ethereum (2019)  
__By Andreas M. Antonopoulos and Dr. Gavin Wood__    
[Github Code Examples](https://github.com/ethereumbook/ethereumbook)  
Additional contributions, which were not included in this first edition due to time and space constraints, can be found in the contrib folder of the GitHub repository


## Chapter 1. What Is Ethereum?  
Block-chain is a decentralized information exchange platform such as Bitcoin and Ethereum.    

Ethereum is an open source, globally decentralized computing infrastructure that executes programs called _smart contracts_. It uses a blockchain to synchronize and store the system’s state changes, along with a _cryptocurrency_ called _ether_ to meter and constrain execution resource costs.

The Ethereum platform enables developers to build powerful decentralized applications with built-in economic functions. While providing high availability, auditability, transparency, and neutrality, it also reduces or eliminates censorship and reduces certain counterparty risks.  

__Compared to Bitcoin__  
Ethereum shares many common elements with other open blockchains: a peer-to-peer network connecting participants, a Byzantine fault–tolerant consensus algorithm for synchronization of state updates (a proof-of-work blockchain), the use of cryptographic primitives such as digital signatures and hashes, and a digital currency (ether).

Yet in many ways, both the purpose and construction of Ethereum are strikingly different from those of the open blockchains that preceded it, including Bitcoin.  

Ethereum’s purpose is not primarily to be a digital currency payment network. While the digital currency ether is both integral to and necessary for the operation of Ethereum, ether is intended as a _utility currency_ to pay for use of the Ethereum platform as the world computer.  

Unlike Bitcoin, which has a very limited scripting language, Ethereum is designed to be a general-purpose programmable blockchain that runs a virtual machine capable of executing code of arbitrary and unbounded complexity. Where Bitcoin’s Script language is, intentionally, constrained to simple true/false evaluation of spending conditions, Ethereum’s language is _Turing complete_, meaning that Ethereum can straightforwardly function as a general- purpose computer.

__Components of a Blockchain__  
* A peer-to-peer (P2P) network connecting participants...  based on a standardized “gossip” protocol
* Messages, in the form of transactions, representing state transitions  
...
