// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPaused(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        // paused == true, cancel transaction
        require(!paused, "paused");
        _;
    }

    // extends whenNotPaused function
    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    // by inputs
    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }


    // sandwich code
    modifier sandwich() {
        // CODE HERE
        count += 10;
        _; // main function gets called here sandfoo()
        // mode code HERE
        count += 2;
    }

    function sandFoo() external sandwich {
        count += 1;
    }


}