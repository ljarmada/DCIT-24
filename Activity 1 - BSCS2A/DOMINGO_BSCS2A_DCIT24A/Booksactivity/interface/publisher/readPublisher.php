<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
    <title>Bookstore</title>
    <link rel="stylesheet" href="../../assets/read.css">
</head>
<body>
    <?php include '../navigation/navigation.php'?>

    <h1>Books</h1>

    <table>
        <tr>
            <th>publisher Id</th>
            <th>publisher Name</th>
            <th>publisher Email</th>
            <th>publisher Address</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <?php include '../../function/publisher/showPublisherFunc.php';?>
    </table>

    <a href="addPublisher.php">
        <button>Add New Publisher</button>
    </a>

</body>
</html>
