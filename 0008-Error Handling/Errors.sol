// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Errors {

    // Errors :: An error will undo all changes made to the state during a transaction
    // gas also refund

    // You can throw an error by calling require, revert, assert or custome error

    // 1. require : is used to validate inputs and conditions before execution.
    // 2. revert : is similar to require. usefull inside nested if else or conditional code
    // 3. assert : is used to check for code that all ways true, should never be false. Failing assertion probably means that there is a bug.
    // 4. custome error handling

    uint public balance;

    function requireFn(uint _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function revertFn(uint _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    function assertFn() public view {
       // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of balance
        assert(balance == 0);
    }

    // custom error
    // save gas used
    error customError(uint balance, uint withdrawAmount);
    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert customError({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
    
}