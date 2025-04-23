// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity ^0.8.0;

// Contract

contract Availability {

    // Gets user, day and hour and returns if it's available.
    mapping(address => mapping(uint256 => mapping(uint256 => bool))) public availability;

    function setAvailability(uint256 day_, uint256 hour_, bool availability_) external {
        availability[msg.sender][day_][hour_] = availability_;
    }

    function isAvailable(address user_, uint256 day_, uint256 hour_) external view returns(bool) {
        return availability[user_][day_][hour_];
    }

}