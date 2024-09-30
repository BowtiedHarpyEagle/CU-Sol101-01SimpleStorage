// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 myFavoriteNumber; // initializes to 0 by default, visibility defaults to internal
    
    //Struct defines a new data type Person with a favoriteNumber and a name
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name));
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }
}