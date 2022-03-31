
        <form action="" method="POST" class="top-form">
        <div class="card mb-5 head-contain">
            <h3 class="card-title text-center my-5">Daily Attenddance Record</h3>
            <center>
                <div class="row my-5">
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <select class="form-control custom-select select-form" name="weather" id="weather">
                            <option value="">Choose Period</option>
                            <option value="morning">Morning</option>
                            <option value="afternoon">Afternoon</option>
                            <option value="evening">Evening</option>
                        </select>
                    </div>
                
                    <div class="col-md-4">
                        <input type="text" class="form-control input-form" name="staff_id" placeholder="STAFF ID">
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <input type="submit" class="btn btn-success button-form" name="attend" value="Present" style="margin-bottom: 15px;">
            </center>
        </form>

        <?php 
            
            if(isset($_POST['attend'])) {
                $staff_id = $getFromP->checkInput($_POST['staff_id']);
                $weather = $getFromP->checkInput($_POST['weather']);
                $single_staffid = $getFromP->selectStaffId($staff_id);
                $cur_date = date('Y-m-d');
                $cr_date = strtotime(date('Y-m-d H:i:s'));
                echo '<script>alert("'.($cr_date/86400).'")</script>';
                $cur_time = date('H:i:s');
                
                if(empty($staff_id) || empty($weather)) {
                    echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Choose Time</div>';
                } else {

                    if($getFromP->check_staff_id($single_staffid, $cur_date, $weather) == false) {
                        if($weather == 'morning') {
                            $getFromP->create('unique_attendance', array('staff_id' => $single_staffid, 'morning_signin' => $cur_time,'moment' => $weather));
                            echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Morning, You\'ve Signedin Successfully</div>';
                        } elseif($weather == 'afternoon') {
                            $getFromP->create('unique_attendance', array('staff_id' => $single_staffid, 'afternoon_signin' => $cur_time, 'moment' => $weather));
                            echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Afternoon, You\'ve Signedin Successfully</div>';
                        } elseif($weather == 'evening') {
                            $getFromP->create('unique_attendance', array('staff_id' => $single_staffid, 'evening_signin' => $cur_time, 'moment' => $weather));
                            echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Evening, You\'ve Signedin Successfully</div>';
                        } else {
                            echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>You\'ve Signed In before</div>';
                        }

                    } elseif($getFromP->check_staff_id($single_staffid, $cur_date, $weather) == true) {

                        if($weather == 'morning') {
                            if($cur_time <= '18:00:00') {
                                $update = $getFromP->query ("UPDATE unique_attendance SET morning_signout = '$cur_time' where staff_id = $single_staffid AND todays_date = '$cur_date'");
                            } else {
                                $update = $getFromP->query ("UPDATE unique_attendance SET morning_signout = '18:00:00' where staff_id = $single_staffid AND todays_date = '$cur_date'");
                            }
                            if ($update->execute()) {
                                echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Morning, You\'ve Signed Out Successfully</div>';
                            }
                        } elseif($weather == 'afternoon') {
                            if($cur_time <= '18:00:00') {
                                $update = $getFromP->query ("UPDATE unique_attendance SET afternoon_signout = '$cur_time' where staff_id = '$single_staffid' AND todays_date = '$cur_date'");
                            } else {
                                $update = $getFromP->query ("UPDATE unique_attendance SET afternoon_signout = '18:00:00' where staff_id = '$single_staffid' AND todays_date = '$cur_date'");
                            }
                            if ($update->execute()) {
                                echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Afternoon, You\'ve Signed Out Successfully</div>';
                            }
                        } elseif($weather == 'evening') {
                            if($cur_time <= '18:00:00') {
                                $update = $getFromP->query ("UPDATE unique_attendance SET evening_signout = '$cur_time' where staff_id = '$single_staffid' AND todays_date = '$cur_date'");
                            } else {
                                $update = $getFromP->query ("UPDATE unique_attendance SET evening_signout = '18:00:00' where staff_id = '$single_staffid' AND todays_date = '$cur_date'");
                            }
                            if ($update->execute()) {
                                echo '<div class="alert alert-success alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Good Evening, You\'ve Signed Out Successfully</div>';
                            }
                        } else {
                            echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>You haven\'t SignedIn today</div>';
                        }

                    } else {
                        echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Which Planet are you from?</div>';
                    }
                }
            }

        ?>
