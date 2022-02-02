// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// return multiple outputs
// named outputs
// destructuring assignmed

contract Ownable {
   function returnMany() public pure returns(uint, bool) {
       return (1, true);
   }

   function named() public pure returns(uint a, bool b) {
       return (1, true);
   }

   function assigned() public pure returns(uint a, bool b) {
       a = 1;
       b = true;
   }

   function destructuringAss() public pure  {
       (uint a, bool b) = returnMany();
       (, bool _b) = returnMany();
   }

}