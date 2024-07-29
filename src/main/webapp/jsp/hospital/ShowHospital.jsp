<%@page import="com.sonix.admindashboard.entity.Hospital"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Show Hospitals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            text-align: center;
        }
        .message {
            text-align: center;
            margin-bottom: 20px;
            color: red;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
        }
        .pagination a:hover:not(.active) {
            background-color: #ddd;
            border-radius: 5px;
        }
        .pagination span {
            color: white;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            background-color: #4CAF50;
            border-radius: 5px;
            margin: 0 2px;
        }
    </style>
</head>
<body>
    <h2>Hospital List</h2>
    
    <div class="message">
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
                out.println("<p>" + message + "</p>");
            }
        %>
    </div>
        <form method="get" action="showHospitals">
        <button type="submit">Show Hospitals</button>
    </form>
    <table>
        <tr>
            <th>Hospital Name</th>
            <th>City</th>
            <th>Address</th>
            <th>Zip Code</th>
            <th>Email</th>
            <th>Phone Number</th>
        </tr>
        <%
        if(request.getAttribute("hospitals")!=null){
            List<Hospital> hospitals = (List<Hospital>) request.getAttribute("hospitals");
        	out.println(hospitals.get(1).getHospitalname());
            if (hospitals != null) {
                for (Hospital hospital : hospitals) {
        %>
                    <tr>
                        <td><%= hospital.getHospitalname() %></td>
                        <td><%= hospital.getHospitalCity() %></td>
                        <td><%= hospital.getHospitalAddress() %></td>
                        <td><%= hospital.getHospitalPincode() %></td>
                        <td><%= hospital.getHospitalEmail() %></td>
                        <td><%= hospital.getHospitalPhno() %></td>
                    </tr>
        <%
                }
            }
        }
        %>
    </table>

    <div class="pagination">
        <%
        	if(request.getAttribute("noOfPages")!=null && request.getAttribute("currentPage")!=null){
            int noOfPages = (int) request.getAttribute("noOfPages");
            int currentPage = (int) request.getAttribute("currentPage");
            out.println(noOfPages);
        
            for (int i = 1; i <= noOfPages; i++) {
                if (i == currentPage) {
        %>
                    <span><%= i %></span>
        <%
                } else {
        %>
                    <a href="showHospitals?page=<%= i %>"><%= i %></a>
        <%
                }
            }
        	}
        %>
    </div>
</body>
</html>
