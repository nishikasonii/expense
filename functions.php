<?php
include_once("config.php");

function prx($data)
{
    echo "<pre>";
    print_r($data);
    die();
}

function get_safe_value($data)
{
    global $conn;
    if ($data) {
        return mysqli_real_escape_string($conn, $data);
    }
}

function checkUser()
{
    if (!isset($_SESSION['uname'])) {
        redirect("index.php");
    }
}

function getCategory($category_id = "")
{
    global $conn;
    $res = mysqli_query($conn, "SELECT * FROM category ORDER BY name ASC");

    $html = '<select required name="category_id" id="category_id">';
    $html .= '<option value="">Select Category</option>';

    while ($row = mysqli_fetch_assoc($res)) {
        if ($category_id > 0 && $category_id == $row['id']) {
            $html .= '<option value="' . $row['id'] . '" selected>' . $row['name'] . '</option>';
        } else {
            $html .= '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
        }
    }
    $html .= '</select>';
    return $html;
}


function getDashboardExpense($type)
{
    global $conn;
    $today = date('Y-m-d');
    $from = "";
    $to = "";
    $sub_sql = "";
    if ($type == "today") {
        $sub_sql = " AND expense_date = '$today'";
        $from = $today;
        $to = $today;
    }
    elseif($type == "yesterday") {
        $yesterday = date('Y-m-d', strtotime('yesterday'));
        $sub_sql = " AND expense_date = '$yesterday'";
        $from = $yesterday;
        $to = $yesterday;
    }
    elseif($type == "week" || $type == "month" || $type == "year") {
        $from = date('Y-m-d', strtotime('-1 '.$type));
        $sub_sql = " AND expense_date BETWEEN '$from' AND '$today'";
        $to = $today;
    }
    else {
        $sub_sql = "";
    }
    $res = mysqli_query($conn, "SELECT SUM(price) AS price FROM expense WHERE added_by='".$_SESSION['uid']."' $sub_sql");
    $row = mysqli_fetch_assoc($res);
    $p = 0;
    $link = "";
    if($row['price'] > 0) {
        $p = $row['price'];
        $link = "&nbsp;<a href='dashboard_details.php?from=".$from."&to=".$to."' target='_blank' style='text-decoration:none; margin-left:20px; color:black'>Details</a>";
    }
    return $p.$link;
}

function adminArea(){
    if($_SESSION["urole"]!="Admin"){
        redirect("dashboard.php");
    }
}

function userArea(){
    if($_SESSION["urole"]!="User"){
        redirect("category.php");
    }
}


function redirect($link)
{ ?>
    <script>
        window.location.href = "<?php echo $link ?>";
    </script>
    <?php
}
?>