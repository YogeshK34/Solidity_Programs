// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract UnderstandMapping {

    mapping(address => uint) public favouriteNumber;

    // to set the favouriteNumber 
    function setNumber(uint _number) public {
        favouriteNumber[msg.sender] = _number;
    }

    // to get the favouriteNumber 
    function getNumber() public view returns (uint) {
        return favouriteNumber[msg.sender];
    }
}