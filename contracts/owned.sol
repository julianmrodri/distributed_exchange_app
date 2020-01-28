pragma solidity ^0.4.0;

// Owned contract.
contract owned {
    address owner;

    modifier onlyowner() {
        require(msg.sender == owner);
        _;

    }

    function owned() public {
        owner = msg.sender;
    }
}
