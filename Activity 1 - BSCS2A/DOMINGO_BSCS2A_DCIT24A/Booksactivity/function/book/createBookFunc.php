<?php
  if (isset($_POST['submit'])) {
    $bookID = $_POST['bookID'];
    $title = $_POST['title'];
    $authors = $_POST['authors'];
    $isbn = $_POST['isbn'];
    $category = $_POST['category'];
    $publisherId = $_POST['publisherId'];
    $publicationDate = $_POST['publicationDate'];
    $language = $_POST['language'];
    $description = $_POST['description'];

    $sql = "INSERT INTO books ( bookID, 
                                title, 
                                authors, 
                                isbn, 
                                category, 
                                publisherId, 
                                publicationDate, 
                                language, 
                                description)

            VALUES ('$bookID', 
                    '$title', 
                    '$authors', 
                    '$isbn', 
                    '$category', 
                    '$publisherId', 
                    '$publicationDate', 
                    '$language', 
                    '$description')";

    if ($conn->query($sql) === TRUE) {
      echo "Book added successfully!";
    } else {
      echo "Error: " . $conn->error;
    }
  }
?>