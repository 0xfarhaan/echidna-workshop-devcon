// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.0;

import "./Ownership.sol";

contract Pausable is Ownership{
    bool is_paused;
    modifier ifNotPaused(){
            require(!is_paused);
            _;
    }

    function paused() isOwner public{
        is_paused = true;
    }

    function resume() isOwner public{
        is_paused = false;
    }
}
