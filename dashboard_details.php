<?php 
include_once("config.php"); 
include_once("header.php"); 
include_once("functions.php"); 
checkUser(); 
userArea();
include_once("user_header.php"); 
 
$sub_sql=""; 
$from=""; 
$to=""; 
$sub_sql="";
if (isset($_GET['from'])){
        $from = mysqli_real_escape_string($conn, get_safe_value($_GET['from']));
    }
    if (isset($_GET['to'])){
        $to = mysqli_real_escape_string($conn, get_safe_value($_GET['to']));
    }
    if ($from!== "" && $to!== ""){
        $sub_sql .= " and expense.expense_date between '$from' and '$to' ";
    }

$res = mysqli_query($conn, "SELECT expense.price, category.name, expense.item, expense_date FROM expense, category WHERE expense.category_id=category.id AND expense.added_by='" . $_SESSION['uid'] . "' $sub_sql");  
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
            background-color: #f4f4f9;
            margin: 20px;
            color: #333;
        }

        h2 {
            color: #222;
        }

        .report-range {
            background-color: #e9ecef;
            padding: 10px 15px;
            border-radius: 4px;
            display: inline-block;
            font-weight: bold;
            color: #495057;
            margin-bottom: 15px;
        }

        .report-range span {
            font-weight: normal;
            margin-right: 15px;
        }

        #head{
            font-weight: bolder;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .total-row {
            background-color: #e9ecef;
            font-weight: bold;
        }

        .total-row td {
            font-weight: bold;
            background-color: #e9ecef;
            text-align: center;

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
    <h2>Dashboard Reports</h2>
    
    <?php if($from!="" && $to!=""){ ?>
        <div class="report-range">
            <span><strong>From:</strong> <?php echo htmlspecialchars($from); ?></span>
            <span><strong>To:</strong> <?php echo htmlspecialchars($to); ?></span>
        </div>
    <?php } ?>
 
    <br> 
     
    <?php 
    $final_price = 0; 
    if ($res && mysqli_num_rows($res)>0){ 
    ?> 
    <table> 
        <tr id="head"> 
            <td>Category</td> 
            <td>Item</td> 
            <td>Expense Date</td> 
            <td>Price</td> 
        </tr> 
        <?php 
        while ($row = mysqli_fetch_assoc($res)) { 
            $final_price = $final_price + $row['price']; 
        ?> 
        <tr> 
            <td><?php echo htmlspecialchars($row['name']); ?></td> 
            <td><?php echo htmlspecialchars($row['item']); ?></td>
            <td><?php echo htmlspecialchars($row['expense_date']); ?></td> 
            <td><?php echo htmlspecialchars($row['price']); ?></td> 
        </tr> 
        <?php 
        } 
        ?>    
        <tr class="total-row"> 
            <td colspan="3" style="text-align: right;">Total:</td> 
            <td><?php echo $final_price; ?></td> 
        </tr> 
    </table> 
    <?php 
    } else{ 
        echo "<div class='no-data'>No data found</div>"; 
    } 
    ?>    
     
</body> 
</html> 
<?php 
include_once("footer.php"); 
?>
