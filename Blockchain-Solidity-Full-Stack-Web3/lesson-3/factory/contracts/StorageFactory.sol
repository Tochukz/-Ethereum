//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";

contract StorageFactory {
  SimpleStorage[] public simpleStorageArray;

  function createSimpleStorageContract() public {
    // This will deploy the new contract
    SimpleStorage simpleStorage = new SimpleStorage();
    simpleStorageArray.push(simpleStorage);
  }

  function factoryStore(uint256 index, uint256 favNumber) public {
    // Address 
    // ABI - Application Binary Interface. 
    //  SimpleStorage simpleStorage = SimpleStorage(address);
    SimpleStorage simpleStorage = simpleStorageArray[index];
    simpleStorage.store(favNumber);
  }

  function getFavNumber(uint256 index) public view returns(uint256) {
    SimpleStorage simpleStorage = simpleStorageArray[index];
    return simpleStorage.retrieve();
  }
}