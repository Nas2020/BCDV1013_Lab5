// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

contract Demo {
    uint public num;
    
    constructor (uint _num) public {
        num = _num;
    }

    function setData(uint _value) public {
        num += _value;
        emit demoEvent(num,msg.sender);
    }
    
    function getData() public view returns (address){
       return msg.sender;
    }

    function dummyAdd() private {
       num *= 10;
        emit demoEvent(num,msg.sender);
    }

    event demoEvent(uint indexed result, address indexed caller);
}