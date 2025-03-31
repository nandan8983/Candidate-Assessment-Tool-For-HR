<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Admin Dashboard &mdash; CAFHR</title>

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


Connection con = DbConnection.connect();
PreparedStatement pstmt = con.prepareStatement("select * from hr");
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
            <div class="d-sm-none d-lg-inline-block">Hi, Admin</div></a>
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
            <a href="admindash.html">ADMIN PANEL</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="admindash.html">A P</a>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
              <li><a class="nav-link" href="admindash.html"><i class="fas fa-th-large"></i> <span>Dashbord</span></a></li>
            <li class="menu-header">ADMIN WORK</li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="far fa-user"></i> <span>HR WORK</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="addhr.html">ADD HR</a></li>
                <li><a class="nav-link" href="viewhr.jsp">VIEW HR</a></li>
                <li><a class="nav-link" href="deletehr.jsp">DELETE HR</a></li>
              </ul>
            </li>
           
            
           
          
                     
          </ul>

                 </aside>
      </div>

      <!-- Main Content -->
      <div class="main-content">
   				<div class="row">
              <div class="col-12" style="margin-top: 70px;" >
                <div class="card" style="outline-color: lightgray;">
                  <div class="card-header">
                    <h4>Advanced Table</h4>
                    <div class="card-header-form">
                     
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                      <table class="table table-striped">
                      
                        <tbody><tr>
                         
                          <th>ID</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Mobile Number</th>
                          <th>Password</th>
                          <th>Designation</th>
                        </tr><% while(rs.next()){%>
                        <tr>
                          <td><%=rs.getInt(1)%></td>
                          <td><%=rs.getString(2) %></td>
                          <td> <%=rs.getString(3) %></td>
                          <td><%=rs.getString(4) %></td>
                          <td><%=rs.getString(5) %></td>
                          <td><%=rs.getString(6) %></td>
                         <td><a href="delhr.jsp?id=<%=rs.getInt(1) %>" class="btn btn-danger trigger--fire-modal-7">Delete</a></td>
                        </tr>
                         <%} %>
                        
                      </tbody></table>

                    </div>
                  </div>
                </div>
              </div>
            </div>
   
   
       </div>
       </div>     
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