// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Constructs {
    address public owner;
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) {
        owner = msg.sender;
        name = _name;
        age = _age;
    }

    modifier onlyOwner() {
        require(msg.sender = owner , "only the owner can call this function ");
    }

    function changeName(string memory _newName) public onlyOwner {
        name = _newName;
    }
}