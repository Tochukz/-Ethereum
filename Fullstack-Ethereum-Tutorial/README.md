# Fullstack Ethereum Tutorial   
[The Youtube Video](https://www.youtube.com/watch?v=a0osIaAOFSE)  
[The Blogpost](https://dev.to/dabit3/the-complete-guide-to-full-stack-ethereum-development-3j13)  
[Github Code Example](https://github.com/dabit3/full-stack-ethereum)  
[Defining the web3 stack](https://edgeandnode.com/blog/defining-the-web3-stack/)

## Aim and goal
1. Build Smart contracts
2. Deploy smart contract to local network and test network
3. Read and write data to smart contracts that have been deployed to the block chain

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
__Scaffolding the project__  
Create a react application
```
$ npx create-react-app  react-dapp
```  
__Node package for dependencies__
Install dependencies on the react-app
```
$ npm install ethers
$ npm install hardhat
$ npm install @nomiclabs/hardhat-waffle
$ npm install @nomiclabs/hardhat-ethers
$ npm install ethereum-waffle
$ npm install chai
```  

__Ethereum development environment__  
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
The compile command takes our smart contract and
generate a machine readable code called _Application Binary Interface (ABI)_ and additional artifacts.  
Artifacts goes into the artifacts director specified by the `paths.artifacts` value in the `hardhat.config.js` file.  

__Local blockchain network__  
To launch a local node or network so that we can deploy to it for testing.  
```
$ npx hardhat node
```
This should produce a local test network with list of about 20 accounts that we can work with. Each account includes an address and a private key.   
To keep the network running, do not close the terminal window.

__Deployment to blockchain network__  
To deploy to a network, open another terminal window and execute `hardhat run` command
```
$ npx hardhat run script/deploy.js --network localhost
```  
This should output whatever `console.log` value from the deployment script. It is common to log the address of the smart contract.  

You should also activity logs of the deployment on the previous terminal where the local network is running.   

__Installing MetaMask Browser Extension__  
Metamask  is a tool used to interact with a block chain account.  
To use Metamask, install the `MetaMask` chrome extension, search for _metamask chrome extension_.  
After installing the extension, create a new wallet. Your _Secret Recovery Phrase_ makes it easy to back up and restore your account.  

__Adding a hardhat account to MetaMask__    
* Open Metamask
* Click on the Network selection drop down. (You may have Ethereum Mainnet selected by default.)
* Click _Add network_  
* Select _Add a network manually_  
* Enter the followinf values
```
Network name: Localhost
New RPC URL: http://localhost:8545/
Chain ID: 1337
Currency Symbol: ETH Hardhat
Block Explorer URL:
```
* Click Save

__Importing new accounts__  
* Click on the profile picture
* Click on _Import account__
* Select type should have _Private key_ selected
* Copy the private key form the first account from your hardhat local node and paste it in the _Private key_ input field.  
* Click import 
