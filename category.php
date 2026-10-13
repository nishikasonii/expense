<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
include_once("user_header.php");

if (isset($_GET['id']) && $_GET['id']>0){
    $id=get_safe_value($_GET['id']);
    mysqli_query($conn, "DELETE FROM category WHERE id=$id");
}

$res=mysqli_query($conn, "SELECT * FROM category ORDER BY id DESC"); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
</head>
<body>
    <h2>Category</h2>
    <a href="manage_category.php">Add Category</a><br><br>
    <?php
        if(mysqli_num_rows($res)>0){
    ?>
    <table border=1>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Action</td>
            <!-- <td>Delete</td> -->
        </tr>

        <?php
            while($row=mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td>
                <a href="manage_category.php ? & id=<?php echo $row['id']; ?>">Edit</a>
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