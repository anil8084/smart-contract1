// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Address{
  //  address private owner =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

  address private owner = msg.sender;

     function getOwner() public view returns(address){
        return owner;
     }
}