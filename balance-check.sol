// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract checkBalanceOnceAgain {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function returnOwnerBalance() public view returns (uint) {
        return owner.balance;
    }
}
