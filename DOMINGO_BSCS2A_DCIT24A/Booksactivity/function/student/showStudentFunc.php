<?php
        $sql = "SELECT s.studentId, s.lastName, s.firstName, s.middleName, s.email
                FROM students s";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['studentId']}</td>
                    <td>{$row['lastName']}</td>
                    <td>{$row['firstName']}</td>
                    <td>{$row['middleName']}</td>
                    <td>{$row['email']}</td>

                    <td>
                        <form action='../../function/student/deleteStudentFunc.php' method='POST'>
                        <input type='hidden' name='studentId' value='{$row['studentId']}'>
                        <button type='submit'> Delete </button>
                        </form>
                    </td>

                    <td>
                        <a href='../../interface/student/updateStudent.php'>
                            <button type='submit'> Update </button>
                        </a>
                    </td>
                </tr>";
        }
        } else {
        echo "<tr><td colspan='8'>No student found.</td></tr>";
        }
?>