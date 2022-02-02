// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract HelloWorld {
    int public num = 0;

    

    function inc() external {
        num += 1;
    }

    function dec() public  {
        num -= 1;
    }
}