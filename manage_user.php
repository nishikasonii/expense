<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
adminArea();
include_once("user_header.php");

$msg="";
$id=0;
$username="";
$password="";
$label="Add";

if(isset($_GET['id']) && $_GET['id']>0){
    $label="Edit";
    $id=get_safe_value($_GET["id"]);
    $res=mysqli_query($conn, "SELECT * FROM users WHERE id=$id");
    if(mysqli_num_rows($res)==0){
        redirect("users.php");
        die();
    }
    $row=mysqli_fetch_assoc($res);
    $username=$row['username'];
}

if(isset($_POST["submit"])){
    $username=get_safe_value($_POST["username"]);
    $password=get_safe_value($_POST["password"]);
    
    $sub_sql='';
    if($id>0){
        $sub_sql="AND id!=$id";
    }
    
    $res=mysqli_query($conn, "SELECT * FROM users WHERE username='$username' $sub_sql");
    if(mysqli_num_rows($res)>0){
        $msg="Username already exists";
    }
    else{
        if($id>0){
            if(!empty($password)){
                $hashed_password=password_hash($password, PASSWORD_DEFAULT);
                $sql="UPDATE users SET username='$username', password='$hashed_password' WHERE id=$id";
            }else{
                $sql="UPDATE users SET username='$username' WHERE id=$id";
            }
        }else{
            $hashed_password=password_hash($password, PASSWORD_DEFAULT);
            $sql="INSERT INTO users(username, password, role) VALUES('$username', '$hashed_password', 'User')";
        }
        mysqli_query($conn, $sql);
        redirect("users.php");
        die();
    }    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $label; ?> User</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 20px;
        color: #333;
    }

    h2 {
        color: #0085A1;
        text-align: center;
    }

    a {
        color: #0085A1;
        text-decoration: none;
    }

    #back{
        background-color: #006b80;
        color: white;
        padding: 8px 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        margin-left: 10px;
        margin-right: 60px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        width: 350px;
        max-width: 100%;
        box-sizing: border-box;
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

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        outline: none;
        border-color: #0085A1;
    }

    input[type="submit"] {
        background-color: #006b82;
        color: white;
        padding: 8px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    form{
        text-align: center;
        margin-top: 15px;
    }
</style>
</head>
<body>
    
    <form method="post">
        <h2>Add Users</h2>
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" value="<?php echo htmlspecialchars($username); ?>" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" <?php echo ($id>0) ? '' : 'required'; ?>></td>
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
