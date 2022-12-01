// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// *****************
// Variables
// *****************

// There are 3 types of variables in Solidity

// local
    // declared inside a function
    // not stored on the blockchain
// state
    // declared outside a function
    // stored on the blockchain
// global (provides information about the blockchain)

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public stateVariable = 1;

    function foo() external {
        // Local variables are not saved to the blockchain.
        // local variable exisit only when funciton excecute
        uint localVariable = 1;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        uint blockNumber = block.number; // Current block number
        address sender = msg.sender; // address of the caller
    }
}


// *****************
// Constants Variables
// *****************

// Constants are variables that cannot be modified.
// Their value is hard coded and using constants can save gas cost.

contract Constants {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}