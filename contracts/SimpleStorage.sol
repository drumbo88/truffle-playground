// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
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
  function reduceDataToHalf() external view returns(uint) {
    return uint(data / 2);
  }
  function foo() external view returns (bool) { 
    User storage data2 = user;
    return Strings.equal(data2.name, 'RBX');
  }
}
