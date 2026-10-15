<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
userArea();
include_once("user_header.php");

if (isset($_GET['id']) && $_GET['id']>0){
    $id=get_safe_value($_GET['id']);
    mysqli_query($conn, "DELETE FROM expense WHERE id=$id");
}

$res=mysqli_query($conn, "SELECT expense.*, category.name FROM expense, category WHERE expense.category_id=category.id AND expense.added_by='".$_SESSION['uid']."'  ORDER BY expense.id DESC"); 
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

    a{
        text-decoration: none;
        font-size: 20px;
        margin-right: 10px;
        color: #333;
    }

    #btn{
        background-color: lightgrey;
        padding: 8px 10px;
        border-radius: 8px;
    }

    .add-expense {
        display: inline-block;
        background-color: #0085A1;
        color: white;
        padding: 10px 18px;
        text-decoration: none;
        border-radius: 5px;
        margin-bottom: 20px;
    }

    .add-expense:hover {
        background-color: #006b80;
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

    td a {
        display: inline-block;
        text-decoration: none;
        padding: 6px 10px;
        border-radius: 4px;
        font-size: 13px;
        margin: 2px;
    }

    td a:first-child {
        background-color: #198754;
        color: white;
    }

    td a:last-child {
        background-color: #dc3545;
        color: white;
    }

    td a:hover {
        opacity: 0.8;
    }
</style>

</head>
<body>
    <h2>Expense</h2>
    <a href="manage_expense.php" id="btn">+ Add Expense</a><br><br>
    <?php
        if(mysqli_num_rows($res)>0){
    ?>
    <table border=1>
        <tr>
            <td>ID</td>
            <td>Category</td>
            <td>Item</td>
            <td>Price</td>
            <td>Details</td>
            <td>Date</td>
            <td>Action</td>
        </tr>

        <?php
            while($row=mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['item']; ?></td>
            <td><?php echo $row['price']; ?></td>
            <td><?php echo $row['details']; ?></td>
            <td><?php echo $row['expense_date']; ?></td>
            <td>
                <a href="manage_expense.php ? & id=<?php echo $row['id']; ?>">Edit</a>
                <a href="?type=delete & id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
        <?php
            }
        ?>   
    </table>
    <?php
    }
    else{
        echo "No Data Found";
    }?>   
</body>
</html>

<?php
include_once("footer.php");
?>