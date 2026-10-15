<?php
if (isset($_SESSION["urole"]) && $_SESSION["urole"] == "User") {
    ?>
    <a class="a" href="dashboard.php">Dashboard</a>&nbsp;
    <a class="a" href="expense.php">Expense</a>&nbsp;
    <a class="a" href="reports.php">Reports</a>&nbsp;
    <?php
} else {
    ?>
    <a class="a" href="category.php">Category</a>&nbsp;
    <a class="a" href="users.php">Users</a>&nbsp;
    <?php 
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .a{
            text-decoration: none;
            font-size: 18px;
            margin-right: 8px;
            background-color: lightgrey;
            padding: 5px 10px;
            border-radius: 5px;
            color: black;
        }
    </style>
</head>
<body>
    
</body>
</html>
<a class="a" href="logout.php">Log Out</a>&nbsp;


