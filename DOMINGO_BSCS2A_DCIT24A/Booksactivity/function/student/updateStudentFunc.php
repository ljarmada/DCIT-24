<?php 
    include '../../database/connection.php';

    if (isset($_POST['studentId'])) {

        $studentId = $_POST['studentId'];
        $lastName = $_POST['lastName'];
        $firstName = $_POST['firstName'];
        $middleName = $_POST['middleName'];
        $email = $_POST['email'];

        $sql = "UPDATE students 
                SET 
                    studentId = '$studentId',
                    lastName = '$lastName',
                    firstName = '$firstName',
                    middleName = '$middleName',
                    email = '$email'
                    
                WHERE studentId = '$studentId'";

        if ($conn->query($sql) === TRUE) {
            echo "<script>
                    alert('Student updated successfully!');
                    window.location.href = '../../interface/student/readStudent.php';
                </script>";
        } else {
            echo "<script>
                    alert('Error updating Student: " . addslashes($conn->error) . "');
                    window.location.href = '../../interface/student/readStudent.php';
                </script>";
        }

        $conn->close();
    }
?>
