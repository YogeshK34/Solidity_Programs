// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract StoreBalance {
    mapping (address => uint) public balances;

    // function that adds the sent amount to user's address 
    function addAmount(uint amount) public {
        balances[msg.sender] += amount;
    }

    // function to return the balance 
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
