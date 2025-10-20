<?php
    if(isset($_POST['submit'])) {
        $publisherName = $_POST['publisherName'];
        $publisherEmail = $_POST['publisherEmail'];
        $publisherAddress = $_POST['publisherAddress'];

        $sql = "INSERT INTO publishers ( publisherName,
                                        publisherEmail,
                                        publisherAddress)
                                        
                VALUES ('$publisherName',
                        '$publisherEmail',
                        '$publisherAddress')";

    if ($conn -> query($sql) === TRUE){
        echo "Publisher added";
    } else {
        echo "Error: " . $conn -> error;
    }
}
?>