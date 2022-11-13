// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract C {
// Visibility :: Functions and state variables have to declare whether they are accessible by other contracts.

// Functions can be declared as

// public - any contract and account can call
// private - only inside the contract that defines the function
// internal- only inside contract that inherits an internal function
// external - only other contracts and accounts can call
// State variables can be declared as public, private, or internal but not external.

    address public owner;

    constructor() {
        owner = msg.sender;
    }
}
