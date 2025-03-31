<!DOCTYPE html>
<%@page import="main.Value"%>
<%@page import="main.Cdata"%>
<%@page import="main.DbConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>FORM SUBMITED&mdash; CAFHR</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->


<!-- /END GA --></head>

<body>
<%@ page import="java.sql.*" %>
<%@ page import="main.DbConnection" %>
 <%
 int arange13 =Integer.parseInt(request.getParameter("arange13"));
 int arange14 =Integer.parseInt(request.getParameter("arange14"));
 int arange15 =Integer.parseInt(request.getParameter("arange15"));
 int arange1 = Integer.parseInt(Value.getArange1());
 int arange2 = Integer.parseInt(Value.getArange2());
 int arange3 = -1*(Integer.parseInt(Value.getArange3()));
 int arange4 = Integer.parseInt(Value.getArange4());
 int arange5 = Integer.parseInt(Value.getArange5());
 int arange6 = Integer.parseInt(Value.getArange6());
 int arange7 = Integer.parseInt(Value.getArange7());
 int arange8 = Integer.parseInt(Value.getArange8());
 int arange9 = Integer.parseInt(Value.getArange9());
 int arange10 = Integer.parseInt(Value.getArange10());
 int arange11 = Integer.parseInt(Value.getArange11());
 int arange12 = Integer.parseInt(Value.getArange12());
 String name = Cdata.getName();
 String mono = Cdata.getMono();
 String add = Cdata.getAdd();
 String dob = Cdata.getDob();
 String uname = Cdata.getUname();
 String pass = Cdata.getPass();
 int jid = Value.getJID();
 String jname = Value.getJname();
 int open = ((arange1+arange2+arange3)/3);
 int conn = ((arange4+arange5+arange6)/3);
 int ext = ((arange7+arange8+arange9)/3);
 int agr =  ((arange10+arange11+arange12)/3);
 int neu = ((arange13+arange14+arange15)/3);
 
 Connection con = DbConnection.connect();
 PreparedStatement pstmt = con.prepareStatement("insert into candidate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
 pstmt.setInt(1, 0);
 pstmt.setString(2, name);
 pstmt.setString(3, mono);
 pstmt.setString(4, add);
 pstmt.setString(5, dob);
 pstmt.setString(6, uname);
 pstmt.setString(7, pass);
 pstmt.setInt(8, jid);
 pstmt.setString(9, jname);
 pstmt.setInt(10, open);
 pstmt.setInt(11, conn);
 pstmt.setInt(12, ext);
 pstmt.setInt(13, agr);
 pstmt.setInt(14, neu);
 pstmt.setString(15, "Painding");
 int i = pstmt.executeUpdate();
 %>
    

      <!-- Main Content -->
      <div id="app">
    <section class="section" style="margin-top: 130px;min-height: 479px;">
      <div class="container mt-5">

          
           

            
             <div class="swal-icon swal-icon--success">
   				 <span class="swal-icon--success__line swal-icon--success__line--long"></span>
   					 <span class="swal-icon--success__line swal-icon--success__line--tip"></span>

   					 <div class="swal-icon--success__ring"></div>
    			<div class="swal-icon--success__hide-corners"></div>
  				</div>
            </div>
          <div class="container mt-5">
        <div class="page-error">
          <div class="page-inner">
            <h3>Your Application Is Successfully Submitted</h3>
            
            <ul class="nav nav-pills" style="margin-left: 500px;">
                      <li class="nav-item" style="margin-top: 20px;">
                        <a class="nav-link active" href="Login.jsp"><i class="fas fa-home"></i>Login Page</a>
                      </li>
                      
                      
                    </ul>
          </div></div>
        </div>
        </section>
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
  <script src="assets/modules/sweetalert/sweetalert.min.js"></script>

  <!-- Page Specific JS File -->
  <script src="assets/js/page/modules-sweetalert.js"></script>
  
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>