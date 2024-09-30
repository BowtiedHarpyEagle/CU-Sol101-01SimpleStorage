// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 public favoriteNumber; // initializes to 0 by default, visibility defaults to internal

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}