
## Lesson 1: Blockchain Basics   
__Bitcoin__  
Bitcoin was one of the first protocol to use the revolutionary technology called blockchain.  

__Ethereum__  
Ethereum is a protocol that uses the blockchain infrastructure with additional feature than the Bitcoin.  

__Smart Contracts__  
Smart contracts is an agreement, contract or set of instructions that is deployed on a decentralized block chain. They are executed in a decentralized way without the need to a centralized or third party intermediary.    
Onces the smart contracts are deployed they cannot be altered i.e they are immutable, they execute automatically, and everyone can see the terms of the agreement.   

__Blockchain Oracle__  
A blockchain oracle is any device that interacts with the off-chain world to provide external data or computation to smart contracts.  


__Chain link__  
Chain link is a modular decentralized oracle network that can bring in both external data and external computation into our smart contract. These ensures that they are decentralized end-to-end. With chain link, we can customized our smart contracts the way we want.  

__Hybrid smart contract__  
Hybrid smart contracts are smart contracts that have an off-chain component.  

__Smart contract platform__  
The term _smart contract platform_ and _blockchain_ are often used interchangeable.   
There are a few smart contract platforms available
1.  Avalanch
2. Polygon
3. Fantom
4. Harmony  

__Web1 vs Web2 vs Web3__   
__Web1:__ The permissionless opene sourced web with static content.  
__Web2:__ The  permissioned web with dynamic content. Where companies run your agreement on their server.  
__Web3:__ The permissionless web, with dynamic content. Where decentralized censorship resistant networks run your agreement and code.   
It generally is accompanied by the idea of user owned ecosystem, where the protocol you interact with you also own a portion of, instead of soley being the product.   

### The purpose of Smart Contracts  
Smart contracts creates _Trust Minimized Agreements_, that give rise to _unbreakable promise_.   
Smart contracts are _Immutable_, _Decentralized_ and _Transparent_.  

### Other Blockchain Benefits  
1. Decentralized network
2. Transparency and Flexibility
3. Speed and Efficiency
4. Security and Immutability
5. Counterparty Risk Removal
6. Trsut minimized agreements

### What have Smart Contracts done so far?
1. DeFi: Decentralized Finance give the users the ability to engage with finance and markets without having to go through a centralized intermediary.  
2. DAOs: Decentralized Autonomous Organizations
3. NFTs: Non Fungable Tokens  

### Your First Transaction
In order to make a transaction the first thing is to setup a wallet.  
1. Go to metamask.io  
2. Click the download button
3. Install the Metamask extention for you Browser of choice.   
4. Create a new wallet
5. Copy your wallet address, go to [etherscan.io](https://etherscan.io) and see details about your wallet.  

__EtherScan__  
Etherscan is a _block explorer_. It is used to view different addresses, transactions or other things that happen in a block chain.   
Aside from the main networks, ether scan also have a platform for test networks. For example you can view the activities of an account on the goerli testnet using the [goerli etherscan](https://goerli.etherscan.io/).   

__Private Key, Public Key and Mnemonics__   

Concept     | Can access        | Private or public
------------|-------------------|------------------
Nnemodics   | All your accounts | Keep private!  
Private Key | 1 of your account | Keep private!
Public Key  | Nothing           | Is public  

__Test Faucet__  
Testnet faucets are a ways for us to get money into our wallet on a testnet. Faucets don't exist on mainnets which are real networks.  
With a test faucet you can transfer testnet ETH or testnet LINK to your testnet account.  
Main Faucet: https://faucets.chain.link  
Backup Faucet: https://goerlifaucet.com/  


### Gas I - Introduction to Gas  (Part 1: 00:59:00)
__Gas__  
Gas is a unit of computational measure.
The more complex you transaction is, the more gas you have to pay.  
Any transaction on the blockchain comes with paying a gas price.   

__Transaction Fee__  
When we make a transaction the _miners_ or _validators_ makes a small fee. The fee is called the transaction fee.  
Transaction Fee = Gas Price * Total Gas Usage for the transaction.
Each blockchain has it's own way of caculating Gas price.


### How do Blockchains work?
[Blockchain demo](https://andersbrownworth.com/blockchain)  

__Hash__  
A hash is a unique fixed length string, meant to indentify a piece of data.  
They are created by placing the data into a _hash function_.   
Ethereum using the _Keccak-256_ hasing algorithm for its' hashes.  

__Hash Algorithm__  
A hash algorithm is a function that computes data into a hash.  

__Mining__  
Minig is the process of finding the solution to the blockchain problem.  
Nodes get paid for mining blocks.  

__Block__  
A block is made of of a block, nounce, previous hash and a list of transactions.  


__Nonce__    
The nounce is the _number used once_ to find the solution to the blockchain problem.  
It is also used to define the transaction number for an account/address.  


__Private Key__  
A private key is only known to the holder. It is used to _sign_ transactions.


__Public Key__   
The public key is derived using the private key and the _Elliptic Curve Digital Signature Algorithm_.   
Anybody can verify a transactiion using the public key.  
Anybody can also use the public key to determine the address or account for a transaction.  

__Genesis block__  
The genesis block is the first block in a blockchain where previous ash points to a ash that does not exist.  


[Blockchain Demo]https://andersbrownworth.com/blockchain/   

### Gas II - Block Rewards & EIP 1559  (Part 1: 01:30:23)  
The take away from this section is that: the more people use  a chain the more expensive it is to send transactions.  

__Base Fee__  
Base fee is the minimum gas price required to send a transaction.   
[Ethereum unit converter](https://eth-converter.com/)   


__Block confirmation__  
The block confirmation of a block is represented by the number of blocks have been mined since the block was included.  

For transactions that are just sending ethereum, the input data will be blanck.  For samrt contracts, the input data will not be blanck.  


### High Level Blockchain Funcdamentals  (Part 1: 01:39:33)  
__Node__  
A node is a single instance in a decentralized network.   
Anybody can join the network.   
A blockchain node keeps a whole list of every transaction and interactions that happens on that blockchain.  


__Consensus__  
Consensus is the mechanism used to agree on the state of a blockchain.  
A consensus protocol in a blockchain or decentralized system can be broken down into to pieces
1. Chain Selection
2. Sybil Resistance  

__Proof of work__  
Proof of work is a sybil resistance mechanism because it defines a way to figure out who is the block author i.e which node is going to be the node that.  
Sybil resistance is a way of preventing someone from making fake blockchain to get more and more rewards.  
In proof of work, the nodes compete on you will be the first to make the next block.
Proof of work use a lot of energy.   

__Proof of stake__    
Proof of stake is a sybil resistance mechanism that is used to figure out the author of a block.
In proof of stake, a random node is choosen to propose the new block and the other nodes verify the block.  
Proof of stake uses much less energy and are more environmental friendly compared to proof of work which consumes a lot of energy.   

__Sybil attack__  
Sybil attack are prevented due to protocols like _proof of work_ and _proof of stake_.  

__51% attack__  
51% attack grows increasingly harder with the size of the blockchain.   

__Layer 1__  
A layer 1 is a base layer blockchain implementation.  
Examples of layer 1 blockchains are Bitcoin, Ethereum, Avalanch.

__Layer 2__  
A layer 2 is an application built on top of a layer 1.  
Examples of layer 2 blockchains are Chainlink, Arbitrun and Optimism


__Sharding and Rollups__  
Sharing and rollups are scalability solutions on Layer 1 blockchain.  
Blockchain scalability problem is that there may not be enough block space for the amount of transactions that wants to get into them.  
