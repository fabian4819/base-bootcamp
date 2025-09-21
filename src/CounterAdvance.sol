// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ICounter {
    function setNumber(uint256 newNumber) external;
    function increment() external;
    function decrement() external;
    function getNumber() external view returns (uint256);
    function getBalance() external view returns (uint256);
}

// contract CounterAdvance is ICounter {
//     ICounter public counter;
//     uint256 public number;
//     address public owner;

//     modifier onlyOwner() {
//         require(msg.sender == owner, "Not the owner");
//         _;
//     }

//     constructor(address _counter, uint256 _number) {
//         counter = ICounter(_counter);
//         number = _number;
//     }

//     function setNumber(uint256 newNumber) public onlyOwner {
//         number = newNumber;
//     }

//     function increment() public onlyOwner {
//         number++;
//     }

//     function decrement() public onlyOwner {
//         number--;
//     }

//     function getNumber() public view returns (uint256) {
//         return number;
//     }

//     function getBalance() public view returns (uint256) {
//         return address(this).balance;
//     }

//     function callSetNumber(address counterAddress, uint256 newNumber) public {
//         ICounter(counterAddress).setNumber(newNumber);
//     }

//     function test() public {
//         counter.setNumber(5);
//         counter.increment();
//         uint256 currentNumber = counter.getNumber();
//         counter.decrement();
//         uint256 balance = counter.getBalance();
//     }

//     function testPrivate() private {
//         counter.setNumber(5);
//         counter.increment();
//         uint256 currentNumber = counter.getNumber();
//         counter.decrement();
//         uint256 balance = counter.getBalance();
//     }

//     function testInternal() internal {
//         counter.setNumber(5);
//         counter.increment();
//         uint256 currentNumber = counter.getNumber();
//         counter.decrement();
//         uint256 balance = counter.getBalance();
//     }

//     function getBalance(address account) external view returns (uint256) {
//         return account.balance;
//     }
// }
