// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract C {

    // A constructor is an optional function that is executed upon contract creation.
    
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}
