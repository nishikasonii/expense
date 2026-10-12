<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
include_once("user_header.php");

if(isset($_GET['type']) && $_GET['type']=="delete" && isset($_GET['id']) && $_GET['id']>0){
    $id=get_safe_value($_GET['id']);
    echo $id;
    
}

$res=mysqli_query($conn, "SELECT * FROM category"); 
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
    <?php
        if(mysqli_num_rows($res)>0){
    ?>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Edit Delete</td>
            <!-- <td>Delete</td> -->
        </tr>

        <?php
            while($row=mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td>
                <a href="? id=<?php echo $row['id']; ?>">Edit</a>
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