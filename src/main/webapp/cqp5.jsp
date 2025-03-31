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
Value.setArange10(request.getParameter("arange10"));
Value.setArange11(request.getParameter("arange11"));
Value.setArange12(request.getParameter("arange12"));
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
                    <h4>NEUROTICISM</h4>
                    <div class="card-header-form">
                     
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="table-responsive">
                    <form action="formsub.jsp">  <table class="table table-striped" >
                      
                        <tbody><tr>
                         
                          <th>NO.</th>
                          <th style="width: 500px;">Question</th>
                          <th>Answer</th>
                         
                        </tr>
                        <tr>
                          <td>21</td>
                          <td>I alter my behavior to fit in better with social groups</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange13" class="form-control" value="-3" min="-5" max="-1" >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>22</td>
                          <td>I can often get by without emotional support</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange14" class="form-control" value="-3" min="-5" max="-1" >
								</div> 
                     	 </td>
                       </tr>
                        <tr>
                          <td>23</td>
                          <td>Most people I interact with, I fit in best when I am being myself</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange15" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                       <tr>
                          <td>24</td>
                          <td>Most days, I feel comfortable in my surroundings</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange24" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                       <tr>
                          <td>25</td>
                          <td>I have a particular way of doing things</td>
                          <td><div class="card-footer text-right">
                         		 <input type="range" name="arange25" class="form-control" value="3" min="1" max="5" >
								</div> 
                     	 </td>
                       </tr>
                        
                        
                        
                      </tbody></table>
                      <div class="card-footer text-right">
                     <button class="btn btn-icon icon-right btn-success">Submit</button>
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