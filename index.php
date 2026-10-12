<?php
include_once("functions.php");
if(isset($_SESSION["uname"])){
    redirect("dashboard.php");
}


if(isset($_POST["login"])){
    // prx($_POST);
    $username=get_safe_value($_POST["username"]);
    $password=get_safe_value($_POST["password"]);

    $res=mysqli_query($conn, "SELECT * FROM users WHERE username='$username' AND password='$password'");
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $_SESSION["uid"]=$row["id"];
        $_SESSION["uname"]=$row["username"];
        redirect("dashboard.php");
    }
    else{
        echo "Enter Valid Login Details";
    }
    
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
</head>

<body>
    <h2>Login</h2>
    <form action="" method="post">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="login" value="Login"></td>
            </tr>
        </table>
    </form>
</body>

</html>

<?php
// include_once("footer.php");
?>