// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // only owner can call the function
    modifier onlyOwner {
        require(msg.sender == owner, "not owner");
        _;
    }

    // only the current owner of the contract can call this function ans set newOnwer
    function setOwner(address _newOner) external onlyOwner {
        // make sure the owner is not a zero address
        require(_newOner != address(0), "invalid address");
        owner = _newOner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {

    }


    function anyOneCanCallThisFunc() external  {

    }

}