

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Number{
    uint256 public VAT = 100;

    constructor(){}

    mapping (address => uint256) acct;
    mapping (address => uint256) vatpayment;

    function getVatValue() public view returns (uint256){
        return VAT;
    }

    function addAmmount(uint256 _num) public  returns (bool){
        require(_num > VAT,"Not enough");

        uint res = _num - VAT;

        vatpayment[msg.sender]+= VAT;

        acct[msg.sender] += res;

        return true;
    }

    function getUserBal() public view returns (uint256){
        return acct[msg.sender];
    }

}