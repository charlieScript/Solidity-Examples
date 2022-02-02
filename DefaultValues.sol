// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract DefaultValues {
    bool public b;// false
    uint public u;// 0
    int public i;// 0
    address public add;// 0x(40zeros)0000..000
    bytes32 public b32;// 0x000...00 hexadecimal zeros

    uint public constant MY_NUM = 30;
}

contract Var {
    uint public num = 30;
}