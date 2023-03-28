## Lesson 2: Welcome to Remix! Simple Storage  
### Part1 : 02:01:17
[Remix Online IDE](https://remix.ethereum.org/)    
[Solidity Docs](https://docs.soliditylang.org/en/latest/index.html)    

### Setting Up Your First Contract  (Part 1 : 02:05:18)
__Solidity__
Solidity is the primary programming language of smart contracts.   
There are a few other smart contract programming languages such as Rust, JavaScript and Vyper.   

#### Basic Solidity Types (Part 1: 02:12:28)  
__Primitive types__  
1. boolean
2. uint
3. int
4. address
5. byte

#### Basic Solidity Functions (Part 1: 02:18:42)  
Every Smart contract have an address just like a wallet account does.   
Anytime you change something on-chain, including making a new contract, it happens in a transaction.  
When we deploy a contract, it is the same as sending a transaction.  
Deploying a contract is modifying the state of the blockchain.  


After deploying a smart contract, you can interact with the smart contract by calling the methods of the smart contract.  
These kind of interactions are considered a transaction.  

__Function Visibility Specifiers__  
1. public
2. private
3. external
4. internal (default)  

The more computational intensive you function is, the greater the gas.   

__View Function vs Pure Function__   
A veiw function and pure function do not need any gas to run. This is because they just read data from the blockchain.  
Gas is only spent in a transaction, a transaction happens when the blockchain state is modified.     

#### Basic Solidity Array and Structs  (Part 1: 02:35:31)  

#### Basic Solidity Erros and Warnings (Part 1: 02:45:35)  

#### Basic Solidity Memory, Storage & Calldata (Into) (Part 1: 02:46:35)  
__EVM Overview__  
EVM can access and store information in 6 places:  
1. Stack
2. Memory: Temporary variable that can be modified e.g function parameter
3. Storage: Permanent variable that can me modified e.g contract proprty
4. Calldata: Temporary variable that cannot be modified e.g function parameter
5. Code
6. Logs
Data location can only be specified for array, struct or mapping types.   

#### Basic Solidity Mapping (Part 1: 02:50:18)
A mapping is a data structure where a key is _mapped_ to a single value.  

#### Deploying your first contract (Part 1: 02:53:38)   
__To Deploy a contract to a testnet__  
1. Select the _Solidity compilier_ menu
2. Compile to contract
3. Select the _Deploy and run transaction_ menu
4. Under _Environment_, select _Injected Provider - MetaMask_ (as we are not Deployinng to JavaScript VM anymore). This will prompt the MetaMask popup.
5. Select the account you want to you from your meta mask and connect your meta mask account to the Remix platform.  
6. In this case, the network that our account is connected to in MetaMask will be the network that we will deploy to.  
7. Your selected account should now be seen in the under the _account_ section.  
8. Click on deploy button. This will prompt the MetaMask popup
9. You can look at the detail and the data for the smart contract you are deploying.  
10. Click the _Confirm_ button and wait for the deployment to be complete.  
11. Clicking the Confirm button is equavalent to signing the transaction and sending it to the blockchain to modify it's state.
12. The Gas fee for deployment of a contract on a Testnet is significantly higer then transfering ETH from one account to another.    


__To  view the transaction details__  
On the terminal section, right click on _View on etherscan_ and open in a new tab to see the transaction details.  

To find where to get Testnet _LINK_ and Testnet _ETH_  for any Testnet see [Link token to contract](https://docs.chain.link/resources/link-token-contracts/)  


__To view the details of the deployed contract__   
1. Go the the _Deployed Contracts_ section.
2. Copy the address of the deployed contract  
3. Go to the [Goerli etherscan](https://goerli.etherscan.io/)
4. Paste the contract address and press search button.  
5. You will see that the transaction is _Contract creation_ transaction.  

__Interacting with the contract__  
You interact with the contract by passing arguments to the function and executing them.  
As you do so, it will prompt the MetaMask popup and then you will have to confirm the transaction.    

__Deploying to a different Testnet__  
To deploy to a different network, all you need to do is to change the selected network on you MetaMask.  

#### The EVM and a Recap on Lesson 2 (Part 1: 03:03:08)  
When the smart contract code is compiled, it is compiles to EVM (Ethereum Virtual Machine) specification.     
Some EVM compatible blockchain are Avalanche, Fantom and Polygon.   
This means that we can write our Solidity code and deploy to any of these Blockchain.   
