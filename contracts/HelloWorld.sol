// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  string salute = 'Hello Blockchain World!';

  function sayIt() external view returns(string memory) {
    return salute;
  }
  function ifStructure() external {
    bool x = false;
    bool y = false; // No válido múltiples: bool x,y; ó bool x = false, y = true;
    if (1 > 2 && !(3 <= 4) || StringUtils.equal(portcheck,"signed"))) // salute != '' (no se puede comparar strings con == !=) 
      x = true;
    else if (true) 
      y = true;
  }
}
