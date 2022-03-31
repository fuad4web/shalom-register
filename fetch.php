<?php

    include 'core/init.php';

    if(isset($_POST['valuess'])){

            $weather = $_POST['valuess'];
            $cur_date = date('Y-m-d');
            // echo '<script>alert("'. $cur_date.'")</script>';
            $all_morning = $getFromP->fetch_all_data($cur_date, $weather);
            $i = 0;
            $htmlo = '';
            
                if($weather == 'morning') {
                    foreach($all_morning as $morn):
                        $i++;
                        $htmlo .= "<tr class='table-success'>
                            <td><input type='text' class='form-control' value='".$i."' readonly></td>
                            <td><input type='text' class='form-control' value='".$morn->firstname."' readonly></td>
                            <td><input type='text' class='form-control' value='".$morn->morning_signin."' readonly></td>
                            <td><input type='text' class='form-control' value='".$morn->morning_signout."' readonly></td>
                        </tr>";
                    endforeach;
                } elseif($weather == 'afternoon') {
                    foreach($all_morning as $morn):
                        $i++;
                        $htmlo .= "<tr class='table-success'>
                            <td>".$i."</td>
                            <td>".$morn->firstname."</td>
                            <td>".$morn->afternoon_signin."</td>
                            <td>".$morn->afternoon_signout."</td>
                        </tr>";
                    endforeach;
                } else {
                    foreach($all_morning as $morn):
                        $i++;
                        $htmlo .= "<tr class='table-success'>
                            <td>".$i."</td>
                            <td>".$morn->firstname."</td>
                            <td>".$morn->evening_signin."</td>
                            <td>".$morn->evening_signout."</td>
                        </tr>";
                    endforeach;
                }
        
        echo $htmlo;
     
    }

?>
