<?php 
    include '../../database/connection.php';

    if (isset($_POST['bookID'])) {

        $bookID = $_POST['bookID'];
        $title = $_POST['title'];
        $authors = $_POST['authors'];
        $isbn = $_POST['isbn'];
        $category = $_POST['category'];
        $publisherId = $_POST['publisherId'];
        $publicationDate = $_POST['publicationDate'];
        $language = $_POST['language'];
        $description = $_POST['description'];

        $sql = "UPDATE books 
                SET 
                    title = '$title',
                    authors = '$authors',
                    isbn = '$isbn',
                    category = '$category',
                    publisherId = '$publisherId',
                    publicationDate = '$publicationDate',
                    language = '$language',
                    description = '$description'
                WHERE bookID = '$bookID'";

        if ($conn->query($sql) === TRUE) {
            echo "<script>
                    alert('Book updated successfully!');
                    window.location.href = '../../interface/book/showBook.php';
                </script>";
        } else {
            echo "<script>
                    alert('Error updating book: " . addslashes($conn->error) . "');
                    window.location.href = '../../interface/book/showBook.php';
                </script>";
        }

        $conn->close();
    }
?>
