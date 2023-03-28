// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.8;

// See https://www.npmjs.com/package/@chainlink/contracts and/or
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
// import "./AggretatorV3Interface.sol";

library PriceConverter {
  function getPrice() internal view returns(uint256) {
     // ABI 
     // Address:  0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e 
     // The above address is obtained from Gorli testnet price feed addresses: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum#Goerli%20Testnet
     AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
     (,int256 price,,,) = priceFeed.latestRoundData();
     //ETH in terms of USD
     return uint256(price * 1e10);
  }

  function getVersion() internal view returns(uint256) {
     // The address used as argument was obtained from Gorli testnet price feed addresses: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum#Goerli%20Testnet
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
    return priceFeed.version();
  }

  function getConversionRate(uint256 ethAmount) internal view returns(uint256) {
    uint256 ethPrice = getPrice();
    uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
    // Always multiple before you divide in solidity
    return ethAmountInUsd;
  }
}