 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLoactions {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function _internal(uint[] calldata y) private pure {
        uint x = y[0];
    }

    function examples(uint[] calldata _y, string calldata _s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({ foo: 123, text: "bar" });

        // storage
        MyStruct storage myStruct = myStructs[msg.sender]; // the variable points to the mapping structs and changes it;
        myStruct.text = "foo";
        myStruct.foo = 1234567890;

        // memory
        MyStruct memory readOnly = myStructs[msg.sender]; // does not change the original variable;
        readOnly.foo = 456;

        uint[] memory memArr = new uint[](3);
        memArr[0] = 123;
        memArr[1] = 123;
        memArr[2] = 123;

        _internal(_y);

        return memArr;

    }

   
}