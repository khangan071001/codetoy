<?php
 $servername = "18.218.33.185";
 $username = "khangan";
 $pass = "123456";
 $dbname = "sdlc";

 $connect = mysqli_connect($servername, $username, $pass, $dbname);
 if (!$connect){
     die ("ket noi bi loi". mysqli_connect_error());
 }
 else{
     echo "";
 }
?>