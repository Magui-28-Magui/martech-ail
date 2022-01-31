<?php
$stmt = $connection->prepare(
    "SELECT * FROM actions 
    LEFT JOIN project_phase ON actions.action_phase = project_phase.phase_id 
    LEFT JOIN projects ON actions.action_project_id = projects.project_id 
    LEFT JOIN departments ON actions.action_department = departments.department_id
    WHERE action_id = ?"
);
$stmt->bind_param("i", $_GET['action_id']);
$stmt->execute();

$result = $stmt->get_result();
if($result->num_rows === 0) {
	?>
	
	<script>
		swal("Update doesn't exist", "", "error")
		.then( () => {
			  window.history.back();
		})
	</script>

	<?php
} 
    //exit('No rows');

$row = $result->fetch_array();
$stmt->close();
?>
<h1 class="h3 mb-4 text-gray-800">Updates For Action: <b><?php echo $row['action_name'] ?></b></h1>

<div style="margin-bottom:15px;">
    <a  href="index.php?page=action_add_file&action_id=<?php echo $row['action_id']; ?>&project_id=<?php echo $row['project_id'] ?>" id="add-newuser" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" ><i class="fas fa-plus fa-sm text-white-50"></i>&nbsp;&nbsp;Add File</a>
    <a  href="index.php?page=action_progress&action_id=<?php echo $row['action_id']; ?>&project_id=<?php echo $row['project_id'] ?>" id="add-newuser" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" ><i class="fas fa-plus fa-sm text-white-50"></i>&nbsp;&nbsp;Update Progress</a>
    

</div>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="index.php?page=project_view&project_id=<?php echo $row['action_project_id'] ?>">Back To Actions List</a></li>
    <li class="breadcrumb-item active" aria-current="page"><?php echo $row['action_name'] ?></li>
  </ol>
</nav>


<div class="row">



<div class="col-lg-12">
    <div class="card shadow mb-4 ">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Action info</h6>
        </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <h4><?php echo $row['action_name']; ?></h4>
                        <br>
                        <b>Parent Project: </b><?php echo $row['project_name']; ?>
                        <br>
                        <b>Responsible Department: </b><?php echo $row['department_name']; ?>
                        <br>
                        <b>Phase: </b><?php echo $row['phase_name']; ?>
                        <br>
                        <b>Start Date: </b><?php echo date_format(date_create($row['action_start_date']), "m-d-Y"); ?>
                        <br>
                        <b>Promise Date: </b><?php echo date_format(date_create($row['action_promise_date']), "m-d-Y"); ?>
                        <br>
                        <b>Description: </b><?php echo $row['action_description']; ?>
                        <br><br>
                        <?php
                        $percentage = $row['action_percent'];

                        if($percentage <= 25)
                        {
                            $bg = "bg-danger";
                        }
                        elseif($percentage > 25 && $percentage <= 75)
                        {
                            $bg = "bg-warning";
                        }
                        elseif($percentage > 75 && $percentage <= 99)
                        {
                            $bg = "bg-success";
                        }
                        else
                        {
                            $bg = "bg-primary";
                        }

                        ?>
                        <div data-toggle='tooltip' data-placement='top' title='<?php echo  $percentage . "% Complete"?>' class="progress">
                            <div class="progress-bar progress-bar-striped progress-bar-animated <?php echo $bg; ?>" role="progressbar" aria-valuenow="<?php echo $row['action_complete'] ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $row['action_percent'] ?>%"></div>
                        </div>
                        <br>
                        <b>Progress: </b><?php echo $percentage."% Complete"; ?>
                        <br>
                        <b>Time Status:</b>
                        <?php
                            if($row['action_status'] == 0 && $row['action_promise_date'] <= date("Y-m-d"))
                            {
                                echo "<i class='fa fa-times text-danger'></i>&nbsp;Late";
                            }   
                            elseif($row['action_status'] == 0 && $row['action_promise_date'] > date("Y-m-d"))
                            {
                                echo "<i class='fa fa-check text-success'></i>&nbsp;On Time";
                            }
                        ?>
                    </div>
                    <div class="col-lg-6">
                        <h4>Responsible</h4>
                        <?php 
                        $query = "SELECT * FROM action_responsible 
                        LEFT JOIN users ON action_responsible.a_responsible_user = users.user_id 
                        WHERE a_action_id = {$_GET['action_id']};";
                        $run = mysqli_query($connection, $query);
                        while($row = mysqli_fetch_array($run)):
                        ?>
                            <img class='img-fluid user-img rounded-circle' src="<?php echo $row['user_image'] ?>">&nbsp;&nbsp;<?php echo $row['user_name'] ?><br>
                        <?php endwhile;  ?>
                    </div>
                </div>
            </div>
    </div>
</div>    









<div class="col-lg-8">
<div class="card shadow mb-4 ">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Actions Overview</h6>
    </div>
        <div class="card-body">
            <div style="margin-top:-20px;" class="table-responsive">
            <table  style="font-size: 14px; vertical-align:middle; " class="table  order-column " id="dataTableExcel" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th style="width: 70%;">Update</th>
                    <th>Updated By</th>
                    <th>Update Date</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                    <?php 
                    $query = "SELECT * FROM action_updates
                    LEFT JOIN actions ON action_updates.a_update_action_id = actions.action_id
                    LEFT JOIN users ON action_updates.a_update_user = users.user_id 
                    WHERE action_updates.a_update_action_id = {$_GET['action_id']}";
                    $result = mysqli_query($connection, $query);
                    while($row = mysqli_fetch_array($result)):
                    ?>
                        <tr>
                            <td style="text-align: justify;"><?php echo nl2br($row['a_update_descr']);?></td>
                            <td><?php echo $row['user_name'];  ?></td>
                            <td><?php echo $row['a_update_date'];  ?></td>
                            
                            <td>
                                <a href='index.php?page=view_update&update_id=<?php echo $row['a_update_id']?>'  class=''  data-cat-name='{$row['user_name']}' data-cat-id='{$row['user_id']}'><i data-toggle='tooltip' data-placement='left' title='Edit Update' style='font-size: 20px; color:#b5b5b5' class='fas fa-edit options'></i></a>
                            </td>
                            
                        </tr>
                    <?php endwhile; ?>
                </tbody>                
            </table>
        </div>
    </div>
</div>
</div>    



<div class="col-lg-4">
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Files</h6>
    </div>
        <div class="card-body">
            <div style="margin-top:-20px;" class="table-responsive">
            <table  style="font-size: 14px; vertical-align:middle; " class="table  order-column " id="example1" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>File ID</th>
                    <th>File Name</th>
                    <th>Download</th>
                </tr>
                </thead>
                <tbody>
                    <?php 
                    $query = "SELECT * FROM action_files WHERE file_action_id = {$_GET['action_id']}";
                    $result = mysqli_query($connection, $query);
                    while($row = mysqli_fetch_array($result)):
                    ?>
                        <tr>
                            <td><?php echo $row['file_id'];  ?></td>
                            <td><?php echo $row['file_name'];  ?></td>
                            <td><a href="<?php echo $row['file_url'];  ?>" download="<?php echo $row['file_url'];  ?>"><i style="font-size: 16px;"  class="fa fa-download"></i></a></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>                
            </table>
        </div>
    </div>
</div>
</div>

</div>











<div class="row">
<div class="col-lg-6">
<div class="card shadow mb-4 ">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Updates By User</h6>
    </div>
        <div class="card-body">
            
            <div id="chart-container">
                <canvas id="graphCanvas"></canvas>
            </div>

        
    </div>
</div>
</div>    


<div class="col-lg-6">
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Updates By User</h6>
    </div>
        <div class="card-body">
            <div style="margin-top:-20px;" class="table-responsive">
            <table  style="font-size: 14px; vertical-align:middle; " class="table  order-column " id="example1" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>User</th>
                    <th>Updates</th>
                </tr>
                </thead>
                <tbody>
                    <?php 
                    $query = "SELECT COUNT(*) as cuenta, a_update_user, user_name, user_image FROM action_updates 
                    LEFT JOIN users ON action_updates.a_update_user = users.user_id WHERE a_update_action_id = {$_GET['action_id']} GROUP by users.user_name
                    ";
                    $result = mysqli_query($connection, $query);
                    while($row = mysqli_fetch_array($result)):
                    ?>
                        <tr>
                            <td><img class='img-fluid user-img rounded-circle' src="<?php echo $row['user_image'] ?>">&nbsp;&nbsp;<?php echo $row['user_name'] ?></td>
                            <td><?php echo $row['cuenta'];  ?></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>                
            </table>
        </div>
    </div>
</div>
</div>

</div>
