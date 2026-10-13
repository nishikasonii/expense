<?php
include_once ("functions.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>Footer</title> -->
</head>

<body>
    @copyright
    <?php
        echo date('Y');
    ?>

    <script>
    function change_cat(){
        var category_id = document.getElementById("category_id").value;
        console.log(category_id);
        window.location.href="?category_id="+category_id;
    }
</script>

</body>

</html>