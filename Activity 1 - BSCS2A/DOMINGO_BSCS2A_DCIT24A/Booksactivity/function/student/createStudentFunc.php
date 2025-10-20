<?php
    if (isset($_POST['submit'])) {
        $studentId = $_POST['studentId'];
        $lastName = $_POST['lastName'];
        $firstName = $_POST['firstName'];
        $middleName = $_POST['middleName'];
        $email = $_POST['email'];

        $sql = "INSERT INTO students (studentId,
                                      lastname,
                                      firstName,
                                      middleName,
                                      email)
                VALUES ('$studentId',
                        '$lastName',
                        '$firstName',
                        '$middleName',
                        '$email')";

        if ($conn -> query($sql) === TRUE){
            echo "Student Added";
        } else {
            echo "Error : " . $conn -> error;
        }
    }
?>