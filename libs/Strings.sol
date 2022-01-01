// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

library Strings {
    function equal(string memory s1, string memory s2) external pure returns (bool) {
        return keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));
    }
}