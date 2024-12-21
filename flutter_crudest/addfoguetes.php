<?php
include 'conn.php';
$nome_foguete = $_POST['nome_foguete'];
$local_lancamento = $_POST['local_lancamento'];
$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone= $_POST['telefone'];
$conn->query("insert into lancamento(nome_foguete,local_lancamento,nome, email, telefone)
values('".$nome_foguete."','".$local_lancamento."','".$nome."','".$email."','".$telefone."')");
?>