<?php 
    include '../../database/connection.php';

    if (isset($_POST['publisherId'])) {

        $publisherId = $_POST['publisherId'];
        $publisherName = $_POST['publisherName'];
        $publisherEmail = $_POST['publisherEmail'];
        $publisherAddress = $_POST['publisherAddress'];

        $sql = "UPDATE publishers 
                SET 
                    publisherName = '$publisherName',
                    publisherEmail = '$publisherEmail',
                    publisherAddress = '$publisherAddress'
                    
                WHERE publisherId = '$publisherId'";

        if ($conn->query($sql) === TRUE) {
            echo "<script>
                    alert('Publisher updated successfully!');
                    window.location.href = '../../interface/publisher/readPublisher.php';
                </script>";
        } else {
            echo "<script>
                    alert('Error updating Publisher: " . addslashes($conn->error) . "');
                    window.location.href = '../../interface/publisher/readPublisher.php';
                </script>";
        }

        $conn->close();
    }
?>
