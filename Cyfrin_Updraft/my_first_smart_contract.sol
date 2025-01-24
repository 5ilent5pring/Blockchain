// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our solidity version, 0.8.18 or above

contract SimpleStorage {
    //basic types: boolean, uint, int, address, bytes

    uint256 public myfavoriteNumber; // 0

    uint256[] listOfFavoriteNumbers; // [0, 78, 90]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array
    Person[] public listOfPeople;


    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _myfavoriteNumber) public {
        myfavoriteNumber = _myfavoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }
    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
