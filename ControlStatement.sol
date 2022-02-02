// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ControlFlow {
    function example(uint x) external pure returns(uint) {
        if (x < 10) {
            return 1;
        } else if(x < 20) {
            return 2;
        } else {
            return 3;
        }
    }

    function loops() external pure {
        for(uint i = 0; i <= 10; i++) {

        }
        uint  num = 0;

        while (num <= 10) {
            num++;
        }
    }

    

}