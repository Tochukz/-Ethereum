# Fullstack Ethereum Tutorial   
[The Youtube Video](https://www.youtube.com/watch?v=a0osIaAOFSE)  
[The Blogpost](https://dev.to/dabit3/the-complete-guide-to-full-stack-ethereum-development-3j13)  
[Github Code Example](https://github.com/dabit3/full-stack-ethereum)  
[Defining the web3 stack](https://edgeandnode.com/blog/defining-the-web3-stack/)

## Tech Stack
__The Stack__  
* Client Framework - React
* Ethereum development environment - [Hardhat](https://hardhat.org/)
* Ethereum Web Client Library - [Ethers.js](https://docs.ethers.io/v5/)
* API Layer - [The Graph Protocol](https://thegraph.com/)  

Later you should  checkout [Scaffold-ETH](https://github.com/scaffold-eth/scaffold-eth) a boilerplate which included _Ethers_, _Hardhat_, and _The Graph_.  

__Ethereum development environment__  
_Hardhat_ is a Ethereum development environment and Framework designed for fullstack development. Other similar tools in the ecosystem are [Ganache](https://www.trufflesuite.com/ganache), [Tuffle](https://www.trufflesuite.com/), [Foundary](https://www.paradigm.xyz/2021/12/introducing-the-foundry-ethereum-development-toolbox/)

__Ethereum Web Client Library__   
_Ethers.js_ aims to be a complete and compact library for interacting with the Ethereum Blockchain and its ecosystem from client-side JavaScript application like React, Vue, Angular or Svelte. Another popular option in the ecosystem is [w3b3.js](https://web3js.readthedocs.io/en/v1.3.4/).  

__Account Management__  
[Metamask](https://metamask.io/download.html) helps to handle account  management and connecting the current user to the blockchain. MetaMask enables users to manage their accounts and keys in a few different ways while isolating them from the site context.

__The Graph__  
The Graph is an indexing protocol for querying blockchain data that enables the creation of fully decentralized applications exposing a rich GraphQL query layer that apps can consume. Checkout [Building GraphQL APIs on Ethereum](https://dev.to/edge-and-node/building-graphql-apis-on-ethereum-4poa) later

__Prerequites__  
1. Node.js installed on your local machine
2. [MetaMask](https://metamask.io) Chrome extensions installed in your browser.

## Getting Started
Create a react application
```
$ npx create-react-app  react-dapp
```
Install dependencies on the react-app
```
$ npm install ethers
$ npm install hardhat
$ npm install @nomiclabs/hardhat-waffle
$ npm install @nomiclabs/hardhat-ethers
$ npm install ethereum-waffle
$ npm install chai
```
Initialize a new Ethereum Development Environment with Hardhat
```
$ cd react-dapp
$ npx hardhat
```  
Follow the prompt and choose _Create a TypeScript project_ also choose the current directory as your project root. After initializing the new ethereum dev env you should get the following:
* `hardhat.config.js` file for your config, plugins and custom tasks
* `scripts` directory with `sample-script.js` file to deploy your smart contract
* `test` directory with sample test script
* `contracts` directory with sample smart contract  

To compile your smart contract
```
$ npx hardhat compile
```  
This generate an Application Binary Interface (ABI)

To launch a local node or network
```
$ npx hardhat node
```
This should produce a list of addresses and private key under _Accounts_  

To deploy to a network, openup another terminal window
```
$ npx hardhat run script/deploy.js --network localhost
```  
You should see the address of the deployed contract in the output on the terminal e.g
```
...timestamp 1693899285 deployed to 0x5FbDB2315678afecb367f032d93F642f64180aa3`
```
You should see logs of the deploy on the node's terminal.

__Installing MetaMask Browser Extension__  
Install the `MetaMask` chrome extension and create a new wallet. Your _Secret Recovery Phrase_ makes it easy to back up and restore your account.
