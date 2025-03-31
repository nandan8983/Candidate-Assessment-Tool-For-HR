<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>JOB LIST&mdash; CAFHR</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

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

<body class="layout-3">
<%@ page import="java.sql.*" %>
<%@ page import="main.DbConnection" %>
<%


Connection con = DbConnection.connect();
PreparedStatement pstmt = con.prepareStatement("select * from job");
ResultSet rs =  pstmt.executeQuery();

%>
  <div id="app">
    <div class="main-wrapper container">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar" style="margin-top: 20px;">
        <a href="joblist.jsp" class="navbar-brand sidebar-gone-hide">JOB LIST</a>
        <a href="#" class="nav-link sidebar-gone-show" data-toggle="sidebar"><i class="fas fa-bars"></i></a>
       
          
        
  
        
      </nav>

   

      <!-- Main Content -->
      <div class="main-content" style="min-height: 201px;">
        <section class="section" >
         <a href="candidatedash.jsp"class="btn btn-primary">Back</a>

          <div class="section-body" >
            <h2 class="section-title">JOB List</h2>
            <p class="section-lead">Select To Apply For Job</p>
           <div class="card-body p-0">
                    <div class="table-responsive">
                      <table class="table table-striped">
                      
                        <tbody><tr>
                         
                          <th>ID</th>
                          <th>Title</th>
                          <th>Deseription</th>
                          <th>Salary Range</th>
                          <th>Qualities</th>
                          <th>Experience</th>
                        </tr><% while(rs.next()){%>
                        <tr>
                         <td><%=rs.getInt(1)%></td>
                          <td><%=rs.getString(2) %></td>
                          <td> <%=rs.getString(3) %></td>
                          <td><%=rs.getInt(4) %> to <%=rs.getInt(5) %></td>
                          <td><%=rs.getString(6) %></td>
                          <td><%=rs.getInt(7) %></td>
                          <td><a href="canform.jsp?jid=<%=rs.getInt(1)%>&jname=<%=rs.getString(2)%>"class="btn btn-danger trigger--fire-modal-7">Apply</a></td>
                        </tr>
                         <%} %>
                        
                      </tbody></table>

                    </div>
                  </div>
          </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left" style="margin-left: 400px;">
          Copyright &copy; 2022 <div class="bullet"></div> Design By Nandan
        </div>
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

  <!-- Page Specific JS File -->
  
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>