//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MemeForest is ReentrancyGuard{
    using Counters for Counters.Counter;
    Counters.Counter public NumOfAllMemes;
    Counters.Counter public NumOfAllMemebers;

    struct MemeMembers{
        string Name;
        address MemberAddress;
        uint MyId;
        uint MyMemes;
        uint MyStarredMemes;
        uint MyDeletedMemes;
        string Datejoined;
    }

    struct MemeFiles{
        string Memeinfo;
        address Owner;
        uint fileId;
        bool starred;
        uint Stars;
        uint Likes;
        string DateOfCreation;
        string FileType;
        bool IsDownloadable;
    }

    mapping(uint => MemeMembers) private IdMembers;
    mapping(address => bool) private alreadyAMember;
    mapping(address => mapping(uint => bool)) private DidyouStar;
    mapping(address => mapping(uint => bool)) private DidyouLike;
    mapping(uint => MemeFiles) private IdMemeFiles;
    mapping(uint => address) private StarredMemeFiles;

    uint public NumberOfUploads;

    event Memberjoined(
        uint256 MemberId,
        string MemberName,
        s 
    )
}