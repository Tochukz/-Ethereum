## Lesson 4: Remix Fund Me (Part 1: 03:31:56)
#### Sending ETH through A function and Reverts  
__Transaction Fields__   
* __Nonce__: tx count for the account
* __Gas Price__: price per unit of gas (in wei)
* __Gas Limit__: max gas that this tx can use
* __To__: address that the tx is sent to
* __Value__: amount of wei to sent
* __Data__: what to send to the To address
* v, t, s: components of tx signature  

Smart contracts can hold funds just like wallets can.   
When you deploy a contract, you get a contract address much that same as a wallet address.   
Money math is done in terms on Wei, so 1 ETH = 1e18 Wei .
When a transaction is reverted, it undo any previous action and sends the remainig gas back.  

__Block chain Oracle__   
A block chain oracle is any device that interacts with the off-chain world to provide external data or computation to smart contracts.  

__Checklink Features__  (Part 1: 03:47:29)
1. __Chainlink data feed:__ provides a decentralized data source to your Defi application.  
For example, you can get price data over a network of _exhanges_ which delivers data to _Data providers_ and then to _Chainlink Nodes_ which are then delivered to your contract through a _Reference contract_, _Pricing contract_ or _Data contract_.  
For live example see [Chainlink Data][data.chain.link]  
Checkout [Chain link docs](docs.chain.link)  
