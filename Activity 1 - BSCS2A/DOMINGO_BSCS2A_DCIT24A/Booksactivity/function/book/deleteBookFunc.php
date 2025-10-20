<?php
    include '../../database/connection.php';

    if (isset($_POST['bookID'])) {

        $bookID = $_POST['bookID'];

        $sql = "DELETE FROM books WHERE bookID = '$bookID'";

        if ($conn->query($sql) === TRUE) {

            echo "<script>
                    alert('Book deleted successfully!');
                    window.location.href = '../../interface/book/readBook.php';
                 </script>";
        } else {

            echo "<script>
                    alert('Error deleting book.');
                    window.location.href = '../../interface/book/readBook.php';
                 </script>";
        }

        $conn->close();
    }
?>
