<?php
    include '../../database/connection.php';

    if (isset($_POST['recordId'], $_POST['studentId'], $_POST['bookID'], $_POST['borrowDate'], $_POST['returnDate'], $_POST['status'])) {

        $recordId = $_POST['recordId'];
        $studentId = $_POST['studentId'];
        $bookID = $_POST['bookID'];
        $borrowDate = $_POST['borrowDate'];
        $returnDate = $_POST['returnDate'];
        $status = $_POST['status'];

        $sql = "UPDATE borrow_records 
                SET 
                    recordId = '$recordId',
                    studentId = '$studentId',
                    bookId = '$bookID',
                    borrowDate = '$borrowDate',
                    returnDate = '$returnDate',
                    status = '$status'
                
                WHERE recordId = '$recordId'";

        if ($conn->query($sql) === TRUE) {
            echo "<script>
                    alert('Borrow record added successfully!');
                    window.location.href = '../../interface/borrow/readBorrow.php';
                </script>";
        } else {
            echo "<script>
                    alert('Error adding record: " . addslashes($conn->error) . "');
                    window.location.href = '../../interface/borrow/addBorrow.php';
                </script>";
        }
    }
?>
