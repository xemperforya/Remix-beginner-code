// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 num = 5;
    bool flag = false;
    string s = "shantanu";
    int256 i = -5;
    address acount = 0x252Cf321482d54F45A437e95a7C26b5f58AD65Df;
    bytes32 b = "hello";

    function store(uint256 _num) public {
        num = _num;
    }
    // to return a view of the state of the blockchain
    // without making any change to it.
    function retrieve() public view returns(uint256){
        return num;
    }

    // to return a math function without a 
    // view from the blockchain
    function retrieve_math(uint256 _num2) public pure returns(uint256){
        return _num2 + _num2;
    }


    // struct
    struct People {
        uint256 num;
        string name;
    }
    
    People public person = People({num:10,name:"John Cena"});

    // array of struct
    People[] public people;


    // memory = only be stored in execution of func
    // storage = stored in permanent storage
    mapping(string => uint256) public nametonumber; 
    function add_person(string memory _name, uint256 _num) public {
        people.push(People(_num,_name));
        nametonumber[_name] = _num;
    }
}