// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Human {
    function sayHello() public pure virtual returns(string memory) {
        return "Hello contract";
    }
}

contract SuperHuman is Human {
    function sayHello() public pure override returns(string memory) {
        return "Hello member :)";
    }

    function welcomeMsg(bool isMember) public pure returns(string memory) {
        return isMember ? sayHello() : super.sayHello();
    }
}
