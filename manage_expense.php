<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
include_once("user_header.php");

$msg="";
$category_id="";
$item="";
$price="";
$details="";
$expense_date=date('Y-m-d');
$added_on="";
$label="Add";


if(isset($_GET['id']) && $_GET['id']>0){
    $label="Edit";
    $id=get_safe_value($_GET["id"]);
    $res=mysqli_query($conn, "SELECT * FROM expense WHERE id=$id");
    $row=mysqli_fetch_assoc($res);
    $category_id=$row['category_id'];
    $item=$row['item'];
    $price=$row['price'];
    $details=$row['details'];
    $expense_date=$row['expense_date'];
    $added_on=$row['added_on'];
}

if(isset($_POST["submit"])){
    // prx($_POST);
    $category_id=get_safe_value($_POST["category_id"]);
    $item=get_safe_value($_POST["item"]);
    $price=get_safe_value($_POST["price"]);
    $details=get_safe_value($_POST["details"]);
    $expense_date=get_safe_value($_POST["expense_date"]);
    $added_on=date('Y-m-d h:m:s');

    $id=get_safe_value($_GET["id"]);
    $type="add";
    $sub_sql='';
    if(isset($_GET['id']) && $_GET['id']>0){
        $type="edit";
        $sub_sql="AND id!=$id";
    }
    $sql="INSERT INTO expense(category_id, item, price, details, expense_date, added_on) VALUES('$category_id', '$item', '$price', '$details', '$expense_date', '$added_on')";
    if(isset($_GET['id']) && $_GET['id']>0){
        $sql="UPDATE category SET category_id='$category_id', item='$item', price='$price', details='$details', expense_date='$expense_date' WHERE id=$id";
    }
    mysqli_query($conn, $sql);
    redirect("expense.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $label; ?>Expense</title>
</head>
<body>
    <h2><?php echo $label; ?> Expense</h2>
    <a href="expense.php">Back</a><br><br>
    <form method="post">
        <table>
            <tr>
                <td>Category:</td>
                <td><?php echo getCategory($category_id); ?></td>
            </tr>

            <tr>
                <td>Item:</td>
                <td><input type="text" name="item" value="<?php echo $item; ?>" required></td>
            </tr>

            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" value="<?php echo $price; ?>" required></td>
            </tr>

            <tr>
                <td>Details:</td>
                <td><input type="text" name="details" value="<?php echo $details; ?>" required></td>
            </tr>

            <tr>
                <td>Expense Date:</td>
                <td><input type="date" name="expense_date" value="<?php echo $expense_date; ?>" required></td>
            </tr>



            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
    <?php echo $msg; ?>
</body>
</html>

<?php
include_once("footer.php");
?>