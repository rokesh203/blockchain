// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract calculator{
    uint256 public result;
    function add(uint256 num) external{
        result +=num;
    }
    function sub(uint256 num) external {
        result -=num;
    }
    function mul(uint256 num) external{
        result *=num;
    }
    function get() external view returns(uint256){
        return result;
    }
}