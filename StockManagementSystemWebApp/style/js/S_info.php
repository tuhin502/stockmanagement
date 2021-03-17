<?php
if(isset($_REQUEST['student'])){
    $s_id=$_REQUEST['s_id'];
    $name=$_REQUEST['s_name'];
    $reg=$_REQUEST['reg'];
    $s_dept=$_REQUEST['s_dept'];
    echo 'Student id is'.' '. $s_id.'<br/>';
    echo 'Student name is'.' '.$name.'<br/>';
    echo 'Registration number is'.' '.$reg.'<br/>';
    echo 'Department name is'.' '.$s_dept.'<br/>';
    
}
?>

