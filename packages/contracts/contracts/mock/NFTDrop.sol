// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTDrop is ERC721 {
  uint256 public totalSupply;

  constructor() ERC721("NFTDrop", "NFTD") {}

  function mint() public {
    uint256 tokenId = totalSupply;
    totalSupply++;
    _mint(msg.sender, tokenId);
  }
}
