// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.0;

import "./Pausable.sol";

contract Token is Pausable{
    mapping(address => uint) public balances;
    function transfer(address to, uint value) ifNotPaused public{
        balances[msg.sender] -= value;
        balances[to] += value;
    }
}
