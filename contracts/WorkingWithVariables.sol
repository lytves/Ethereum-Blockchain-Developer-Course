// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract WorkingWithVariables {
    uint256 public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    bool public myBool;

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }

    // overflow and underflow are avoided from 0.8 version of the Solidity compiler
    // but we can use unchecked code block to use overflow/underflow behavior
    uint8 public myUint8;

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint8() public {
        myUint8--;
    }

    function decrementUint8Unchecked() public {
        unchecked {
            myUint8--;
        }
    }

    address public myAddress;

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function getBalanceOfMyAddress() public view returns(uint) {
        return myAddress.balance;
    }

    string public myString = '';

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}