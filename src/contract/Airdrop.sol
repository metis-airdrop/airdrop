// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <=0.8.0;

import './IERC20.sol';

contract Airdrop {
   
    mapping(address => uint) public balances;
    IERC20 metis;

   constructor(address token) {
       metis = IERC20(token);
       // TODO record user's balance here
   }
   
   function claim() public returns (bool) {
       uint balance = balances[msg.sender];
       require(balance > 0, "require balance more than 0");
       require(metis.transfer(msg.sender, balance), "require transfer success");
       balances[msg.sender] = 0;
       return true;
   }
}
