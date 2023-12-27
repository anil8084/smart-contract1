// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract ModifierExample {
    address public owner;
    uint public myNumber;

    //define ModifierExample
    //address constant ALLOWED_ADDRESS = 0X456;

    constructor(uint _myNumber) {
        owner = msg.sender;
        myNumber = _myNumber;
    }

    modifier onlyOwnerOrAddress(address _allowAddress) {
        require(msg.sender == owner || msg.sender == _allowedAddress , "only the owner an allowed address can call this function.");
        _;
    }

    function changeNumber(uint _newNumber) public onlyOwnerOrAddress(address(0X456)) {
        myNumber = _newNumber;
    }
}