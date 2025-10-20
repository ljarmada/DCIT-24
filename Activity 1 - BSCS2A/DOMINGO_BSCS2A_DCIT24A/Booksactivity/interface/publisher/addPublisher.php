<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Publisher</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>
  <?php include '../navigation/navigation.php'?>

    <h2>Add Publisher</h2>

    <form action="" method="POST">
      <label>Publisher Name:</label>
      <input type="text" name="publisherName" required><br>

      <label>Publisher Email:</label>
      <input type="text" name="publisherEmail" required><br>

      <label>Publisher Address:</label>
      <input type="text" name="publisherAddress" required><br>

      <button type="submit" name="submit">Add Publisher</button>
    </form>

  <?php include '../../function/publisher/createPublisherFunc.php';?>
</body>
</html>
