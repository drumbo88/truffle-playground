// SPDX-License-Identifier: RBX 
pragma solidity ^0.8.0;

import './RbxToken.sol';

contract MyExchangeTransferToken {

    address private _tokenAddress = 0xACA362D23Ef0ac48a5159e7D0889cDDEF1D554a8;

    function transfer(uint amount) external {
        RBX token = RBX(_tokenAddress);
        token.transfer(msg.sender, amount);
    }
    function transferFrom(address recipient, uint amount) external {
        RBX token = RBX(_tokenAddress);
        token.transferFrom(msg.sender, recipient, amount);
    }
}