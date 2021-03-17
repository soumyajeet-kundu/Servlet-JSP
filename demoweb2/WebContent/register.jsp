<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style>
        #table1{
 			 border-collapse: collapse;
 			 width: 450px;
			}
		#th{
 			text-align: center;
 			}
 			
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
    </head>
    <body bgcolor="lightpink">
    <center>
        <form method="post" action="<%=request.getContextPath()%>/userRegistration.jsp">
            
            <table class="container" id="table1" border="1" cellpadding="4">
                <thead>
                    <tr>
                        <th colspan="2" id="th" >Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="th">First Name</td>
                        <td id="th"><input type="text" name="firstName" value="" required/></td>
                    </tr>
                    <tr>
                        <td id="th">Last Name</td>
                        <td id="th"><input type="text" name="lastName" value="" required/></td>
                    </tr>
                    <tr>
                        <td id="th">Email</td>
                        <td id="th"><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td id="th">User Name</td>
                        <td id="th"><input type="text" name="userName" value="" required/></td>
                    </tr>
                    <tr>
                        <td id="th">Password</td>
                        <td id="th"><input type="password" name="password" value="" required/></td>
                    </tr>
                    <tr>
                        <td id="th"><input type="submit" value="Submit" class="btn btn-info" /></td>
                        <td id="th"><input type="reset" value="Reset" class="btn btn-success"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" id="th"><b>Already registered!! </b><a href="index.jsp">&nbsp;Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>