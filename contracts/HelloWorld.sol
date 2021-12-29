// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  string salute = 'Hello Blockchain World!';

  function sayIt() external view returns(string memory) {
    return salute;
  }
}
