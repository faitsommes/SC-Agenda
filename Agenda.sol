// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity ^0.8.0;

// Interfaces

import "./Interfaces/IAvailability.sol";

// Contract

contract Agenda {
    
    address public availability;

    constructor (address availability_) {
        availability = availability_;
    }

    // Gets user, day and hour and returns who reserved.
    mapping(address => mapping(uint256 => mapping(uint256 => address))) public reservations;

    function reserve(address user_, uint256 day_, uint256 hour_) external {
        require(day_ <= 6 && hour_ <= 24, "Day or hour out of range.");
        require(IAvailability(availability).isAvailable(user_, day_, hour_), "User not available. Please try another date.");
        require(reservations[user_][day_][hour_] == address(0));
        reservations[user_][day_][hour_] = msg.sender;
    }

    function whoReserved(address user_, uint256 day_, uint256 hour_) external view returns(address){
        require(reservations[user_][day_][hour_] != address(0), "Not reserved yet.");
        return reservations[user_][day_][hour_]; 
    }

}