<?php
    include 'header.php';
?>
    <center style="margin-top: 13px;">
        <!-- <p style="color: #fff; background-color: blue; font-size: 30px;">Select Staff Members</p> -->
        <div class="pre-header">Staff Members Time </div>
    </center>
    
    <table class="table table-bordered table-striped mx-4 my-4" id="">
        <thead>
            <tr class='table-primary'>
                <th>S/N</th>
                <th>Staff Name</th>
                <th>Time In</th>
                <th>Time Out</th>
                <th>date</th>
                <th>Hours Used</th>
            </tr>
        </thead>
        <tbody>


            <?php
                $select_all_shalom_staffs = $getFromP->fetch_all_members();
              
                $i = 0;
                foreach($select_all_shalom_staffs as $all_shalom_staff):
                    $i++;
            ?>

                    <tr>
                        <td> <input type="text" value="<?php echo $i ?>" class="form-control" style="border: none;" readonly> </td>

                        <td><input type="text" value="<?php echo $all_shalom_staff->firstname ?>" class="form-control" style="border: none;" readonly></td>

                        <td><input type="text" value="<?php 
                            if($all_shalom_staff->afternoon_signin == 0 && $all_shalom_staff->evening_signin == 0) {
                                echo $all_shalom_staff->morning_signin;
                            } elseif($all_shalom_staff->morning_signin == 0 && $all_shalom_staff->evening_signin == 0) {
                                echo $all_shalom_staff->afternoon_signin;
                            } else {
                                echo $all_shalom_staff->evening_signin;
                            }
                        ?>" class="form-control" style="border: none;" readonly></td>

                        <td><input type="text" value="<?php 
                            if($all_shalom_staff->afternoon_signout == 0 && $all_shalom_staff->evening_signout == 0) {
                                echo $all_shalom_staff->morning_signout;
                            } elseif($all_shalom_staff->morning_signout == 0 && $all_shalom_staff->evening_signout == 0) {
                                echo $all_shalom_staff->afternoon_signout;
                            } else {
                                echo $all_shalom_staff->evening_signout;
                            }
                        ?>" class="form-control" style="border: none;" readonly></td>

                        <td><input type="text" class="form-control" value="<?= $all_shalom_staff->todays_date ?>" readonly></td>

                        <td><input type="text" value="<?php 
                            if($all_shalom_staff->afternoon_signin == 0 && $all_shalom_staff->evening_signin == 0) {
                                $morning_jhor = $all_shalom_staff->morning_signout;
                                $morning_na = $all_shalom_staff->morning_signin;
                                $hours = floor(((strtotime($morning_jhor) - strtotime($morning_na))/3600));
                                $minutes = (abs(strtotime($morning_jhor) - strtotime($morning_na)))/60;
                                
                                echo abs($hours).'hours '.abs($minutes%60).'minutes';

                            } elseif($all_shalom_staff->morning_signin == 0 && $all_shalom_staff->evening_signin == 0) {
                                $afternoon_jhor = $all_shalom_staff->afternoon_signout;
                                $afternoon_na = $all_shalom_staff->afternoon_signin;
                                $hours = floor(((strtotime($afternoon_jhor) - strtotime($afternoon_na))/3600));
                                $minutes = (abs(strtotime($afternoon_jhor) - strtotime($afternoon_na)))/60;
                                
                                echo abs($hours).'hours '.abs($minutes%60).'minutes';

                            } else {
                                $evening_jhor = $all_shalom_staff->evening_signout;
                                $evening_na = $all_shalom_staff->evening_signin;
                                $hours = floor(((strtotime($evening_jhor) - strtotime($evening_na))/3600));
                                $minutes = (abs(strtotime($evening_jhor) - strtotime($evening_na)))/60;
                                
                                echo abs($hours).'hours '.abs($minutes%60).'minutes';
                            }
                        ?>" class="form-control" style="border: none;" readonly></td>
                    </tr>

                <?php
                    endforeach;
                ?>

                </tbody>
            </table>
        
<?php
    include 'footer.php';
?>
