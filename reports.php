<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
userArea();
include_once("user_header.php");

$category_id="";
$sub_sql="";
$from="";
$to="";

if (isset($_GET['category_id']) && $_GET['category_id'] > 0){
    $category_id = mysqli_real_escape_string($conn, get_safe_value($_GET['category_id']));
    $sub_sql = " and category.id='$category_id'";
    if (isset($_GET['from'])){
        $from = mysqli_real_escape_string($conn, get_safe_value($_GET['from']));
    }
    if (isset($_GET['to'])){
        $to = mysqli_real_escape_string($conn, get_safe_value($_GET['to']));
    }
    if ($from!== "" && $to!== ""){
        $sub_sql .= " and expense.expense_date between '$from' and '$to' ";
    }
}

$res = mysqli_query($conn, "SELECT sum(expense.price) as price, category.name FROM expense, category WHERE expense.category_id=category.id AND expense.added_by='" . $_SESSION['uid'] . "' " . $sub_sql . " GROUP BY expense.category_id");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0;
        padding: 20px;
        color: #333;
    }

    h2 {
        color: #0085A1;
        margin-bottom: 20px;
        font-size: 35px;
    }

    a {
        text-decoration: none;
        font-size: 20px;
        margin-right: 10px;
        color: #333;
    }

    #reset{
        background-color: #0085A1;
        color: white;
    }

    form {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        margin-bottom: 20px;
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        gap: 12px;
    }

    input[type="date"],
    select {
        padding: 8px 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
        color: #333;
    }

    input[type="date"]:focus,
    select:focus {
        outline: none;
        border-color: #0085A1;
    }

    input[type="submit"] {
        background-color: #0085A1;
        color: white;
        padding: 9px 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
    }

    input[type="submit"]:hover {
        background-color: #006b80;
    }

    a[href="reports.php"] {
        display: inline-block;
        background-color: lightgrey;
        padding: 8px 12px;
        border-radius: 8px;
        font-size: 16px;
        color: black;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    }

    th,
    td {
        padding: 12px 15px;
        border: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #0085A1;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f8fa;
    }

    tr:hover {
        background-color: #e6f3f6;
    }

    td {
        font-size: 15px;
    }

    tr:last-child th {
        background-color: #006b80;
        font-size: 16px;
    }
    </style>
</head>
<body>
    <h2>Reports</h2>
    
    <form method="get">
        From <input type="date" name="from" max="<?php echo date('Y-m-d')?>" onchange="set_to_date()" id="from_date" value="<?php echo $from; ?>">&nbsp;&nbsp;
        To <input type="date" name="to" max="<?php echo date('Y-m-d')?>" id="to_date" value="<?php echo $to; ?>">&nbsp;
        <?php echo getCategory($category_id, "reports"); ?>&nbsp;
        <input type="submit" name="submit" value="submit">
        <a href="reports.php" id="reset">Reset</a>
    </form><br>
    
    <br><br>
    
    <?php
    $final_price = 0;
    if ($res && mysqli_num_rows($res) > 0) {
    ?>
    <table border="1">
        <tr>
            <td>Category</td>
            <td>Price</td>
        </tr>
        <?php
        while ($row = mysqli_fetch_assoc($res)) {
            $final_price = $final_price + $row['price'];
        ?>
        <tr>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['price']; ?></td>
        </tr>
        <?php
        }
        ?>   
        <tr>
            <th>Total</th>
            <th><?php echo $final_price; ?></th>
        </tr>
    </table>
    <?php
    } else {
        echo "No data found";
    }
    ?>   
    
</body>
</html>
<?php
include_once("footer.php");
?>
