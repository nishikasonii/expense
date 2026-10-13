<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
include_once("user_header.php");

$msg="";
$label="Add";
$category="";
$id=0;
if(isset($_GET['id']) && $_GET['id']>0){
    $label="Edit";
    $id=get_safe_value($_GET["id"]);
    $res=mysqli_query($conn, "SELECT * FROM category WHERE id=$id");
    $row=mysqli_fetch_assoc($res);
    $category=$row['name'];
}

if(isset($_POST["submit"])){
    // prx($_POST);
    $name=get_safe_value($_POST["name"]);
    $id=get_safe_value($_GET["id"]);
    $type="add";
    $sub_sql='';
    if(isset($_GET['id']) && $_GET['id']>0){
        $type="edit";
        $sub_sql="AND id!=$id";
    }
    
    $res=mysqli_query($conn, "SELECT * FROM category WHERE name='$name' $sub_sql");
    if(mysqli_num_rows($res)>0){
        $msg="Category already exists";
    }
    else{
        $sql="INSERT INTO category(name) VALUES('$name')";
        if(isset($_GET['id']) && $_GET['id']>0){
            $sql="UPDATE category SET name= '$name' WHERE id=$id";
        }
        mysqli_query($conn, $sql);
        redirect("category.php");
    }    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $label; ?>Category</title>
</head>
<body>
    <h2>Add Category</h2>
    <a href="category.php">Back</a><br><br>
    <form method="post">
        <table>
            <tr>
                <td>Category:</td>
                <td><input type="text" name="name" value="<?php echo $category; ?>" required></td>
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