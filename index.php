<?php
include_once("config.php");
include_once("functions.php");

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if(isset($_SESSION["uname"])){
    if($_SESSION["urole"] == "User"){
        redirect("dashboard.php");
    } else {
        redirect("category.php");
    }
    die();
}

$msg = "";

if(isset($_POST["login"])){
    $username=get_safe_value($_POST["username"]);
    $password=get_safe_value($_POST["password"]);

    $res=mysqli_query($conn, "SELECT * FROM users WHERE username='$username'");
    if(mysqli_num_rows($res)>0){
        $row=mysqli_fetch_assoc($res);
        $verify=password_verify($password, $row['password']);

        if($verify){
            $_SESSION["uid"]=$row["id"];
            $_SESSION["uname"]=$row["username"];
            $_SESSION["urole"]=$row["role"];
            if($_SESSION["urole"]=="User"){
                redirect("dashboard.php");
            }
            else{
                redirect("category.php");
            }
            die();
        }else{
            $msg = "Please enter valid password";
        }
    }
    else{
        $msg = "Enter Valid Username";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 470px;
        }

        h2 {
            margin-top: 0;
            color: #333333;
            text-align: center;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px 0;
            color: #555555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error-msg {
            color: #dc3545;
            text-align: center;
            font-size: 14px;
            margin-top: 15px;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h1>Expense Management System</h1>
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
                    <td colspan="2">
                        <input type="submit" name="login" value="Login">
                    </td>
                </tr>
            </table>
        </form>
        <?php 
        if(!empty($msg)){
            echo "<p class='error-msg'>$msg</p>";
        }
        ?>
    </div>
</body>
</html>
