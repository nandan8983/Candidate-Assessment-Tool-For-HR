<%@page import="main.Value"%>
<%@page import="main.Cdata"%>
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
Value.setArange4(request.getParameter("arange4"));
Value.setArange5(request.getParameter("arange5"));
Value.setArange6(request.getParameter("arange6"));
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
                    <h4>EXTRAVERSION</h4>
                    <div class="card-header-form">
                     
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                    <form action="cqp4.jsp">  <table class="table table-striped" >
                      
                        <tbody><tr>
                         
                          <th>NO.</th>
                          <th style="width: 500px;">Question</th>
                          <th>Answer</th>
                         
                        </tr>
                        <tr>
                          <td>11</td>
                          <td>I like to go places and do things on the weekends</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange7" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>12</td>
                          <td>I love sharing information during conversations</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange8" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>13</td>
                          <td>I avoid crowds as much as possible</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange9" class="form-control" value="3" min="1" max="5"  >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>14</td>
                          <td>I feel like I'm missing out if I don't go to an event</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange20" class="form-control" value="3" min="1" max="5"  >
								</div> 
                     	 </td>
                       </tr>
                       <tr>
                          <td>15</td>
                          <td>I'm okay if I don't mingle much at a social gathering</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange21" class="form-control" value="3" min="1" max="5"  >
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