<?php
session_start();

$serverName = "localhost";
$userName = "tobedev";
$userPassword = "dev.1234";
$dbName = "dev_database";

$objCon = mysqli_connect($serverName,$userName,$userPassword,$dbName);
if (!$objCon) {
	echo $objCon->connect_error;
	exit();
}

/* change character set to utf8 */
if (!$objCon->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $mysqli->error);
    exit();
}

  $Total = 0;
  $SumTotal = 0;

  $strSQL = "
	INSERT INTO orders (OrderDate,Name,Address,Tel,Email)
	VALUES
	('".date("Y-m-d H:i:s")."','".$_POST["txtName"]."','".$_POST["txtAddress"]."' ,'".$_POST["txtTel"]."','".$_POST["txtEmail"]."') 
  ";
  $objQuery = mysqli_query($objCon,$strSQL);
  if(!$objQuery)
  {
	echo $objCon->error;
	exit();
  }

  $strOrderID = mysqli_insert_id($objCon);

  for($i=0;$i<=(int)$_SESSION["intLine"];$i++)
  {
	  if($_SESSION["strProductID"][$i] != "")
	  {
			  $strSQL = "
				INSERT INTO orders_detail (OrderID,ProductID,Qty)
				VALUES
				('".$strOrderID."','".$_SESSION["strProductID"][$i]."','".$_SESSION["strQty"][$i]."') 
			  ";
			  mysqli_query($objCon,$strSQL);
	  }
  }

mysqli_close($objCon);

session_destroy();

header("location:finish_order.php?OrderID=".$strOrderID);
?>

