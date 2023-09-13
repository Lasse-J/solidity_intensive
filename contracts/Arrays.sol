// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Array initalization
// Homework: try more data types!
contract Arrays1 {
    uint[] public array1 = [1, 2, 3];
    uint[] public array2; // this initializes an array of uints
    uint[10] public array3; // this initializes a fixed size array of 10 uints, default to 0
    string[] public array4  = ["apple", "banana", "carrot"];
    string[] public array5; // this initializes an array of strings
    string[10] public array6; // this initializes a fixed size array of 10 strings, default to ""
    address[] public array7 = [0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c, 0xE5C430b2dD2150a20f25C7fEdE9981f767A48a3D, 0xe5C430B2dD2150A20f25c7FedE9981f767A48a3E];
    address[] public array8;
    address[10] public array9;
    bool[] public array10 = [true, false, true];
    bool[] public array11;
    bool[10] public array12; // default to false
}


// Array functions
// Homework: try manipulating more arrays & data types
contract Arrays2 {
    uint[] public array;

    // Get value at a given index
    function get(uint i) public view returns (uint) {
        return array[i];
    }

    // Return the whole array
    function getArray() public view returns (uint[] memory) {
        return array;
    }

    // Return the length of the array
    function length() public view returns (uint) {
        return array.length;
    }

    // Adds new value at the end of the array
    function push(uint i) public {
        array.push(i);
    }

    // Removes last item from array
    function pop() public {
        array.pop();
    }

    // Remove item at given index
    function remove(uint index) public {
        delete array[index];
    }
}

contract Arrays3 {
    string[] public stringArray;

    // Get value at a given index
    function get(uint i) public view returns (string memory) {
        return stringArray[i];
    }

    // Return the whole array
    function getArray() public view returns (string[] memory) {
        return stringArray;
    }

    // Return the length of the array
    function length() public view returns (uint) {
        return stringArray.length;
    }

    // Adds new value at the end of the array
    function push(string memory i) public {
        stringArray.push(i);
    }

    // Removes last item from array
    function pop() public {
        stringArray.pop();
    }

    // Remove item at given index
    function remove(uint index) public {
        delete stringArray[index];
    }
}
