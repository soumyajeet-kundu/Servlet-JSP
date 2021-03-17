<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center>
            <table border="0" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th style= "text-align: center" colspan="2">Login Page</th><br>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="userName" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="" required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" class="btn btn-info"/></td>
                        <td><input type="reset" value="Reset" class="btn btn-success"/></td>
                    </tr><br><br>
                    <tr>
                    <br>
                        <td colspan="2"><b>New User: </b> <a href="register.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
