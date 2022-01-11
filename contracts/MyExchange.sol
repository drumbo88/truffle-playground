// SPDX-License-Identifier: RBX 
pragma solidity ^0.8.0;

import './RbxToken.sol';
import './MyExchangeTransferToken.sol';

contract MyExchange {

    address private _rbxTokenAddress = 0xACA362D23Ef0ac48a5159e7D0889cDDEF1D554a8;
    address private _mettAddress = 0x0CE118A677704Fe6745cC002F833BC5bc3AE3c49;

    function transfer(address recipient, uint amount) external {
        RBX token = RBX(_rbxTokenAddress);
        token.approve(_mettAddress, amount);
        
        MyExchangeTransferToken tToken = MyExchangeTransferToken(_mettAddress);
        tToken.transferFrom(recipient, amount);
    }
}