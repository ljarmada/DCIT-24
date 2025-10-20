<?php
        $sql = "SELECT b.bookID, b.title, b.authors, b.isbn, b.category, b.publicationDate, b.language, 
                    p.publisherName 
                FROM books b  
                JOIN publishers p ON b.publisherId = p.publisherId";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['bookID']}</td>
                    <td>{$row['title']}</td>
                    <td>{$row['authors']}</td>
                    <td>{$row['publisherName']}</td>
                    <td>{$row['isbn']}</td>
                    <td>{$row['category']}</td>
                    <td>{$row['publicationDate']}</td>
                    <td>{$row['language']}</td>

                    <td>
                        <form action='../../function/book/deleteBookFunc.php' method='POST'>
                        <input type='hidden' name='bookID' value='{$row['bookID']}'>
                        <button type='submit'> Delete </button>
                        </form>
                    </td>

                    <td>
                        <a href='../../interface/book/updateBook.php'>
                            <button type='submit'> Update </button>
                        </a>
                    </td>
                </tr>";
        }
        } else {
        echo "<tr><td colspan='8'>No books found.</td></tr>";
        }
?>