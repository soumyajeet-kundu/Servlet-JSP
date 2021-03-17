<%@ page import="java.sql.*"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet"><br>
<%

    String userName = request.getParameter("userName");   
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where userName='" + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
       
    } else {
        out.println("<h4>Invalid password</h4><br><a href='index.jsp' class='btn btn-warning' role='button'>Try again</a>");
    }
%>