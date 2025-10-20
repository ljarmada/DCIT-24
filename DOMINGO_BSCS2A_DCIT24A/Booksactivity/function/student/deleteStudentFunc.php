<?php
    include '../../database/connection.php';

    if (isset($_POST['studentId'])) {

        $studentId = $_POST['studentId'];

        $sql = "DELETE FROM students WHERE studentId = '$studentId'";

        if ($conn->query($sql) === TRUE) {

            echo "<script>
                    alert('Student deleted successfully!');
                    window.location.href = '../../interface/student/readStudent.php';
                 </script>";
        } else {

            echo "<script>
                    alert('Error deleting student.');
                    window.location.href = '../../interface/student/readStudent.php';
                 </script>";
        }

        $conn->close();
    }
?>
