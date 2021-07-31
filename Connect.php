<?php
$myDB = new mysqli('localhost','root','','test');
if($myDB->connect_error)
{
    die('Connect Error('. $myDB->connect_error.')'
        .$myDB->connect_error);
}
$sql = "SELECT * FROM  jbooks  WHERE available = 1 ORDER BY title";
$result = $myDB->query($sql);
?>

<table cellspacing="2" cellpadding="6" align="center" border="1">
    <tr>
        <td colspan="4">
            <h3 align="center"> These Books are currently available</h3>
        </td>
    </tr>
    <tr>
        <td align="center"> Title</td>
        <td align="center"> BookID</td>
        <td align="center">AuthorID</td>
    </tr>
<?php
    while ($row = $result->fetch_assoc() ) {
        echo "<tr>";
        echo "<td>";
        echo stripslashes($row["title"]);
        echo "</td><td align='center'>";
        echo $row["bookID"];
        echo"</td><td>";
        echo $row["authorID"];
        echo "</td>";
        echo "</tr>";
    }
?>
</table>
</body>
</html>
