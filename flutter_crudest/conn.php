<?php
$conn = new mysqli("localhost", "root", "root", "foguetes");
mysqli_set_charset($conn, "utf8");
if (mysqli_connect_errno()) {
    //echo "Falha";
} else {
    //echo "Ok";
}
