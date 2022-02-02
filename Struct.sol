 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Struct {
    // grouping data together
    struct Car {
        string model;
        uint year;
        address owner;
    }

    // variable
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external  {
        // will be stored in memory
        Car memory toyota = Car("Toyota", 2022, msg.sender);
        Car memory lambo = Car({ model: "lambo", year: 2020, owner: msg.sender});
        Car memory tesla;
        tesla.model = "tesla";
        tesla.year = 1990;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        Car storage _car = cars[0];
        _car.year = 2000;
        delete _car.owner; // resets to default value

        delete cars[1];

    }

}