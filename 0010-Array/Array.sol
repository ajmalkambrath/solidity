// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Array {
    // Array :: can be fixed size or dynamic size
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function removeCompact(uint index) public {
        // Deleting an element creates a gap in the array.
        // One trick to keep the array compact is to
        // move the last element into the place to delete.

        // It resets the value at index to last value of an array,
        // then delete the current index value
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    // Examples of removing array element
    // Remove array element by shifting elements from right to left
    uint[] public _arr;

    function removeByShifting(uint _index) public {
        require(_index < _arr.length, "index out of bound");

        for (uint i = _index; i < _arr.length - 1; i++) {
            _arr[i] = arr[i + 1];
        }
        _arr.pop();
    }

    // creating in memory array
    function inMemoryArray()  external pure {
        // create array in memory, only fixed size can be created
        // push , poip will not work with in memory array
        uint[] memory a = new uint[](5);
    }
}