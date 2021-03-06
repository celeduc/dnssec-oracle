pragma solidity ^0.4.17;

contract Owned {
    address public owner;

    function Owned() public {
        owner = msg.sender;
    }

    modifier owner_only() {
        require(msg.sender == owner);
        _;
    }

    function setOwner(address newOwner) public owner_only {
        owner = newOwner;
    }
}
