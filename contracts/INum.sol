// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


interface INumber {

     function getVatValue() external view returns (uint256);

     function addAmmount(uint256 _num) external   returns (bool);

      function getUserBal() external  view returns (uint256);
    
}