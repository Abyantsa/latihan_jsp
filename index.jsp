<%
String nama = "abyan";

if (request.getParameter("nama") != null ) nama = request.getParameter("nama");
%>

<html>
<body>
    <h1>Selamat Datang, <%= nama %></h1>
</body>
</html>
