<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" type="image/png" href="views/assets/img/new.png" />


  <title>Smart Panel</title>

  <!-- Custom fonts for this template-->
  <link href="views/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="views/assets/css/sb-admin-2.css" rel="stylesheet">

  <?php 
  if($datatablesop == 2):
  ?>
  <link href="views/assets/vendor/datatablesbutton/datatables.css" rel="stylesheet">
  <link href="views/assets/vendor/datatablesbutton/buttons.css" rel="stylesheet">
  <link href="views/assets/vendor/datatables/fixed.css" rel="stylesheet">
  <?php else: ?>
  <!-- Custom styles for this page -->
  <link href="views/assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <?php endif; ?>  

  

  <link href="views/assets/vendor/datepicker/css/bootstrap-datepicker.css" rel="stylesheet">

  <script src="views/assets/vendor/sweetalert/swal.js"></script>

  <!--
  <link href="views/assets/vendor/switch/switch.css" rel="stylesheet">
  -->
  <link href="views/assets/vendor/dropzone/dropzone.css" rel="stylesheet">
  <link href="views/assets/vendor/dropzone/basic.css" rel="stylesheet">

  <link href="views/assets/vendor/bootstrap-slider/slider.css" rel="stylesheet">

  <!--
  <link src="views/assets/vendor/select2/css/select2.css" rel="stylesheet">

  <link src="views/assets/vendor/select2/css/themebs4.css" rel="stylesheet">
  -->
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">


  <script src="views/assets/gantt/gantt.js"></script>

   <style>

    body{
      font-family: 'Roboto', sans-serif;
    }

    tr{
      font-size: 12px;
    }

    .btn-primary{
      background-color: #039be5;
    }

    .options:hover{
      color:black !important;;
    }

    .options2:hover{
      color:#47f734 !important;;
    }


    .table-responsive{
      width: 100%;
    }

    .card-header{
      background-color: #fff;
      border-bottom: #fff;
    }

    td{
      vertical-align: middle;
    }

    .odd{
      vertical-align: middle;
    }

    .even{
      vertical-align: middle;
    }

    .user-img{
      width: 60px;
      height: auto;
      text-align: center;
    }

     .bg-white-s{
       background-color: #fff;
     }
     .bg-dark-s{
       background-color: #242424;
     }

     .form-control{
       border-radius: 0;
     }

     .form-control:focus {
        /*border-color: #000;*/
        box-shadow: inset 1px  rgba(0, 0, 0, 0.075), 0 0 8px rgba(0, 0, 0, 0.6);
      }



      .switch1 {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch1 input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider1 {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider1:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider1 {
  background-color: #1FB264;
}

input:focus + .slider1 {
  box-shadow: 0 0 1px #1FB264;
}

input:checked + .slider1:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider1.round {
  border-radius: 34px;
}

.slider1.round:before {
  border-radius: 50%;
}


      /*
      .switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 34px;
        /*float:right;
      }
*/
      /*
      .switch input {display:none;}

      .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
      }

      .slider:before {
        position: absolute;
        content: "";
        height: 26px;
        width: 26px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
      }

      input.default:checked + .slider {
        background-color: #444;
      }
      input.primary:checked + .slider {
        background-color: #2196F3;
      }
      input.success:checked + .slider {
        background-color: #8bc34a;
      }
      input.info:checked + .slider {
        background-color: #3de0f5;
      }
      input.warning:checked + .slider {
        background-color: #FFC107;
      }
      input.danger:checked + .slider {
        background-color: #f44336;
      }

      input:focus + .slider {
        box-shadow: 0 0 1px #2196F3;
      }

      input:checked + .slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
      }

      .slider.round {
        border-radius: 34px;
      }

      .slider.round:before {
        border-radius: 50%;
      }

     */
      .DTFC_LeftBodyLiner
       {
          overflow-x: hidden;
       }
      


      .dt-button {
        background-color: #039be5 !important; /* Green */
        /*border: 1px !important;*/
        color: white !important;
        padding: 5px 32px !important;
        text-align: center !important;
        text-decoration: none !important;
        display: inline-block !important;
        font-size: 14px !important;
        box-shadow: 0 0.125rem 0.25rem 0 rgba(58, 59, 69, 0.2) !important;
        /*border-color: #4e73df !important;*/
      }

      
      .error
      {
        font-size: 12px !important;
        width: 100% !important;
        color:red !important;
      }

      .slider
      {
        width: 100% !important;
        background-color: white !important;
        font-size: 12px !important;
      }

   </style>

</head>
