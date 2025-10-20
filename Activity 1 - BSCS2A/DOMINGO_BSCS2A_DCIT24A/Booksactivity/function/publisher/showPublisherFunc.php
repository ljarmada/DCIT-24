<?php
        $sql = "SELECT p.publisherId, p.publisherName, p.publisherEmail, p.publisherAddress
                FROM publishers p";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['publisherId']}</td>
                    <td>{$row['publisherName']}</td>
                    <td>{$row['publisherEmail']}</td>
                    <td>{$row['publisherAddress']}</td>

                    <td>
                        <form action='../../function/publisher/deletePublisherFunc.php' method='POST'>
                        <input type='hidden' name='publisherId' value='{$row['publisherId']}'>
                        <button type='submit'> Delete </button>
                        </form>
                    </td>

                    <td>
                        <a href='../../interface/publisher/updatePublisher.php'>
                            <button type='submit'> Update </button>
                        </a>
                    </td>
                </tr>";
        }
        } else {
        echo "<tr><td colspan='8'>No publisher found.</td></tr>";
        }
?>