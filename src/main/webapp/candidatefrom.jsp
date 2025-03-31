<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Candidate Form &mdash; CAFHR</title>

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
<%
String jid = request.getParameter("id");
String jname= request.getParameter("jname");
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
        <div class="col-20 col-md-8 col-lg-8" style="margin-left: 160px;">
         <div class="section-header">
            <h1>Candidate Forms</h1>
            
          </div>

          <form action="">
            <div class="card">
                  
                  <div class="card-body">
                    <div class="form-group">
                      <label>Enter Your Name</label>
                      <input type="text" class="form-control">
                    </div>
                    
                    <div class="form-group">
                      <label>Mobile Number</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-phone"></i>
                          </div>
                        </div>
                        <input type="text" class="form-control phone-number">
                      </div>
                    </div>
                   
                      <div class="form-group">
                      <label>Enter Address</label>
                      <input type="text" class="form-control">
                    </div>
                    
                   
                   
                    <div class="form-group">
                      <label>DOB</label>
                      <input type="date" class="form-control datemask" placeholder="YYYY/MM/DD">
                    </div>
                   <div class="form-group">
                      <label>Enter Email</label>
                      <input type="text" class="form-control" name="email">
                    </div>
                    
                    <div class="form-group">
                      <label>Enter Password</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-lock"></i>
                          </div>
                        </div>
                        <input type="password" class="form-control pwstrength" data-indicator="pwindicator">
                      </div>
                      </div>
                      <div  class="card-footer text-right">
                      <a type="submit" href="" class="btn btn-icon icon-left btn-success"><i class="fas fa-check"></i> Next</a>
                  </div>
                </div>
          </div></form></div>
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