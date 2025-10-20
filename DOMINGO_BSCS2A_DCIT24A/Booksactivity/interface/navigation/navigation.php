<?php define('baseUrl', '/booksactivity/')?>

<link rel="stylesheet" href="<?= baseUrl ?>assets/nav.css">

<nav>
    <div class="navContainer">
        <ul>
            <li><a href="<?= baseUrl ?>index.php">Home</a></li>
            <li><a href="<?= baseUrl ?>interface/book/readBook.php">Books</a></li>
            <li><a href="<?= baseUrl ?>interface/publisher/readPublisher.php">Publishers</a></li>
            <li><a href="<?= baseUrl ?>interface/student/readStudent.php">Students</a></li>
            <li><a href="<?= baseUrl ?>interface/borrow/readBorrow.php">Borrow</a></li>
        </ul>
    </div>
</nav>

    