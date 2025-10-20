<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Update Student</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>

    <?php include '../navigation/navigation.php';?>

    <h2>Update Student</h2>
    <form action="../../function/student/updateStudentFunc.php" method="POST">

        <label for="studentId">Student ID:</label>
        <select name="studentId" required>
            <option value="">-- Select a student --</option>
            <?php
            $studentQuery = $conn->query("SELECT studentId FROM students");
            while ($student = $studentQuery->fetch_assoc()) {
                echo "<option value='{$student['studentId']}'> {$student['studentId']} </option>";
            }
            ?>
        </select>

        <label>Last Name:</label>
        <input type="text" name="lastName" required><br>

        <label>First Name:</label>
        <input type="text" name="firstName" required><br>

        <label>Middle Name:</label>
        <input type="text" name="middleName"><br>

        <label>Email:</label>
        <input type="text" name="email" required><br>
        
        <button type="submit" name="submit"> Submit </button>
    </form>

    <?php include '../../function/publisher/updatePublisherFunc.php';?>
</body>
</html>