<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>kontaqtebi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
           <h1>daamatet axali kontaqti</h1>
        <form  action="insert" method="POST">
         <input type="text" name="name" placeholder="Name"/><br>
     <br><input type="text" name="phone" placeholder="Phone"/>
     <br><br><input type="submit" value="insert"><br><br>
     
     <a href="view.jsp">view contacts</a><br>
     <a href="delete.jsp">delete contact</a><br>
     <a href="update.jsp">update contacts</a><br>
       </form>  
        </div>
    </body>
</html>
