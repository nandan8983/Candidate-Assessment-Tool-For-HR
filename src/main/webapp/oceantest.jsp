<%@page import="main.Cdata"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>&rsaquo;TEST &mdash; CAFHR</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->

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
Cdata.setName(request.getParameter("name"));
Cdata.setMono(request.getParameter("mono"));
Cdata.setAdd(request.getParameter("add"));
Cdata.setDob(request.getParameter("bsate"));
Cdata.setUname(request.getParameter("uname"));
Cdata.setPass(request.getParameter("pass"));

Connection con = DbConnection.connect();
PreparedStatement pstmt1 = con.prepareStatement("select * from questions");

ResultSet rs =  pstmt1.executeQuery();

%>
  <div id="app">
    <div class="main-wrapper container">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar" style="margin-top: 20px;">
        <a href="joblist.jsp" class="navbar-brand sidebar-gone-hide">JOB FORM</a>
       
          
        
  
        
      </nav>

   

      <!-- Main Content -->
      <div class="main-content" style="min-height: 201px;">
        <section class="section" >
        	<div class="row">
              <div class="col-12" style="margin-top: 70px;" >
                <div class="card" style="outline-color: lightgray;">
                  <div class="card-header">
                    <h4>JOBS TABLE</h4>
                    <div class="card-header-form">
                     
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                    <form action="asd.html">  <table class="table table-striped" >
                      
                        <tbody><tr>
                         
                          <th>NO.</th>
                          <th>Question</th>
                          <th>Answer</th>
                         
                        </tr><% while(rs.next()){%>
                        <tr>
                          <td><%=rs.getInt(1)%></td>
                          <td><%=rs.getString(2) %></td>
                          <td><div class="card-footer text-right">  <input type="range" name="arange1" class="form-control" value="3" min="1" max="5" oninput="this.nextElementSibling.value = this.value" >
                     
                      <output>3</output></div> </td>
                         
                          
                         
                        </tr>
                         <%} %>
                        
                        
                      </tbody></table>
                     <button class="btn btn-icon icon-left btn-success">Done</button>
                     </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
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