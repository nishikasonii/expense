<?php
include_once("config.php");
include_once("header.php");
include_once("functions.php");
checkUser();
adminArea();
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
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 20px;
            color: #333;
        }

        h2 {
            color: #222;
        }

        .btn-add {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        .btn-edit {
            color: green;
            text-decoration: none;
            margin-right: 10px;
            font-weight: bold;
        }

        .btn-edit:hover {
            text-decoration: underline;
        }

        .btn-delete {
            color: #dc3545;
            text-decoration: none;
            font-weight: bold;
        }

        .btn-delete:hover {
            text-decoration: underline;
        }

        .no-data {
            padding: 15px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <h2>Category</h2>
    <a href="manage_category.php" class="btn-add">+ Add Category</a>
    <?php
        if(mysqli_num_rows($res)>0){
    ?>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php
            while($row=mysqli_fetch_assoc($res)){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo ucfirst($row['name']); ?></td>
                <td>
                    <a href="manage_category.php?id=<?php echo $row['id']; ?>" class="btn-edit">Edit</a>
                    <a href="?id=<?php echo $row['id']; ?>" class="btn-delete" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        <?php
            }
        ?>   
        </tbody>
    </table>
    <?php
    }
    else{
        echo "<div class='no-data'>No Data Found</div>";
    }?>   
</body>
</html>

<?php
include_once("footer.php");
?>
