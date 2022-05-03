//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Hello_World {
    uint private _toStore; // although the assignmetn didn't explicitly state, I suppose a field variable for the Hello World Contract is necessary, I opted to make the variable private.

    constructor( ) public {
        console.log("Hello World!");
    }

    // The function storeNumber is equivalent to the standard 'seeter' class of functions seen in OOP design, this function serves as the sole interface to set the value of the private variable 'toStore' - S.W.
    function storeNumber(uint _input) public{
        _toStore = _input;
    }
    // retrieveNumber is comparable to 'getter' functions as they are implemented in OOP schemes across other languages, it allows one to retrieve the value of the private variable toStore - S.W.
    function retrieveNumber() public view returns (uint returnNum) {
        returnNum = _toStore;
    }

}
