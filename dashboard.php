<?php
include_once("header.php");
include_once("functions.php");
checkUser();
userArea();
include_once("user_header.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0;
        padding-left: 30px;
        color: #333;
    }

    h2 {
        color: #0085A1;
        margin-bottom: 25px;
        font-size: 35px;
    }

    table {
        width: 100%;
        max-width: 900px;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        border-radius: 8px;
        overflow: hidden;
    }

    td {
        padding: 16px 20px;
        border: 1px solid #ddd;
        text-align: left;
        font-size: 16px;
    }

    .total{
        background-color: #0085A1;
        font-weight: bold;
    }
    a{
        text-decoration: none;
        background-color: #0085A1;
        padding: 5px 8px;
        border-radius: 8px;
        color: black;
    }
    #back{
        background-color: #006b80;
        color: white;
        padding: 9px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        margin-left: 10px;
    }
</style>
</head>
<body>
    <h2>Dashboard</h2>
    <a href="dashboard.php" id="back">Back</a>
    <table>
        <tr>
            <td>Today's Expense</td>
            <td><?php echo getDashboardExpense('today')?></td>
        </tr>

        <tr>
            <td>Yesterday's Expense</td>
            <td><?php echo getDashboardExpense('yesterday')?></td>
        </tr>

        <tr>
            <td>This Week Expense</td>
            <td><?php echo getDashboardExpense('week')?></td>
        </tr>

        <tr>
            <td>This Month Expense</td>
            <td><?php echo getDashboardExpense('month')?></td>
        </tr>

        <tr>
            <td>This Year Expense</td>
            <td><?php echo getDashboardExpense('year')?></td>
        </tr>

        <tr class="total">
            <td>Total Expense</td>
            <td><?php echo getDashboardExpense('total')?></td>
        </tr>
    </table>
</body>
</html>

<?php
include_once("footer.php");
?>