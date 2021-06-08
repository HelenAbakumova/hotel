<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>Login</title>
<script>
function validate()
{
     var email = ${loginUser.email};
     var password = ${loginUser.password};

     if (email==null || email=="")
     {
     alert("Email cannot be blank");
     return false;
     }
     else if(password==null || password=="")
     {
     alert("Password cannot be blank");
     return false;
     }
}
</script>
</head>
<body>
    <div style="text-align:center"><h1>Login application in Java using MVC and MySQL </h1> </div>
    <br>
    <form name="form" action="" method="post" onsubmit="return validate()">

        <table align="center">
         <tr>
         <td>Email</td>
         <td><input type="text" name="email" /></td>
         </tr>
         <tr>
         <td>Password</td>
         <td><input type="password" name="password" /></td>
         </tr>

         <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></span></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" value="Login"></input><input
         type="reset" value="Reset"></input></td>
         </tr>
        </table>
    </form>
</body>
</html>