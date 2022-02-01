<?php
require_once("views/includes/header.php");
// show potential errors / feedback (from login object)
if (isset($login)) {
    if ($login->errors) {
        foreach ($login->errors as $error) {
          echo "
          <script type='text/javascript'>
            document.addEventListener('DOMContentLoaded', function(event) {
              swal('Error!','$error','error');
            });
         </script>
         ";        }
    }
    if ($login->messages) {
        foreach ($login->messages as $message) {
          echo "
          <script type='text/javascript'>
            document.addEventListener('DOMContentLoaded', function(event) {
              swal('$message');
            });
         </script>
         ";
        }
    }
}
?>

<!-- login form box -->
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-6">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <!--
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              -->
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Project Manager</h1>
                  </div>


                  <form method="POST" class="user" action="index.php" name="loginform" autocomplete="off">
                    <div class="form-group">
                      <input style="display: none;" type="email" >  
                      <input name="user_name" type="text" class="form-control " id="exampleInputEmail" aria-describedby="emailHelp" placeholder="User Name" autocomplete="new-password">
                    </div>
                    <div class="form-group">
                      <input name="user_password" type="password" class="form-control f" id="exampleInputPassword" placeholder="Password" autocomplete="new-password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    
                    
                    
                    <button type="submit" name="login" class="btn btn-primary btn-user btn-block">
                      <i class="fas fa-key "></i> Login
                    </button>

                    <a href="trigger.php" class="btn btn-danger btn-user btn-block">
                      <i class="fas fa-exclamation-triangle "></i> Trigger An Action
                    </a>
                    <a href="new_user_form.php" class="btn btn-info btn-user btn-block">
                      <i class="fas fa-user "></i> User Registration
                    </a>
                  </form>                
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>



<?php require_once("views/includes/footer.php"); ?>
