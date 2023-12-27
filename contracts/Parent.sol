// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Parent {
    uint public parentData;

    constructor(uint _parentData) {
        parentData = _parentData;
    }
}

contract Child is Parent {
    uint public childData;

    constructor(uint _parentData, uint _childData) Parent(_parentData) {
        childData = _childData;
    }
}