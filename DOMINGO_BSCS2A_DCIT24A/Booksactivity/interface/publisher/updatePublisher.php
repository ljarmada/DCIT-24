<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Update Publisher</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>

    <?php include '../navigation/navigation.php';?>

    <h2>Update Publisher</h2>
    <form action="../../function/publisher/updatePublisherFunc.php" method="POST">
        <label>Publisher Id:</label>
        <input type="text" name="publisherId" required><br>

        <label>Publisher Name:</label>
        <input type="text" name="publisherName" required><br>

        <label>Publisher Email:</label>
        <input type="text" name="publisherEmail" required><br>

        <label>Publisher Address:</label>
        <input type="text" name="publisherAddress" required><br>
        
        <button type="submit" name="submit"> Submit </button>
    </form>

    <?php include '../../function/publisher/updatePublisherFunc.php';?>
</body>
</html>