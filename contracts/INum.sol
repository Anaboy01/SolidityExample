// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


interface INumber {

     function getVatValue() external view returns (uint256);

     function addAmount(uint256 _num) external   returns (bool);

      function getUserBal() external  view returns (uint256);
    
}


contract Interaction{
    address numberContractAdress;

    constructor(address _contractAddr){
        numberContractAdress = _contractAddr;
    }


    function getVaT() public view returns (uint){
        return INumber(numberContractAdress).getVatValue();

        
    }

    function fund (uint amount) public{
        INumber(numberContractAdress).addAmount(amount);
    }

    function checkBal() public view returns (uint){
        return INumber(numberContractAdress).getUserBal();
    }
}