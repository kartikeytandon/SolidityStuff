// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import { SimpleStorage } from './SimpleStorage.sol';

// the below line will inherit all the functions of SimpleStorage Contract
contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        myFavNumber = _newNumber + 5;
    }
}
