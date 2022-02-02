// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public x;

    constructor(uint _x) {
        owner = msg.sender; // deplyer of the contract
        x = 123;
        x = _x;
    }


}
