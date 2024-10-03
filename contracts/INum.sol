// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface INumbs {
    function getValue() external  view returns (uint256);

    function addAmount(uint256 _num, address _addr) external  returns (bool);

    function getUserBal(address _addr) external  view returns (uint256);

}

contract Interaction{
    address numberContractAddr;

    constructor(address _contractAddr){
        numberContractAddr = _contractAddr;
    }

    function getVaT() public view returns (uint){
        return INumbs(numberContractAddr).getValue();
    }

    function fund(uint amount, address _addr) public {
        INumbs(numberContractAddr).addAmount(amount, _addr);
    }

    function checkBal(address _addr) public view returns (uint){
        return  INumbs(numberContractAddr).getUserBal(_addr);
    }
}