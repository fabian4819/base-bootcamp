// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Token} from "../src/Token.sol";
import {Test, console} from "forge-std/Test.sol";

contract TokenTest is Test {
    Token token;
    address public owner = makeAddr("owner");
    address public user1 = makeAddr("user1");

    function setUp() public {
        vm.startPrank(owner);
        token = new Token("MyToken", "MTK");
        vm.stopPrank();
    }

    function testInitialDeploy() public {
        assertEq(token.name(), "MyToken");
        console.log(token.name());
        assertEq(token.symbol(), "MTK");
        console.log(token.symbol());
        assertEq(token.totalSupply(), 0);
        console.log(token.totalSupply());
        assertEq(token.balanceOf(owner), 0);
        console.log(token.balanceOf(owner));
    }

    function testMint() public {
        uint256 mintAmount = 1000;
        vm.startPrank(owner);
        token.mint(user1, mintAmount);
        vm.stopPrank();
        assertEq(token.totalSupply(), mintAmount);
        console.log(token.totalSupply());
        assertEq(token.balanceOf(user1), mintAmount);
        console.log(token.balanceOf(user1));
        vm.startPrank(owner);
        token.mint(user1, mintAmount);
        vm.stopPrank();
        console.log(token.totalSupply());
        console.log(token.balanceOf(user1));
    }

    function testUnauthorizedMint() public {
        uint256 mintAmount = 1000;
        vm.startPrank(user1);
        vm.expectRevert(Token.Unauthorized.selector);
        token.mint(user1, mintAmount);
        vm.stopPrank();
    }
}
