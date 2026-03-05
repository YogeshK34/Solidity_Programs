// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract OwnerAndContractBalance {

	receive() external payable{}

	function returnContractBalance() public view returns (uint) {
		return address(this).balance;
	}	
 }

