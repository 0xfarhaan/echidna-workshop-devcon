// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.0;

contract Ownership{
address owner = msg.sender;
    function Owner() public{
            owner = msg.sender;
        }
        modifier isOwner(){
            require(owner == msg.sender);
            _;
        }
}
