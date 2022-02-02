// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// parent
contract X {
    function foo() public pure virtual returns(string memory) {
        return "A";
    }

    function bar() public pure virtual returns(string memory) {
        return "A";
    }  

    function baz() public pure virtual returns(string memory) {
        return "A";
    }   
}

// child
contract Y is X {
    function foo() public pure virtual override(X) returns(string memory) {
        return "B";
    }

    function bar() public pure virtual override(X) returns(string memory) {
        return "AB";
    } 
    
}

contract Z is X, Y {
    function foo() public pure override(X, Y) returns(string memory) {
        return "B";
    }

    function bar() public pure override(X, Y) returns(string memory) {
        return "c";
    }
}