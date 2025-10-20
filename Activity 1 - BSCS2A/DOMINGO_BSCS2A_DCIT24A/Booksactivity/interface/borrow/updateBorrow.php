<?php include '../../database/connection.php'; ?>

<!DOCTYPE html>
<html>
<head>
  <title>Update Borrow</title>
  <link rel="stylesheet" href="../../assets/form.css">
</head>
<body>

    <?php include '../navigation/navigation.php';?>

    <h2>Update Borrow</h2>
    <form action="../../function/borrow/updateBorrowFunc.php" method="POST">
        <label>Record ID:</label>
        <input type="text" name="recordId" required><br>

        <label for="studentId">Student ID:</label>
        <select name="studentId" required>
            <option value="">-- Select a student --</option>
            <?php
            $studentQuery = $conn->query("SELECT studentId, firstName, lastName FROM students");
            while ($student = $studentQuery->fetch_assoc()) {
                echo "<option value='{$student['studentId']}'>{$student['firstName']} {$student['lastName']}</option>";
            }
            ?>
        </select>

        <label for="bookID">Book ID:</label>
        <select name="bookID" required>
            <option value="">-- Select a book --</option>
            <?php
            $bookQuery = $conn->query("SELECT bookID, title FROM books");
            while ($book = $bookQuery->fetch_assoc()) {
                echo "<option value='{$book['bookID']}'>{$book['title']}</option>";
            }
            ?>
        </select>

        <label>Borrow Date:</label>
        <input type="date" name="borrowDate" required><br>

        <label>Return Date:</label>
        <input type="date" name="returnDate"><br>

        <label>Status:</label>
        <input type="text" name="status" required><br>
        
        <button type="submit" name="submit"> Submit </button>
    </form>

    <?php include '../../function/borrow/updateBorrowFunc.php';?>
</body>
</html>