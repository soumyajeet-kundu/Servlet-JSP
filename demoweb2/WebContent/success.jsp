<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<h3>Welcome <%=session.getAttribute("userid")%></h3>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet"><br>
&nbsp;&nbsp;&nbsp;<a href='logout.jsp' class="btn btn-danger" role="button">Log out</a><br>
<br>
<a href='index.html' class="btn btn-success" role="button">Go to Dashboard</a>
<%
    }
%>