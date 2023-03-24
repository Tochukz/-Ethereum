# Sample Projects
### Setting up our local development environment
Create project directory and run npm init
```
$ mkdir ntf-collectible
$ cd ntf-collectible
$ npm init -y
```
Install hardhat
```
$ npm install --save-dev hardhat
```
Create sample hardhat project  
```
$ npx hardhat
```
This will start an interactive shell.   
Select _Create a JavaScript project_.
Agree to all the defaults (project root, adding a .gitignore, and installing all sample project dependencies).    

Check that the sample project has been installed properly  
```
$ npx hardhat run scripts/deploy.js  
```  

__For NFTs__  
Install the OpenZeppelin contracts package.  
This will give us access to the _ERC721_ contracts (the standard for NFTs) as well as a few helper libraries.  
```
$ npm install @openzeppelin/contracts
```


__Resources__  
[Tutorial: Building a web3 frontend with React](https://medium.com/scrappy-squirrels/tutorial-building-a-web3-frontend-with-react-e0a87ea3bad)   
[Tutorial: Writing an NFT Collectible Smart Contract](https://medium.com/scrappy-squirrels/tutorial-writing-an-nft-collectible-smart-contract-9c7e235e96da)   
