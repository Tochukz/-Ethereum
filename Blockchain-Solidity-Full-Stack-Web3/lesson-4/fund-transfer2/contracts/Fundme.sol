// Get funds from users 
// Withdraw fund 
// Set a minimum funding value in dollar 

// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {

  using PriceConverter for uint256;

  uint256 public minimumUsd = 50 * 1e18;

  address[] public funders;

  mapping(address => uint256) public addressToAmountFunded;

  address public owner;
  
  constructor() {
    // The owner represents the address of the person that deployed the smart contract
    owner = msg.sender;
  }

  function fund() public payable {
    // revert transaction if value sent is less than 1ETH
    // require(getConversionRate(msg.value) >= minimumUsd, "You didn't send enough fund!"); 
    require(msg.value.getConversionRate() >= minimumUsd, "You didn't send enough fund!"); 
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] = msg.value;
    // msg.value is a global representing the amount sent 
    // msg.sender is also a global representing the sender's address 
  }

  function withdraw() public onlyOwner {
    
    for (uint256 funderIndex; funderIndex < funders.length; funderIndex++) {
      address funder = funders[funderIndex];
      addressToAmountFunded[funder] = 0;
    }

    // reset the array 
    funders = new address[](0);

    // There are three way to send ether to the caller account
    // 1. transfer 
    // payable(msg.sender).transfer(address(this).balance);

    // 2. send
    // bool sendSuccess = payable(msg.sender).send(address(this).balance);
    // require(sendSuccess, "Send failed!")

    // 3. call (recommended)
    (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
    require(callSuccess, "Call failed!");
  }

  modifier onlyOwner() {
    require(owner == msg.sender, "Sener is not owner");
    _; // continue executing the rest of the function's code
  }
}