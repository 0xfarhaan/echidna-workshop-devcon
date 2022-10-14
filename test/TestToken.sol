// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.0;

import "../src/Token.sol";

contract TestToken is Token {
    address echidna_caller = msg.sender;
    constructor(){
       paused(); // pause the contract
       owner = address(0x0); // lose ownership
     }
    // add the property
    function echidna_no_transfer() public view returns (bool) {
        return is_paused == true;
    }
 }
