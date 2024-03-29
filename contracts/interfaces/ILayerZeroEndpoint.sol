// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.11;

interface ILayerZeroEndpoint {
    // the send() method which sends a bytes payload to a another chain 
    function send(uint16 _chainId, bytes calldata _destination, bytes calldata _payload, address payable refundAddress, address _zroPaymentAddress,  bytes calldata txParameters ) external payable;

    // 
    function estimateFees(uint16 chainId, address userApplication, bytes calldata payload, bool payInZRO, bytes calldata txParameters)  view external returns(uint totalFee);

}