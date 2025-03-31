<%@page import="main.Cdata"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
 <title> Candidate Form &mdash; CAFHR</title>

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
Cdata.setName(request.getParameter("name"));
Cdata.setMono(request.getParameter("mono"));
Cdata.setAdd(request.getParameter("add"));
Cdata.setDob(request.getParameter("bdate"));
Cdata.setUname(request.getParameter("email"));
Cdata.setPass(request.getParameter("pass"));


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
                         <a href="joblist.jsp"class="btn btn-primary" style="margin-left: 5px;margin-bottom: 10px;">Back</a>
        
        	<div class="row">
              <div class="col-12"  >
                <div class="card" style="outline-color: lightgray;">
                  <div class="card-header">
                    <h4>OPENNESS</h4>
                    <div class="card-header-form">
                     
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                    <form action="cqp2.jsp">  <table class="table table-striped" >
                      
                        <tbody><tr>
                         
                          <th>NO.</th>
                          <th style="width: 500px;">Question</th>
                          <th>Answer</th>
                         
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>I am open to changing my beliefs</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange1" class="form-control" value="3" min="1" max="5"  >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>2</td>
                          <td>I prefer familiar experiences over new ones</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange2" class="form-control" value="3" min="1" max="5"  >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>3</td>
                          <td>It is difficult for other people to change what I believe</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange3" class="form-control" value="-3" min="-5" max="-1"  >
								</div> 
                     	 </td>
                       </tr>
                       <tr>
                          <td>4</td>
                          <td>When working in groups, I prefer working with the same people each time</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange16" class="form-control" value="-3" min="-5" max="-1"  >
								</div> 
                     	 </td>
                       </tr>
                       <tr>
                          <td>5</td>
                          <td>I like trying new food</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange17" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                       
                        
                        
                        
                      </tbody></table>
                      <div class="card-footer text-right">
                     <button class="btn btn-icon icon-right btn-success">Next</button>
                     </div>
                     </form>
                    </div>
                  </div>
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