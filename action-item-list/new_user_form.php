<?php
require_once("settings/settings.php");
require_once("classes/Login.php");
require_once("settings/db.php");

require_once("views/includes/header.php");
require_once("./views/includes/header.php");


if (isset($registration)) {
    if ($registration->errors) {
        foreach ($registration->errors as $error) {
            echo $error;
        }
    }
    if ($registration->messages) {
        foreach ($registration->messages as $message) {
            echo $message;
        }
    }
}
?>

<style>
    .bg-gradient-blue {
        background-color: #01367C;
        background-image: linear-gradient(315deg, #01367C 0%, #1e3b70 74%);
        /* background-color: #213D79;
        background-image: repeating-linear-gradient(45deg, transparent, transparent 35px, rgba(255, 255, 255, .01) 35px, rgba(255, 255, 255, .01) 70px); */
    }


    .upload-btn-wrapper {
        position: relative;
        overflow: hidden;
        display: inline-block;
    }

    .btn {
        border: 2px solid white;
        color: white;
        background-color: transparent;
        padding: 8px 20px;
        border-radius: 8px;
        font-size: 20px;
        font-weight: bold;
    }

    .upload-btn-wrapper input[type=file] {
        font-size: 100px;
        position: absolute;
        left: 0;
        top: 0;
        opacity: 0;
    }

    .send-btn {
        width: 100%;
        margin: 0;
        color: #fff;
        background: #CF2037;
        border: none;
        padding: 10px;
        border-radius: 4px;
        border-bottom: 4px solid #901626;
        transition: all .2s ease;
        outline: none;
        text-transform: uppercase;
        font-weight: 700;
    }

    .send-btn:hover {
        background: #901626;
        color: #ffffff;
        transition: all .2s ease;
        cursor: pointer;
    }

    .send-btn:active {
        border: 0;
        transition: all .2s ease;
        outline: 0;
    }

    .send-btn:focus {
        outline: transparent;
    }

    .footer {
        padding: 0;
        position: absolute;
        width: 100%;
        bottom: 0 !important;
    }

    @media only screen and (max-width: 600px) {
        .footer {
            margin-top: 3rem;
            position: relative;
        }
    }
</style>

<div class="container-fluid " style="margin-top: 2rem;">
    <form method="POST" id="form-user" autocomplete="off" enctype="multipart/form-data">
        <a href="index.php" class="h6 font-weight-bold text-danger"><i class="fas fa-long-arrow-alt-left mr-2 text-danger"></i>Go back</a>
        <h1 class=" mb-4 mt-4 text-gray-800">User Registration</h1>
        <div class="col-lg-12 border-10">
            <div class="card shadow mb-4">
                <div id="profile-data">
                    <div class="row">
                        <div class="col-md-9 p-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First name</label>
                                        <input type="text" name="user_first_name" id="" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last name</label>
                                        <input type="text" name="user_last_name" id="" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>User name</label>
                                        <input type="text" name="user_name" id="" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" name="user_email" id="" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Area</label>
                                        <select name="user_areacode" id="" class="form-control">
                                            <option value="">Select area</option>
                                            <option value="+1">(Usa)+1</option>
                                            <option value="+52">(Mex)+52</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="text" name="user_phone" id="" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Employee number</label>
                                        <input type="text" name="user_employee_number" id="" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Department</label>
                                        <select name="user_department" id="" class="form-control">
                                            <option value="">Select department</option>
                                            <?php
                                            $query = "SELECT * FROM departments WHERE department_active = 1";
                                            $run = mysqli_query($connection, $query);
                                            while ($row = mysqli_fetch_array($run)) :
                                            ?>
                                                <option value="<?php echo $row['department_id'] ?>"><?php echo $row['department_name'] ?></option>
                                            <?php endwhile; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="user_password_new" id="" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Repeat password</label>
                                        <input type="password" name="user_password_repeat" id="" class="form-control" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 bg-gradient-blue p-0">
                            <div class="text-center mt-5">
                                <img style="width: 50%; height:auto; margin-bottom: 4rem;" id="blah" src="uploads/user_img/user.png" alt="your image" />
                                <div class="custom-file">
                                    <div class="upload-btn-wrapper">
                                        <button class="btn">Upload a image</button>
                                        <input type="file" name="myfile" name="user_image" id="imgInp" />
                                    </div>
                                </div>
                                <div class="footer">
                                    <button class="send-btn justify-content-end" id="edit_profile1" name="new_user" type="submit">Register user</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<?php require_once("./views/includes/footer.php"); ?>