// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // stating the version of the solidity

contract SimpleStorage {
    // default value of uint256 is 0
    uint256 myFavNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }
    
    // dynamic array
    Person[] public listOfPeople;
    
    // Person public bhoomi = Person(21, "Bhoomi");

    // modifying the state of the block - requires gas
    function store(uint256 _favNumber) public {
        myFavNumber = _favNumber;
    }

    // reading the state of the block - no gas required
    // we can use 'view' keyword to prevent from modifying the block
    function retrive() public view returns(uint256) {
        return myFavNumber;
    }

    mapping(string => uint256) public nameToFavNumber;

    function addPeople(string memory _name, uint256 _favNumber) public {
        listOfPeople.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}
