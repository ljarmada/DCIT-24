<?php
        $sql = "SELECT br.recordId, br.studentId, br.bookID, br.borrowDate, br.returnDate, br.status
                FROM borrow_records br 
                JOIN students s ON br.studentId = s.studentId
                JOIN books b ON br.bookID = b.bookID";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['recordId']}</td>
                    <td>{$row['studentId']}</td>
                    <td>{$row['bookID']}</td>
                    <td>{$row['borrowDate']}</td>
                    <td>{$row['returnDate']}</td>
                    <td>{$row['status']}</td>

                    <td>
                        <a href='../../interface/borrow/updateBorrow.php'>
                            <button type='submit'> Update </button>
                        </a>
                    </td>
                </tr>";
        }
        } else {
        echo "<tr><td colspan='8'>No borrow records found.</td></tr>";
        }
?>