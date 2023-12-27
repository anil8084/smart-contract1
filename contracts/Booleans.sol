// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Booleans{
    bool public isOwner = true;

    function getVar() public view returns(bool){
        return isOwner;
    }

    function setVar(bool newValue) public{
        isOwner = newValue;
    }
}