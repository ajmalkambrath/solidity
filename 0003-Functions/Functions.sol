// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Function :: Function Example 

contract C {
    // Functions - 2 types
    // 1. Creates transaction
    // 2. Does not create transaction (view and pure)
    // By default Solidity create getters for public state variables

    string public name = "Hello World";

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}

// Function :: Function structure 

contract C1 {
    // f : function name
    // (uint a, uint b) : data type and variable name of each input
    // function visibity : public, external, internal, and private
        // public:
        // external:
        // internal:
        // private:
    // function behaviour : view | pure | payable
        // view: do not modify state
        // pure: do not modify state and do not read state
        // payable: 
    // returns (uint): type of output to return
    function f(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}

// Public Function :: I/O restrictions

contract C2 {
    // 1. Invalid Input for Public Function
        // Not allowed
            // Map | {}
            // Multi-dim array ( unfixed size ) | unit[][]
         // Allowed
            // Multi-dim array ( fixed size ) allowed | unit[10][10]
            // Array with upper bound allowed
            // All other data types

    // 2. Invalid Output for Public Function
    // Outout can be name or assigned or destructuring
        // Not allowed
            // Map | {}
            // Multi-dim array ( unfixed size ) | [][]
        // Allowed
            // Multi-dim array ( fixed size ) allowed
            // Array with upper bound allowed
            // All other data types

        function arrayInput(uint[] memory _arr) public {} // Can use array for input

        uint[] public arr;
        function arrayOutput() public view returns (uint[] memory) { // Can use array for output
            return arr;
        }

}

// Public Function :: Multiple Input value

contract C3 {

    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    // Call function with argument passing as inputs
    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }
    // Call function with key-value inputs
    function callFuncWithKeyValue() external pure returns (uint) {
        return someFuncWithManyInputs({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
}

// Public Function :: Returning Multiple Outputs
// Return multiple outputs
// Named outouts
// Destructuring assigment

contract C4 {

    // return multiple values
    function returnMultipleVals() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // named return multiple values
    function namedReturnMultipleVals() public pure returns (uint x, bool y, uint z) {
        return (1, true, 2);
    }
    // name explicit return multiple values
    function nameReturnMultipleValsExplicit() public pure returns (uint x, bool y, uint z) {
        x = 1;
        y = true;
        z = 2;
    }

    //  destructuring assigment
    function destructuringAssigment() public pure returns (uint, bool, uint, bool, uint) {
       (uint x, bool y, uint z) = returnMultipleVals();
       (, bool _y, uint _z) = returnMultipleVals();
       return (x, y, z ,_y, _z);
    }

}