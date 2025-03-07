// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// we are here importing a specific contract named SimpleStorage from another file
import { SimpleStorage } from './SimpleStorage.sol';

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    // this function is responsible for deploying another smart contract
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    // through this function we will be accessing the store function of the deployed contracts
    function sfStorage(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage newSimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        newSimpleStorage.store(_newSimpleStorageNumber);
    }

    // we are here retrieving the variable stored in the contract
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage newSimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return newSimpleStorage.retrive();
    }
}
