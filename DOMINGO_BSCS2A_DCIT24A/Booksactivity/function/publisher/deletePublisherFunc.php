<?php
    include '../../database/connection.php';

    if (isset($_POST['publisherId'])) {

        $publisherId = $_POST['publisherId'];

        $sql = "DELETE FROM publishers WHERE publisherId = '$publisherId'";

        if ($conn->query($sql) === TRUE) {

            echo "<script>
                    alert('Publisher deleted successfully!');
                    window.location.href = '../../interface/publisher/readPublisher.php';
                 </script>";
        } else {

            echo "<script>
                    alert('Error deleting publisher.');
                    window.location.href = '../../interface/publisher/readPublisher.php';
                 </script>";
        }

        $conn->close();
    }
?>
