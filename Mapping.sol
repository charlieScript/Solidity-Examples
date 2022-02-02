 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public nested;
    mapping(address => bool) public inserted;

    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    // size of a mapping
    function getSize() external view returns(uint){
        return keys.length;
    }

    // get first value
    function first() external view returns(uint) {
        return balances[keys[0]];
    }

    // get last value
    function last() external view returns(uint) {
        return balances[keys[keys.length - 1]];
    }

    // get a value
    function first(uint _i) external view returns(uint) {
        return balances[keys[_i]];
    }

    function example() external {
        balances[msg.sender] = 123;
        // uint bal = balances[msg.sender];
        // uint bal2 = balances[address(1)];

        // // updating
        // balances[msg.sender] += 456; // 123 + 456

        // // deleting mapping
        // delete balances[msg.sender]; // 0

    }


}