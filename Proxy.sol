 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Proxy {
    event Deploy(address);
    function deploy(bytes memory _code) external payable {
        assembly {
            // create(v, p , n)
            // v = amount of ETH to send
            // p = pointer in memery to start code
            // n = size of code
            create(callvalue(), add(_code, 0x20), mload(_code));
        }
    }
}