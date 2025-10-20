<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
    <title>Bookstore</title>
    <link rel="stylesheet" href="../../assets/read.css">
</head>
<body>
    <?php include '../navigation/navigation.php'?>

    <h1>Borrow</h1>

    <table>
        <tr>
            <th>record Id</th>
            <th>student Id</th>
            <th>book Id</th>
            <th>borrow date</th>
            <th>return date</th>
            <th>status</th>
            <th>Update</th>
        </tr>

        <?php include '../../function/borrow/showBorrowFunc.php';?>
    </table>

    <a href="addBorrow.php">
        <button>Add New Borrow</button>
    </a>

</body>
</html>
