<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Student</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>
  <?php include '../navigation/navigation.php'?>

    <h2>Add Student</h2>

    <form action="" method="POST">
      <label>Students Id:</label>
      <input type="text" name="studentId" required><br>

      <label>Last Name:</label>
      <input type="text" name="lastName" required><br>

      <label>First Name:</label>
      <input type="text" name="firstName" required><br>

      <label>Middle Name:</label>
      <input type="text" name="middleName"><br>

      <label>Student Email:</label>
      <input type="text" name="email" required><br>

      <button type="submit" name="submit">Add Student</button>
    </form>

  <?php include '../../function/student/createStudentFunc.php';?>
</body>
</html>
