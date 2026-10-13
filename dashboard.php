<?php
include_once("header.php");
include_once("functions.php");
checkUser();
include_once("user_header.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h2>Dashboard</h2>

    <table>
        <tr>
            <td>Today's Expense</td>
            <td><?php echo getDashboardExpense('today')?></td>
        </tr>

        <tr>
            <td>Yesterdays Expense</td>
            <td></td>
        </tr>

        <tr>
            <td>This week Expense</td>
            <td></td>
        </tr>

        <tr>
            <td>This month Expense</td>
            <td></td>
        </tr>

        <tr>
            <td>This year Expense</td>
            <td></td>
        </tr>

        <tr>
            <td>Total Expense</td>
            <td></td>
        </tr>
    </table>
</body>
</html>

<?php
include_once("footer.php");
?>