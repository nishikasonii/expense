<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
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
$res = mysqli_query($conn, "SELECT sum(expense.price) as price, category.name FROM expense, category WHERE expense.category_id=category.id $sub_sql GROUP BY expense.category_id"); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense</title>
</head>
<body>
    <h2>Reports</h2>
    
    <form method="get">
        From <input type="date" name="from" value="<?php echo $from; ?>">&nbsp;&nbsp;
        To <input type="date" name="to" value="<?php echo $to; ?>">&nbsp;
        <?php echo getCategory($category_id, "reports"); ?>&nbsp;
        <input type="submit" name="submit" value="submit">
    </form><br>
    <a href="reports.php">Reset</a>
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
