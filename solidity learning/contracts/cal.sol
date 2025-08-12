// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract calculator{
    uint8 result=0;
    function add(uint8 num) public{
        result+=num;
    }
    function sub(uint8 num) public{
        result-=num;
    }
    function div(uint8 num) public{
        result = result / num;
    }

    function get() public view returns(uint8){
        return result;
    }
}