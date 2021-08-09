<?php
require_once("classes/ActionItem.php");
$actionitem = new ActionItem();


if (isset($actionitem)) {
  if ($actionitem->errors) {
      foreach ($actionitem->errors as $error) {
        echo "
        <script type='text/javascript'>
          document.addEventListener('DOMContentLoaded', function(event) {
            swal('Error!','$error','error');
          });
       </script>
       ";        }
  }
  if ($actionitem->messages) {
      foreach ($actionitem->messages as $message) {
        $p =   implode(',',$actionitem->project);  
        if($p != ''){
            $p = '&meeting_id='.$p;
        }
        else{
            $p = '';
        }
        echo "
        <script type='text/javascript'>
          document.addEventListener('DOMContentLoaded', function(event) {
            
            swal({
                title: 'Success!',
                text: '$message',
                type: 'success'
            }).then(function() {
                window.location = 'index.php?page=ail_view$p';
            });
          });
       </script>
       ";
      }
  }
}

if(isset($_GET['meeting_id']))
{
    $query_data = "SELECT * FROM ail_meeting 
    LEFT JOIN departments ON ail_meeting.meeting_department = departments.department_id  
    WHERE meeting_id = {$_GET['meeting_id']}";
    
    $run_query = mysqli_query($connection, $query_data);
    $data = mysqli_fetch_array($run_query);
}

?>

<h1 class="h3 mb-4 text-gray-800">Meeting Details</h1>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.php?page=ail_list">Back To Lists</a></li>
    <li class="breadcrumb-item active" aria-current="page">Add Action Item List</li>
  </ol>
</nav>
<form method="POST" id="form-user" autocomplete="off" enctype="multipart/form-data">

<div class="row">
    <div class="col-lg-12 ">
        <!-- Dropdown Card Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        
                <h6 class="m-0 font-weight-bold text-default"></h6>
                        
                <div class="dropdown no-arrow">
                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Options:</div>
                        <a class="dropdown-item" href="#">Return to lists</a>
                        <a class="dropdown-item" href="#">Refresh Page</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" target="_blank" href="index.php?page=user_list">Add Users</a>
                    </div>
                </div>
            </div>
            <!-- Card Body -->
            <div id="profile-data" class="card-body">
                
            
            
                <div class="col-lg-10 offset-lg-1">

                    <div class="row">
                        <div class="form-group col-lg-12">
                            <h3>Meeting Details:</h3>
                        </div>

                        <div class="form-group col-lg-12">
                            <label>Meeting name, problem or observation:</label>
                            <b class="text-primary"><?php echo $data['meeting_name'] ?></b>
                        </div>

                        <div class="form-group col-lg-12">
                            <label>Department:</label>
                            <b class="text-primary"><?php echo $data['department_name']; ?></b>
                        </div>

                        <div class="form-group col-lg-12">
                            <label>Meeting Date</label>
                            <b class="text-primary"><?php echo $data['meeting_date']; ?></b>
                        </div>

                        <div class="form-group col-lg-12">
                            <b class="text-primary">
                            <?php 
                            if($data['private'] == 1 ){
                                echo "Meeting is Private";
                            }else{
                                echo "Meeting is Open";
                            }
                            ?>
                            </b>
                        </div>

                        <div class="form-group col-lg-12">
                            <a href="index.php?page=ail_report&meeting_id=<?php echo $_GET['meeting_id'] ?>" class="btn btn-success">Report</a>
                        </div>


                    </div>

                    <div class="row">   
                        <div class="table-responsive">
                            <table style="width: 100%;" class="table" id="dataTable">
                                <thead>
                                    <th>Action</th>
                                    <th>Responsible</th>
                                    <th>ECD</th>
                                    <th>Actions</th>
                                    <th>Updates</th>
                                </thead>
                                <tbody>
                                <?php 
                                if(isset($_GET['meeting_id'])):
                                    $query = "SELECT * FROM ail_action 
                                    LEFT JOIN users ON users.user_id = ail_action.ail_owner 
                                    WHERE ail_meeting_id = {$_GET['meeting_id']} AND action_active = 1 ORDER BY ail_action_ecd";
                                    $result = mysqli_query($connection, $query);
                                    while($row = mysqli_fetch_array($result)):
                                ?>
                                        <tr>
                                            <td><?php echo $row['ail_action_name']; ?></td>
                                            
                                            <td>
                                            <b><?php echo $row['user_name'] ?></b><br>
                                            <?php
                                                $query_users = "SELECT * FROM ail_users 
                                                LEFT JOIN users ON users.user_id = ail_users.ail_user_id 
                                                WHERE ail_meeting_id =  {$_GET['meeting_id']} AND ail_action_id = {$row['ail_action_id']}";
                                                $run_user_query = mysqli_query($connection, $query_users);
                                                while($row_users = mysqli_fetch_array($run_user_query)):
                                            ?>
                                                <?php echo $row_users['user_name'] ?><br>
                                            <?php endwhile; ?>
                                            </td>
                                            
                                            <td><?php echo $row['ail_action_ecd'] ?></td>
                                            
                                            <td>
                                                <button type="button" class="btn btn-primary modal-info" data-action="<?php echo $row['ail_action_id'] ?>" data-action-name="<?php echo $row['ail_action_name'] ?>" data-toggle="modal" data-target="#exampleModal">
                                                    Update
                                                </button>
                                            </td>
                                            <td>
                                                <?php 
                                                $query_updates = "SELECT * FROM ail_updates 
                                                LEFT JOIN users ON users.user_id = ail_updates.update_user 
                                                WHERE action_id = {$row['ail_action_id']} ORDER BY update_id DESC";
                                                $result_updates = mysqli_query($connection, $query_updates);
                                                while($row_updates = mysqli_fetch_array($result_updates)):
                                                ?>
                                                    <b class="text_primary"><?php echo $row_updates['update_date'] ?></b>&nbsp;&nbsp;
                                                    <?php echo $row_updates['update_text'] ?><br>
                                                    <?php echo $row_updates['user_name'] ?><br>

                                                <?php endwhile; ?>
                                            </td>
                                        </tr>
                                <?php 
                                    endwhile;
                                endif;
                                ?>
                                    
                                </tbody>
                            </table>

                        </div>
                    </div><!--row end-->
                    
                    
                   




                </div><!--col-8-end-->
                    
               
            </div>
        </div>

    </div>
</div>    
</form>          



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
    <form method="POST">
    
      <div class="modal-header">
        <h5 class="modal-title" id="action-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        
            <input id="action_id" type="hidden" name="action_id" value="">
            <div class="form-group">
                <textarea name="update_text" class="form-control" rows="8"></textarea>
            </div>
            <!--
            <div class="form-group">
                <button type="submit" name="submit_update" class="btn btn-primary">Save</button>
            </div>
            -->

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" name="submit_update" class="btn btn-primary">Save</button>
      </div>
    </form>


    </div>
  </div>
</div>







<!--
ALTER TABLE `projects` ADD `project_priority` INT(2) NOT NULL DEFAULT '0' AFTER `project_complete`, ADD `project_type` VARCHAR(255) NOT NULL AFTER `project_priority`, ADD `improvement_oportunity` VARCHAR(255) NOT NULL AFTER `project_type`, ADD `key_indicator_id` INT(11) NOT NULL AFTER `improvement_oportunity`, ADD `expected_improvement` FLOAT(11) NOT NULL AFTER `key_indicator_id`, ADD `achieved_improvement` FLOAT(11) NOT NULL AFTER `expected_improvement`, ADD `expected_cost_saving` FLOAT(11) NOT NULL AFTER `achieved_improvement`, ADD `achieved_cost_saving` FLOAT(11) NOT NULL AFTER `expected_cost_saving`;
    -->