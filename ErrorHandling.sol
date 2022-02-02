// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandler {

    // require example
    function requireEx(uint x) external pure {
        require(x <= 10, "x < 10");
        // code
    }

    // revert example
    function revertEx(uint x) external pure {
        if(x < 10) {    
            revert("x < 10");

        }
        // code
    }

    // assert
    uint public num = 123;

    function assertEx() public view {
        assert(num == 123);
    }

    function foo(uint _i) public {
        num += 1;
        require(_i < 10);
    }

}