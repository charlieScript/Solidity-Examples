// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract HelloWorld {
    string public mystring = "hello world";
    
    // DATA TYPES AND REFERNCES
    // VAKUE TYPES
    bool public b = true;
    uint public u = 123;
    int public i = -123;

    // value types size
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // address type
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // bytes
    // bytes1 public by = 1;

    //functions
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }

    // types of variable
    // state variable
    uint public myUint;

    // local variable
    function foo() external {
        uint x = 123;
        b = false;
        u += 1000;
        i = int(x);
    }

    uint private testvar = 10;


    // global variable
    function globalVar() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}