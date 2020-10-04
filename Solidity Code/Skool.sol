pragma solidity ^0.4.24;

import './StandardToken.sol';

contract Skool is StandardToken {
    string public constant name = 'Skool Token';
    string public constant symbol = 'SKL';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 2100000000;

    function Skool() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
} 