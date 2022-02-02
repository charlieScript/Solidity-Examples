// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// return multiple outputs
// named outputs
// destructuring assignmed

contract Array {
   // dynamic
   uint[] public num;

   // fixed sized
   uint[5] public numFixed;

   // initialisiation
   uint[] public numsIn = [1, 2, 3];

   uint[3] public numsFixed = [1, 2, 4];

   // operions push, get, update, delete, pop, length
   function examples() external {
        num.push(2);
        numsIn[1] = 777;
        delete numsIn[2]; // does not change the length
        numsIn.pop();// removes last element
        // uint len = numsIn.length; // length of the array
    
        // create array in memory
        // uint[] memory a = new uint[](5);

   }

//    function returnArray() external view returns (uint memory)

    //  Array shift
    // [1,2,3,4,5,6] -- remove(2) -- [1,2,4,5,6,6] -- [1,2,4,5,6]
    uint[] public arr;
    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for(uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop(); //remove last element
    }

    function test() external {
        arr = [1,2,3,4,5];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[0] == 2);
        assert(arr[0] == 4);
        assert(arr[0] == 5);
        assert(arr.length == 4);
        assert(arr[0] == 1);
    }


    // 
}