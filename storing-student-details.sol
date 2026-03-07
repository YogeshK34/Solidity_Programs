// SPDX-License-Identifier:MIT 
pragma solidity ^0.8.0;

contract StoreStudentDetails {
    // define a struct this'll have all student's details 
    struct Student {
        string name;
        uint prn_no;
        string major;
        string fav_subject;
        bool like_college;
    }

    uint public studentCounter;
    constructor() {
        studentCounter = 0; // or if I explicitly want studentCounter to start from 1
         // studentCounter = 1 
    }
    // now we'll have a mapping, where we'll store each student details 
    mapping (uint => Student) public students;

    // here I'll write a setter function, that'll set the students details 
    function setStudentDetails(
        string memory _name,
        uint _prn_no,
        string memory _major,
        string memory _fav_subject,
        bool _like_college
        // Student
    ) public {
        // now I have to store these details into the mapping I created 
        students[studentCounter] = Student({
            name: _name,
            prn_no: _prn_no,
            major: _major,
            fav_subject: _fav_subject,
            like_college: _like_college 
        });
        studentCounter++;
    }

    // Note: Solidity will automatically create a getter function, we don't have to explicitly create the getter 
    // function, so I'll create a function which takes in an id, and will return the struct stored at that id, 
    // if that exists, if not then a message to the function caller stating that id is not correct
    function getStudentDetailsById(uint id) public view returns (Student memory) {
        require(id < studentCounter,  "id does not exists");
        return students[id];
    }
}