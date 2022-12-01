// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Counter {
    uint public counter = 0;

    function inc() external {
        counter += 1 ;
    }

    function reset() external {
        counter = 0;
    }

    function dec() external {
        counter -= 1;
    }

}

