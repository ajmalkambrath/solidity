// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Variables {
    // storage - state variables ( Permanent )
    // memory - variables only available while function is executing
    // calldata - function arguments are stored
    string public greet = "Hello World"; // storage

    function test() {
        string memory data = "Hello World"; // memory
    }
}