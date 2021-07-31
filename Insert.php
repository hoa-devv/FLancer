<html>
<head>
    <title>Add New | BookStore</title>
</head>

<body>
<?php
$bookID = 0;
$authorID = 0;
$title = "";
$available = 1;
if (!empty($_POST['bookID'])) {
    $bookID = $_POST['bookID'];
}

if(!empty($_POST['authorID'])){
    $authorID = $_POST['authorID'];
}

if(!empty($_POST['title'])) {
    $title = $_POST['title'];
}

if(!empty($_POST['available'])) {
    $available = $_POST['available'];
}
 ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    BookID : <input type="text" name="bookID" />
    AuthorID : <input type="text" name="authorID"/>
    Title : <input type="text" name="title"/>
    Available: <input type="text" name="available"/>
    <input type="submit" value="AddBook">
</form>

<?php
$myDB = new mysqli('localhost','root','','test');
//make sure above credentitals are correct for your environment
if($myDB->connect_error){
    die('Connect Error('.$myDB->connect_error.')'
        .$myDB->connect_error);
}
if($title !='' && $bookID != '')
{
    $insert = "INSERT INTO jbooks (title, bookID,authorID,available) VALUES 
    ($title,$bookID,$authorID,$available)";
    echo $insert;
    $myDB->query($insert);
    echo"New record created successfully";
}

if($title != '') {
    $sql = "SELECT * FROM jbooks
        WHERE available = 1 and title LIKE '%($title}%'
        ORDER BY title";
} else{
    $sql = "SELECT * FROM jbooks
            WHERE available = 1 ORDER BY title";
}
$result = $myDB->query($sql);

?>
<table cellspacing="2" cellpadding="6" align="center" border="3">
    <tr>
        <td colspan="4">
            <h3 align="center">These JBooks are currently available</h3>
        </td>
    </tr>

    <tr>
        <td align="center" > title</td>
        <td align="center" >BookID</td>
        <td align="center">AuthorID</td>
    </tr>
    <?php
    while ($row = $result->fetch_assoc()){
        echo "<tr>";
        echo "<td>";
        echo $row["title"];
        echo "</td><td align='center'>";
        echo $row["bookID"];
        echo "</td><td>";
        echo $row["authorID"];
        echo "</td>";
        echo "</tr>";
 }
?>
</table>
</body>
</html>

