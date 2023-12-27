// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract HelloWorld1{
    string public text = "Hello World";

    function getText() public view returns(string memory){
        return text;
    }
}