<?php
include 'conn.php';
$nome=$_GET['nome'];
$sql = $conn->query("select * from lancamento where nome like'%".$nome."%'");
$res =array();
while($row=$sql->fetch_assoc())
{
$res[] = $row;
}
echo json_encode($res);
?>