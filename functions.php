<?php
include_once("config.php");

function prx($data){
    echo "<pre>";
    print_r($data);
    die();
}

function get_safe_value($data){
    global $conn;
    if($data){
        return mysqli_real_escape_string($conn, $data);
    }
}

function checkUser(){
    if(!isset($_SESSION['uname'])){
        redirect("index.php");
    }
}

function getCategory($category_id=""){
    global $conn;
    $res = mysqli_query($conn, "SELECT * FROM category ORDER BY name ASC");
    
    $html = '<select required name="category_id" id="category_id">';
    $html .= '<option value="">Select Category</option>';
        
    while($row = mysqli_fetch_assoc($res)){
        if($category_id > 0 && $category_id == $row['id']){
            $html .= '<option value="' . $row['id'] . '" selected>' . $row['name'] . '</option>';
        }
        else {
            $html .= '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
        }
    }
    $html .= '</select>';
    return $html;
}

function getDashboardExpense($type){
    global $conn;
    $today=date('y-m-d');
    if($type=="today"){
        $sub_sql=" where expense_date='' ";
    }
    $res = mysqli_query($conn, "SELECT sum(price) as price from expense $sub_sql");
    $row=mysqli_fetch_assoc($res);

    return $row['price'];
}

function redirect($link){?>
    <script>
        window.location.href = "<?php echo $link?>";
    </script>
<?php
}
?>