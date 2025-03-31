<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Login &mdash; CATFHR</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="assets/modules/bootstrap-social/bootstrap-social.css">

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
</script> <style >
body {
  background-image: url('assets/img/1598239589967.png'); background-size: 103%; 
}
</style> 
<!-- /END GA --></head>

<body>
  <div id="app">
    <section class="section" ">
      <div class="container mt-5">
        <div class="row">
        <div class="col-12 mb-2">
                <div class="hero bg-primary text-white" style="padding: 43px;">
                 <h2 style="align-self: center;">Candidate Assessment Tool For HR</h2>
                </div>
              </div>
        <div class="col-10 col-md-6 col-sm-10">
                <div class="card card-success" >
                  <div class="card-header" >
                    <h4></h4>
                  </div>
                  <div class="card-body" >
                    <div class="empty-state" data-height="385" style="height: 385px;">
                     <a href="joblist.jsp"> <div class="empty-state-icon" style="height: 150px;width: 150px;"><img alt="" src="assets/img/document-icon-36542.png" style="max-width: 150px;">
                       
                      </div> </a>
                      <h2>Apply For Job</h2>
                      <p class="lead">
                        
                      </p>
                      <a href="joblist.jsp" class="btn btn-primary mt-4">JOBS LIST</a>
                      
                    </div>
                  </div>
                </div>
              </div>
          <div class="col-10 col-md-6 col-sm-10">
           

            <div class="card card-primary">
             
<form method="POST" action="Login" class="needs-validation"> 
              <div class="card-body" style="align-self: auto;margin-left: 40px;margin-right: 40px;">
              
              <div class="form-group">
              
                  
                 
               <div class="card-header">
              <h4>Login</h4></div>
              
                      <label>Select Role</label>
                      <select class="form-control" name="lrole">
                        <option>Candidate</option>
                        <option>HR</option>
                        <option>Admin</option>
                      </select>
                    </div>
                    
                    
       
                
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="text" class="form-control" name="email" tabindex="1" required autofocus>
                    <div class="invalid-feedback">
                      Please fill in your email
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="d-block">
                    	<label for="password" class="control-label">Password</label>
                      
                    </div>
                    <input id="password" type="password" class="form-control" name="pass" tabindex="2" required>
                    <div class="invalid-feedback">
                      please fill in your password
                    </div>
                  </div>

                 

                  <div class="form-group" style="margin: 40px;">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Login
                    </button>
                  </div>
                  
                  
                  </div>
                </form>
               

              
            </div>
           
            
          </div>
        </div>
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

  <!-- Page Specific JS File -->
  
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>