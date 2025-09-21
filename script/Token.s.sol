// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Token} from "../src/Token.sol";
import "forge-std/Script.sol";

contract TokenScript is Script {
    Token public token;

    function run() external returns (address) {
        vm.createSelectFork(vm.rpcUrl("base-sepolia"));
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        token = new Token("FUFUFAFA", "FFF");
        console.log("Token deployed to:", address(token));
        vm.stopBroadcast();

        return address(token);
    }
}
