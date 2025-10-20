<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Book</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>
  <?php include '../navigation/navigation.php'?>

    <h2>Add New Book</h2>

    <form action="" method="POST">
      <label>Book ID:</label>
      <input type="text" name="bookID" required><br>

      <label>Title:</label>
      <input type="text" name="title" required><br>

      <label>Author:</label>
      <input type="text" name="authors" required><br>

      <label>ISBN:</label>
      <input type="text" name="isbn"><br>

      <label>Category:</label>
      <input type="text" name="category"><br>

      <label>Publisher ID:</label>
      <input type="number" name="publisherId" required><br>

      <label>Publication Date:</label>
      <input type="date" name="publicationDate"><br>

      <label>Language:</label>
      <input type="text" name="language"><br>

      <label>Description:</label>
      <input type="text" name="description" ></br>

      <button type="submit" name="submit">Add Book</button>
    </form>

  <?php include '../../function/book/createBookFunc.php';?>
</body>
</html>
