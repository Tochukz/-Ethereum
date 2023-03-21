// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;  

contract SimpleStorage {
  //primitive types: boolean, uint, int, address and byte
  uint256 public favoriteNumber;

  mapping(string => uint256) public nameToFavoriteNumber;

  Person public tochukwu = Person({favoriteNumber: 130, name: "Tochukwu"});
  struct Person {
     uint256 favoriteNumber;
     string name;
  }

  Person[] public people;

  function store(uint256 favNumber) public virtual {
      favoriteNumber = favNumber;
  }

  // view, pure
  function retrieve() public view returns(uint256) {
      return favoriteNumber;
  }

  function add() public pure returns(uint256) {
      return (1 + 1);
  }

  //calldata, memory, storage
  function addPerson(string memory name, uint256 favNumber) public {
    // Person memory person = Person({name: name, favoriteNumber: favNumber});
    Person memory person = Person(favNumber, name);
    people.push(person);
    // people.push(Person(favNumber, name));

    nameToFavoriteNumber[name] = favNumber;
  }
}
// 0xd9145CCE52D386f254917e481eB44e9943F39138