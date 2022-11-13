// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Errors {

// Errors :: An error will undo all changes made to the state during a transaction.

// You can throw an error by calling require, revert or assert.

// require : is used to validate inputs and conditions before execution.
// revert : is similar to require. See the code below for details.
// assert : is used to check for code that should never be false. Failing assertion probably means that there is a bug.

 uint public balance;
 uint public constant MAX_UINT = 2**256 - 1;

function withdraw(uint _amount) public {
        uint oldBalance = balance;

        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;
        
        assert(balance <= oldBalance);
    }
}