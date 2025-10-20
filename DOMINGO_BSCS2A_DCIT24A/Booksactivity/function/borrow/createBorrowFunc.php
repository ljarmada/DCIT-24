<?php
    include '../../database/connection.php';
    if (isset($_POST['recordId'], $_POST['studentId'], $_POST['bookID'], $_POST['borrowDate'], $_POST['returnDate'], $_POST['status'])) {
        $recordId = $_POST['recordId'];
        $studentId = $_POST['studentId'];
        $bookID = $_POST['bookID'];
        $borrowDate = $_POST['borrowDate'];
        $returnDate = $_POST['returnDate'];
        $status = $_POST['status'];

        $sql = "INSERT INTO borrow_records (studentId, 
                                            bookID, 
                                            borrowDate, 
                                            returnDate, 
                                            status)

                VALUES ('$studentId', 
                        '$bookID', 
                        '$borrowDate', 
                        '$returnDate', 
                        '$status')";

        if ($conn->query($sql) === TRUE) {
        echo "Borrow added successfully!";
        } else {
        echo "Error: " . $conn->error;
        }
    }
?>