// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0;
import '../libs/Strings.sol';

contract HelloWorld {
  uint[] numeros;
  string salute = 'Hello Blockchain World!';

  function sayIt() external view returns(string memory) {
    return salute;
  }
  function ifStructure() external view {
    bool x = false;
    bool y = false; // No válido múltiples: bool x,y; ó bool x = false, y = true;
    if (1 > 2 || !(3 <= 4) && Strings.equal(salute,"signed")) // salute != '' (no se puede comparar strings con == !=) 
      x = true;
    else if (true) 
      y = true;
  }
  function forStructure() external view returns(uint) {
    uint sum = 0;
    for (uint i; i<numeros.length; i++)
      sum += numeros[i];
    return sum;
  }
}
