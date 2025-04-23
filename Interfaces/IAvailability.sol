// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity ^0.8.0;

// Interface

interface IAvailability {

    function isAvailable(address user, uint256 day, uint256 hour) external view returns(bool);

}
