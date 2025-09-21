// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function decrement() public {
        number--;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function reset() public {
        number = 0;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    
}
