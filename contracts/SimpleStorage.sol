// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import '../libs/Strings.sol';

contract SimpleStorage {
  uint data;
  User user;
  struct User {
    string name;
  }
  function updateData(uint _data) external {
    data = _data;
  }
  function readData() external view returns(uint) {
    return data;
  }
  function foo() external view returns (bool) { 
    User storage data2 = user;
    //data2.name = 'LALA';
    return Strings.equals(data2.name, 'RBX');
  }
}
