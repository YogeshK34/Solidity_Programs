// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract HelloWorld {
    string public helloWorld;
    // uint public number;

    constructor() {
        number = 10;
    }
    uint public number = 10;

    function setHelloWorld() public {
        helloWorld = "hello world";
    }

    function setNumber() public {
        number += 10;
    }
}
