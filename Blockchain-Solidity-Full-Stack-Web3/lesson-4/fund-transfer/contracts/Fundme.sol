// Get funds from users 
// Withdraw fund 
// Set a minimum funding value in dollar 

// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

// See https://www.npmjs.com/package/@chainlink/contracts and/or
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
// import "./AggretatorV3Interface.sol";

contract FundMe {

  uint256 public minimumUsd = 50 * 1e18;

  addresses[] funders public;

  mapping(address => uint256) public addressToAmountFunded;
  
  function fund() public payable {
    // revert transaction if value sent is less than 1ETH
    require(getConversionRate(msg.value) >= minimumUsd, "You didn't send enough fund!"); 
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] = msg.value;
    // msg.value is a global representing the amount sent 
    // msg.sender is also a global representing the sender's address 
  }

  function getPrice() public view returns(uint256) {
     // ABI 
     // Address:  0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e 
     // The above address is obtained from Gorli testnet price feed addresses: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum#Goerli%20Testnet
     AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
     (,int256 price,,,) = priceFeed.latestRoundData();
     //ETH in terms of USD
     return uint256(price * 1e10);
  }

  function getVersion() public view returns(uint256) {
     // The address used as argument was obtained from Gorli testnet price feed addresses: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum#Goerli%20Testnet
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    return priceFeed.version();
  }

  function getConversionRate(uint256 ethAmount) public view returns(uint256) {
    uint256 ethPrice = getPrice();
    uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
    // Always multiple before you divide in solidity
    return ethAmountInUsd;
  }

  // function withdraw() {
  // }
}