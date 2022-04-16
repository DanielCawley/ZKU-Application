// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorld {
    // defining the storedNumber variable, this set the value of storedNumber to the default value for uints which is 0
    uint256 storedNumber;

    // this is external visibility because we aren't calling this function from inside the smart contract
    // storing the number that the user inputs
    // this is type uint256 as it is a number
    function storeNumber(uint256 n) external {
        storedNumber = n;
    }

    // a view function to retrieve the storedNumber variable, this variable is of type uint256
    // this is a view function because we are just returning something so we aren't making any state change to the blockchain
    // this is external visibility because we aren't calling this function from inside the smart contract
    function retrieveNumber() external view returns (uint256) {
        return storedNumber;
    }
}
