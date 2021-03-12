<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
&nbsp;&nbsp;&nbsp;<a href='logout.jsp'>Log out</a><br><br>
<br>
<a href='index.html'>Go to Dashboard</a>
<%
    }
%>