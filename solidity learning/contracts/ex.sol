
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract BasicCalculator{
    uint256 public result;
    function add(uint256 a,uint256 b)internal pure returns(uint256){
        result = a+b;
    }
    function sub(uint256 a,uint256 b)internal pure returns(uint256){
        result = a-b;
    }
}

contract AdvancedCalculator is BasicCalculator{
    function multiply(uint256 a,uint256 b) internal pure returns(uint256){
        result = a*b;

    }
    function divide(uint256 a,uint256 b) internal pure returns(uint256){
        result = a/b;
    }
    function performOp(uint256 a,uint256 b,uint8 operation) public pure returns(uint256){
        if(operation ==0 ) return add(a,b);
        else if(operation == 1) return sub(a,b);
        else if(operation == 2) return multiply(a,b);
        else if(operation == 3) return divide(a,b);
        else revert("Invalid operation")       

    }
}