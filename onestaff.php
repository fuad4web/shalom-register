<?php
    include 'header.php';
?>
    <center style="margin-top: 13px;">
        <!-- <p style="color: #fff; background-color: blue; font-size: 30px;">Select Staff Members</p> -->
        <div class="pre-header">Select Staff Members </div>
    </center>

    <form class="my-5" method="POST">
        <div class="choose-form choose-date">
            
                <input type="date" class="form-control" name="first_date">
            
                <input type="date" class="form-control" name="second_date">
            
        </div>
        <center><input type="submit" name="select" value="Select Records" class="btn btn-info mt-4"></center>
    </form>

    
    <table class="table table-bordered table-striped mx-4 my-4" id="">
        <thead>
            <tr class='table-primary'>
                <th>S/N</th>
                <th>Staff Name</th>
                <th>Time In</th>
                <th>Time Out</th>
            </tr>
        </thead>
        <tbody>


    <?php
        if(isset($_POST['select'])) {
            $first_date = $getFromP->checkInput($_POST['first_date']);
            $second_date = $getFromP->checkInput($_POST['second_date']);
            
            if(empty($first_date) || empty($second_date)) {
                echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Choose Time</div>';
            } else {
                
                $select_shalom_staffs = $getFromP->select_cond_table($first_date, $second_date);
              
                $i = 0;
                foreach($select_shalom_staffs as $shalom_staff):
                    $i++;

                ?>

                    <tr>
                        <td> <input type="text" value="<?php echo $i ?>" class="form-control" style="border: none;" readonly> </td>
                        <td><input type="text" value="<?php echo $shalom_staff->firstname ?>" class="form-control" style="border: none;" readonly></td>
                        <td><input type="text" value="<?php 
                            if($shalom_staff->afternoon_signin == 0 && $shalom_staff->evening_signin == 0) {
                                echo $shalom_staff->morning_signin;
                            } elseif($shalom_staff->morning_signin == 0 && $shalom_staff->evening_signin == 0) {
                                echo $shalom_staff->afternoon_signin;
                            } else {
                                echo $shalom_staff->evening_signin;
                            }
                        ?>" class="form-control" style="border: none;" readonly></td>
                        <td><input type="text" value="<?php 
                            if($shalom_staff->afternoon_signout == 0 && $shalom_staff->evening_signout == 0) {
                                echo $shalom_staff->morning_signout;
                            } elseif($shalom_staff->morning_signout == 0 && $shalom_staff->evening_signout == 0) {
                                echo $shalom_staff->afternoon_signout;
                            } else {
                                echo $shalom_staff->evening_signout;
                            }
                        ?>" class="form-control" style="border: none;" readonly></td>
                    </tr>

                <?php
                    endforeach;
                ?>

                </tbody>
            </table>

                <?php
            }
        }
    ?>
        
<?php
    include 'footer.php';
?>
