<html>
<head>
<title>ระบบตะกร้าสินค้า by ThaiCreate.Com</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<?php
ini_set('display_errors', 1);
error_reporting(~0);

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

$strSQL = "SELECT * FROM product";
$objQuery = mysqli_query($objCon,$strSQL);
if(!$objQuery)
{
	echo $objCon->error;
	exit();
}
?>
<table width="327"  border="1">
  <tr>
    <td width="101">Picture</td>
    <td width="101">ProductID</td>
    <td width="82">ProductName</td>
    <td width="79">Price</td>
    <td width="37">Cart</td>
  </tr>
  <?php
  while($objResult = mysqli_fetch_array($objQuery,MYSQLI_ASSOC))
  {
  ?>
  <tr>
	<td><img src="img/<?php echo $objResult["Picture"];?>"></td>
    <td><?php echo  $objResult["ProductID"];?></td>
    <td><?php echo $objResult["ProductName"];?></td>
    <td><?php echo $objResult["Price"];?></td>
    <td><a href="order.php?ProductID=<?php echo $objResult["ProductID"];?>">Order</a></td>
  </tr>
  <?php
  }
  ?>
</table>
<br><br><a href="show.php">View Cart</a> | <a href="clear.php">Clear Cart</a>
<?php
mysqli_close($objCon);
?>
</body>
</html>

