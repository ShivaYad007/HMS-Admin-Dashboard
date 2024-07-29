<%@page import="com.sonix.admindashboard.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 	<%
	Admin admin=(Admin)session.getAttribute("admin");
	%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management Dashboard</title>
<link rel="stylesheet" href="../../css/admin/Dashboard.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<style type="text/css">
	
        .toast {
            visibility: hidden;
            min-width: 250px; 
            margin-left: auto; 
            margin-right: auto; 
            background-color: #008B8B; 
            color: #fff; 
            text-align: center; 
            border-radius: 5px; 
            padding: 20px;
            position: fixed; 
            z-index: 1;
            left: 50%; 
            bottom:50px;
            font-size: 17px;
        }

        .toast.show {
            visibility: visible; 
            -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s; 
            animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

	
	</style>
</head>
<body>
	<div class="container">
		<aside class="sidebar">
			<div class="sidebar-brand">
				<h2>
					<img id="logo-1" alt="" src="../../img/Ayurmed.png" style="width: 140px; height: 120px;"/>
				</h2>
			</div>
			<ul class="sidebar-menu">
				<li class="dropdown"><a href="#" id="dashboard-link"><i
						class="fas fa-tachometer-alt"></i> Dashboard</a></li>

				<li class="dropdown admin-dropdown"><a href="#">
						<i class="fas fa-user-alt"></i> Admin</a>
							<ul class="dropdown-menu">
						<li><a href="#" id="show-admin">Show Admin</a></li>
						<li><a href="#" id="add-admin">Add Admin</a></li>
					</ul>
				</li>
						<li class="dropdown hospital-dropdown"><a href="#">
						<i class="fas fa-hospital"></i> Hospitals</a>
							<ul class="dropdown-menu">
						<li><a href="#" id="show-hospital">Show Hospital</a></li>
						<li><a href="#" id="add-hospital">Add Hospital</a></li>
					</ul>
				</li>
				<li class="dropdown doctor-dropdown"><a href="#"><i
						class="fas fa-user-md"></i> Doctors</a>
					<ul class="dropdown-menu">
						<li><a href="#" id="show-doctors">Show Doctors</a></li>
						<li><a href="#" id="add-doctors">Add Doctors</a></li>
					</ul>
				</li>
					
					
				<li class="dropdown patient-dropdown">
				<a href="#"><i class="fas fa-procedures"></i> Patients</a>
				<ul class="dropdown-menu">
						<li><a href="#" id="show-patients">Show Patients</a></li>
						<li><a href="#" id="add-patients">Add Patients</a></li>
				</ul>
				</li>
				
				<li class="dropdown appointment-dropdown">
				<a href="#"><i class="fas fa-calendar-alt"></i>Appointments</a>
				<ul class="dropdown-menu">
						<li><a href="#" id="show-appointments">Show Appointments</a></li>
						<li><a href="#" id="add-appointments">Add Appointments</a></li>
				</ul>
				</li>
				
				<li class="dropdown specialization-dropdown">
				<a href="#"><i class="fas fa-stethoscope"></i>Specialization</a>
				<ul class="dropdown-menu">
						<li><a href="#" id="show-specialization">Show Specialization</a></li>
						<li><a href="#" id="add-specialization">Add Specialization</a></li>
				</ul>
				</li>
				
				<li class="dropdown shift-dropdown">
				<a href="#"><i class="fas far fa-clock"></i>Shift</a>
				<ul class="dropdown-menu">
						<li><a href="#" id="show-shift">Show Shift</a></li>
		
				</ul>
				</li>
				
				<li class="dropdown slot-dropdown">
				<a href="#"><i class="fas far fa-hourglass"></i>Slot</a>
				<ul class="dropdown-menu">
						<li><a href="#" id="show-slot">Show Slot</a></li>
				</ul>
				</li>
				
				<li><a href="#"><i class="fas fa-file-medical-alt"></i>
						Reports</a></li>
				<li><a href="#"><i class="fas fa-cogs"></i> Settings</a></li>
			</ul>
		</aside>
		<main class="main-content">
		<section class="header-section">
		<div class="header">
				<h1>Dashboard</h1>
				 <h3><%=admin.getAdminName()%></h3> 
				<div class="header-right">
					<div class="profile-dropdown">
						<img src="../../img/account_user_icon.png" alt="Profile Picture"
							class="profile-pic" style="background-color: #fff;">
						<div class="dropdown-menu">
							<a href="#" id="my-profile">My Profile</a>
							<a href="#"	id="log-out">Log Out</a>
						</div>
					</div>
				</div>
			</div>
			</section>
			<section class="cards" id="dashboard-section" style="display: flex;">
				<div class="card" >
					<div class="card-icon">
						<i class="fas fa-user-alt"></i>
					</div>
					<div class="card-info">
						<h3>Admin</h3>
						<p>4</p>
					</div>
				</div>
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-hospital"></i>
					</div>
					<div class="card-info">
						<h3>Hospitals</h3>
						<p>20</p>
					</div>
				</div>
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-user-md"></i>
					</div>
					<div class="card-info">
						<h3>Doctors</h3>
						<p>400</p>
					</div>
				</div>
					<div class="card">
					<div class="card-icon">
						<i class="fas fa-stethoscope"></i>
					</div>
					<div class="card-info">
						<h3>Specialties</h3>
						<p>50</p>
					</div>
				</div>
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-procedures"></i>
					</div>
					<div class="card-info">
						<h3>Patients</h3>
						<p>500</p>
					</div>
				</div>
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-calendar-alt"></i>
					</div>
					<div class="card-info">
						<h3>Appointments</h3>
						<p>150</p>
					</div>
				</div>
					<div class="card">
					<div class="card-icon">
						<i class="fas far fa-clock"></i>
					</div>
					<div class="card-info">
						<h3>Shift</h3>
						<p>3</p>
					</div>
				</div>
					<div class="card">
					<div class="card-icon">
						<i class="fas far fa-hourglass"></i>
					</div>
					<div class="card-info">
						<h3>Slot</h3>
						<p>16</p>
					</div>
				</div>
					<div class="card">
					<div class="card-icon">
						<i class="fas fa-file-invoice"></i>
					</div>
					<div class="card-info">
						<h3 style="font-size: 16px;">Insurance Covered</h3>
						<p>75</p>
					</div>
				</div>
				<div class="card">
					<div class="card-icon">
						<i class="fas fa-file-medical-alt"></i>
					</div>
					<div class="card-info">
						<h3>Reports</h3>
						<p>75</p>
					</div>
				</div>
			</section>
		
        
			<div class="profile-details" id="profile-details"
				style="display: none;">
				
				<h2>Admin Profile</h2>
				<p>
					<strong>Admin ID:</strong><%out.println(admin.getAdminId()); %>
				</p>
				<p>
					<strong>Admin Name:</strong><%out.println(admin.getAdminName());%>
				</p>
				<p>
					<strong>Email:</strong><%out.println(admin.getAdminEmail());%>
				</p>
				<p>
					<strong>Phone Number:</strong><%out.println(admin.getAdminPhno()); %>
				</p>
		</div>
			<section class="add-admin-form" id="add-admin-form" style="display:none;">
				<jsp:include page="AddAdmin.jsp"></jsp:include>
			</section> 
		 <section class="show-admin-data" id="show-admin-data" style="display:none;">
				<jsp:include page="ShowAdmin.jsp"></jsp:include>
			</section> 
			 <section class="update-admin-form" id="update-admin-form" style="display:none;">
				<jsp:include page="UpdateAdmin.jsp"></jsp:include>
			</section> 
			
			
			
		<section class="update-hospital-form" id="update-hospital-form" style="display:none;">
				<jsp:include page="../hospital/UpdateHospital.jsp"></jsp:include>
			</section> 
			<section class="add-hospital-form" id="add-hospital-form" style="display:none;">
				<jsp:include page="../hospital/AddHospital.jsp"></jsp:include>
			</section>
			<%-- <section class="show-hospital-data" id="show-hospital-data" style="display:none;">
				<jsp:include page="../hospital/ShowHospital.jsp"></jsp:include>
			</section> --%>
		</main>	
	
	</div>
	<script src="../../js/admin/Dashboard.js"></script>
		 <!-- Toast Notification -->
        <div id="toast" class="toast"></div>
<script>
    // Function to show toast notification
    function showToast(message) {
        var toast = document.getElementById("toast");
        toast.innerText = message;
        toast.className = "toast show";
        setTimeout(function() { toast.className = toast.className.replace("show", ""); }, 4000);
    }
    // Check if there's a message from the servlet
    <%
        String message = (String) session.getAttribute("message");
        if (message != null) {
    %>
        showToast("<%= message %>");
        <%
            session.removeAttribute("message");
        }
    %>
    </script>
</body>
</html>
