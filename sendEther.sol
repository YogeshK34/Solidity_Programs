// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherExample {

    function setEtherBalance() public payable {}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

// steps to see the balance 
// 1: Deploy the contract normally 
// 2: Post deployment: set the value as 1 and UNIT as Ether
// 3: Call the setEtherBalance()
// 4: Click getBalance(), it'll show the value in Wei 
// Output: 1000000000000000000
