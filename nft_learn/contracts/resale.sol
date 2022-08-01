// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// listSale 挂牌出售（
// itemId,tokenId,seller: wallet address,price:value,owner:marketcontract）
// check if token is not already listed
// ask for listing fee:price to list上架价格
// request transfer token from NFT Contract

// buyNft 购买
// transfer 10 matic to seller
//transfer from add(this),msg.sender
// delete itemid
//delete tokenid

import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Resale is IERC721Receiver, ReentranyGuard, Ownable {
    address payable holder;
    uint256 listingFee = 0.0025 ether;
    using Counters for Counters.Counter;
    Counters.Counter private _itemIds;
    Counters.Counter private _itemSold;

    struct List {
        uint itemId;
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }
    mapping(uint256 => List) public valueItems;

    event NFTListCreated(
        uint256 indexed tokenId,
        address seller,
        address holder,
        uint256 price,
        bool sold
    );

    ERC721Enumerable nft;
    constructor ( ERC721Enumerable _nft)  {
        holder=payable(msg.sender)
        nft=_nft
    }
}
