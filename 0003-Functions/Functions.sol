// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Variables {
    // Functions - 2 types
    // 1. Creates transaction
    // 2. Does not create transaction (view and pure)
    // Solidity create getters for public state variables

    string public name = "Hello World";

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}