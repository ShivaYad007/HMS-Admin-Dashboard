<%@page import="com.sonix.admindashboard.serviceImpl.AdminServiceImpl"%>
<%@page import="com.sonix.admindashboard.service.AdminService"%>
<%@page import="java.util.List"%>
<%@page import="com.sonix.admindashboard.exception.AdminException"%>
<%@page import="com.sonix.admindashboard.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Admin</title>
<style>
/* General table styling */
table{
    border-radius: 20px;
}
.table {
  width: 100%;
  margin-bottom: 1rem;
  color: #212529;
  border-collapse: collapse;

}

.table th, .table td {
  padding: 0.75rem;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}

/* Dark header styling */
.thead-dark th {
  color: #fff;
  background-color: #343a40;
  border-color: #454d55;
  text-align: left;

}
button {
   margin-top:2px; 

}

/* Row hover effect */
.table tbody tr:hover {
  background-color: #f5f5f5;
}

/* Scope row styling */
th[scope="row"] {
  font-weight: bold;
}
</style>
</head>
<body>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Admin Id</th>
      <th scope="col">Admin Name</th>
      <th scope="col">Admin Phno</th>
      <th scope="col">Admin Email</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
      <%
			try{
    AdminService aserv=new AdminServiceImpl();
    List<Admin> admins=aserv.getAllAdmin();
    for(Admin admin: admins){
    %>
			<tr>
			    <td><%=admin.getAdminId() %></td>
				<td><%=admin.getAdminName() %></td>
				<td><%=admin.getAdminPhno() %></td>
				<td><%=admin.getAdminEmail() %></td>
				<td><button  id="update-admin">Edit</button></td>
				<% session.setAttribute("admin", admin); %>
				<td><a href="DeleteAdmin.jsp?adminId=<%= admin.getAdminId() %>">Delete</a></td>
				<td>
               
			</td>
			</tr>
			<%
			}
}
catch(AdminException e){
	 out.println("<p style=\"text-align:center\">" + e.getMessage() + "</p>");
}
		%>
  </tbody>
</table>
</body>
</html>
 