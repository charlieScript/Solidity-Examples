// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SendEth {
    constructor() payable {}

    fallback() external payable {}

    recieve() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(1);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(1);
        require(sent, "send failed");
    }

    function sendViaCall(address payable _to) external payable {
       (bool success, ) = _to.call{value: 1}("");
       require(success, "call failed");
    }
}

contract EthReciever {
    event Log(uint amount, uint gas);

    fallback() external payable {
        emit Log(msg.value, gasleft());
    }
}