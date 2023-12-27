// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract Example1 {

    address owner;

    struct Counter {
        uint number;

        string description;

    }

    Counter counter;

    modifier onlyOwner() {
        require(msg.sender == owner, "only the owner can increment or decrement the counter");
        
        _;

    }

    constructor(uint initial_value, string memory description) {
        owner = msg.sender;

        counter = Counter(initial_value, description);

    }

    function increment_counter() external onlyOwner {
        counter.number += 1;

    }

    function decrement_counter() external onlyOwner {
        counter.number -= 1;

    }

    function get_counter_value() external view returns(uint) {
        return counter.number;

    }

    // new funtion to update the counter's description

    function updateDescription(string memory newDescription) external onlyOwner {
        counter.description = newDescription;
    }

}