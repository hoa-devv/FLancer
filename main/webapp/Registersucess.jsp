<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
    <h2>Register success!!</h2>


    <div class="w3-card-4" style="width:50%;">
        <header class="w3-container w3-blue">
            <h1>Java & JSP </h1>
        </header>

        <div class="w3-container">
            <p>Username : <%=request.getAttribute("username")%></p>
            <p>Password : <%=request.getAttribute("password")%></p>
        </div>


    </div>
</div>

</body>
</html>