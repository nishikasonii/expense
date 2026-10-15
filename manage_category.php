<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
adminArea();
include_once("user_header.php");

$msg="";
$label="Add";
$category="";
$id=0;
if(isset($_GET['id']) && $_GET['id']>0){
    $label="Edit";
    $id=get_safe_value($_GET["id"]);
    $res=mysqli_query($conn, "SELECT * FROM category WHERE id=$id");
    if(mysqli_num_rows($res)==0){
        redirect("category.php");
        die();
    }
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
    <style>
    
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 20px;
}

h2 {
    color: #0085A1;
}

a {
    color: #0085A1;
    text-decoration: none;
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
    padding: 20px;
    width: 350px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: auto;
    margin-top: 50px;
}

table {
    width: 100%;
}

td {
    padding: 8px 5px;
}

input[type="text"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #006b82;
    color: white;
    padding: 8px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
</style>
</head>
<body>
    
    
    <form method="post">
        <h2>Add Category</h2>
        <table>
            <tr>
                <td>Category:</td>
                <td><input type="text" name="name" value="<?php echo $category; ?>" required></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="Submit"><a href="category.php" id="back">Back</a></td>
            </tr>
        </table>
    </form>
    <?php echo $msg; ?>
</body>
</html>

<?php
include_once("footer.php");
?>