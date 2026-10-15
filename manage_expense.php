<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
userArea();
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
    
    if(mysqli_num_rows($res)==0){
        redirect("expense.php");
        die();
    }
    
    $row=mysqli_fetch_assoc($res);
    
    $category_id=$row['category_id'];
    $item=$row['item'];
    $price=$row['price'];
    $details=$row['details'];
    $expense_date=$row['expense_date'];
    
    if($row['added_by'] != $_SESSION['uid']){
        redirect("expense.php");
    }
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
    $added_by=$_SESSION["uid"];
    $sql="INSERT INTO expense(category_id, item, price, details, expense_date, added_on, added_by) VALUES('$category_id', '$item', '$price', '$details', '$expense_date', '$added_on', '$added_by')";
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
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0;
        padding-left: 20px;
        color: #333;
        box-sizing: border-box;
    }

    h2 {
        color: #0085A1;
        margin-bottom: 15px;
        font-size: 30px;
    }

    a {
        text-decoration: none;
        font-size: 18px;
        margin-right: 10px;
        color: #333;
        
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

    form {
        background-color: #fff;
        padding: 18px 22px;
        width: 420px;
        max-width: 100%;
        box-sizing: border-box;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        margin: 15px auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 7px 5px;
        text-align: left;
    }

    td:first-child {
        font-weight: bold;
        width: 35%;
    }

    input[type="text"],
    input[type="date"],
    select {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="text"]:focus,
    input[type="date"]:focus,
    select:focus {
        outline: none;
        border-color: #0085A1;
    }

    input[type="submit"] {
        background-color: #006b80;
        color: white;
        padding: 9px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
    }
</style>
</head>
<body>
    <h2><?php echo $label; ?> Expense</h2>
    
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
                <td><input type="submit" name="submit" value="Submit"><a href="expense.php" id="back">Back</a></td>
            </tr>

            
        </table>
    </form>
    <?php echo $msg; ?>
</body>
</html>

<?php
include_once("footer.php");
?>