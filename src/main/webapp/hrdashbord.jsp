<%@page import="main.Value"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>HR Dashboard &mdash; CAFHR</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="assets/modules/jqvmap/dist/jqvmap.min.css">
  <link rel="stylesheet" href="assets/modules/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="assets/modules/owlcarousel2/dist/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/modules/owlcarousel2/dist/assets/owl.theme.default.min.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
</script>
<!-- /END GA --></head>

<body>
<%@ page import="java.sql.*" %>
<%@ page import="main.DbConnection" %>
<%

int id = Value.getID();
Connection con = DbConnection.connect();
PreparedStatement pstmt = con.prepareStatement("select * from hr where ID=?");
pstmt.setInt(1, id);
ResultSet rs =  pstmt.executeQuery();

%>


  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
          </ul>
    
        </form>
        <ul class="navbar-nav navbar-right">
          
         
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <img  src="assets/modules/flag-icon-css/flags/4x3/in.svg" alt="India Flag" class="rounded-circle mr-1" style="width: 35px;height: 30px;">
            <div class="d-sm-none d-lg-inline-block">Hi, <% while(rs.next()){ %><%=rs.getString(2) %></div></a>
            <div class="dropdown-menu dropdown-menu-right">
             
             
              
              <div class="dropdown-divider"></div>
              <a href="Login.jsp" class="dropdown-item has-icon text-danger">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </div>
          </li>
        </ul>
      </nav>
      <div class="main-sidebar sidebar-style-2">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="#">HR PANEL</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="#">H P</a>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
              <li><a class="nav-link" href="hrdashbord.jsp"><i class="fas fa-th-large"></i> <span>Dashbord</span></a></li>
            <li class="menu-header">HR WORK</li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="far fa-user"></i> <span>HR WORK</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="addjob.jsp">ADD JOBS</a></li>
                <li><a class="nav-link" href="viewjob.jsp">VIEW JOBS</a></li>
                <li><a class="nav-link" href="deletejob.jsp">DELETE JONS</a></li>
              </ul>
            </li>
           <li class="menu-header">CANDIDATE</li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-pencil-ruler"></i> <span>JOB WORK</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="shortlistcan.jsp">SHORTLISTED CANDIDATE</a></li>
                <li><a class="nav-link" href="viewappcan.jsp">VIEW APPROVED CANDIDATE</a></li>
                <li><a class="nav-link" href="viewallcan.jsp">VIEW ALL CANDIDATE</a></li>
              </ul>
            </li>
            
                   
          </ul>

                 </aside>
      </div>

      <!-- Main Content -->
      <div class="main-content">
        <section class="section" style="margin-top: 70px;">
         <div class="card card-success" style="min-height: 400px;">
                  <div class="card-header">
                    <h4>WelCome, <%=rs.getString(2) %><%} %>  to HR Dashboard</h4>
                  </div>
                  <div class="card-body">
                    <p> <code></code></p>
                  </div>
                </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          Copyright &copy; 2022 Design By NANDAN NIKWADE<div class="bullet">
        </div> </div>
        <div class="footer-right">
          
        </div>
      </footer>
    </div>
  </div>

  <!-- General JS Scripts -->
  <script src="assets/modules/jquery.min.js"></script>
  <script src="assets/modules/popper.js"></script>
  <script src="assets/modules/tooltip.js"></script>
  <script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="assets/modules/moment.min.js"></script>
  <script src="assets/js/stisla.js"></script>
  
  <!-- JS Libraies -->
  <script src="assets/modules/jquery.sparkline.min.js"></script>
  <script src="assets/modules/chart.min.js"></script>
  <script src="assets/modules/owlcarousel2/dist/owl.carousel.min.js"></script>
  <script src="assets/modules/summernote/summernote-bs4.js"></script>
  <script src="assets/modules/chocolat/dist/js/jquery.chocolat.min.js"></script>

  <!-- Page Specific JS File -->
  <script src="assets/js/page/index.js"></script>
  
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>