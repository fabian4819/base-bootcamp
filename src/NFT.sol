// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC721} from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 public nextTokenId;
    address public admin;

    error Unauthorized();

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        admin = msg.sender;
    }

    function mint(address to) external onlyAdmin {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        _;
    }
}
