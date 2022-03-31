<?php 

    include 'core/init.php';

    $keylength = "3";
    $keyStr1 = "w27xyz012bc63jfr892d9efr345gzxh54pq67ast3454432uv8ijklm343ngp67no".time();
    $keyStr2 = "bsduty74nseuiy78w4hjsdh78wy4huijhsd74iiuihd78yw89uij4uieysd8yhwih".time();
    $keyStr3 = "0987654321".time();
    $randStr1 = substr(str_shuffle(strtoupper($keyStr1)), 0, $keylength);
    $randStr2 = substr(str_shuffle(strtoupper($keyStr2)), 0, $keylength);
    $randStr3 = substr(str_shuffle(strtoupper($keyStr3)), 0, $keylength);
    
    if(isset($_POST['shalom'])) {

        $firstname = $_POST['firstname'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $country = $_POST['country'];
        $soo = $_POST['soo'];
        $staffid = $_POST['staffid'];
        $lastname = $_POST['lastname'];
        $phonenumber = $_POST['phonenumber'];
        $dob = $_POST['dob'];
        $state = $_POST['state'];
        $gender = $_POST['gender'];
        $town = $_POST['town'];
        
        if(!empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname) || !empty($firstname)) {

            $firstname = $getFromP->checkInput($firstname);
            $email = $getFromP->checkInput($email);
            $address = $getFromP->checkInput($address);
            $country = $getFromP->checkInput($country);
            $soo = $getFromP->checkInput($soo);
            $staffid = $getFromP->checkInput($staffid);
            $lastname = $getFromP->checkInput($lastname);
            $phonenumber = $getFromP->checkInput($phonenumber);
            $dob = $getFromP->checkInput($dob);
            $state = $getFromP->checkInput($state);
            $gender = $getFromP->checkInput($gender);
            $town = $getFromP->checkInput($town);

            if(strlen($phonenumber) < 11) {
                echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Phone Number should not be more than 11 characters</div>';
            } else {
                if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Invalid EMail Address</div>';
                } elseif ($getFromP->checkMail($email) === true) {
                    echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Email Address Existing</div>';
                } else {
                    if($getFromP->check_staff_number($phonenumber) === true) {
                        echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Phone Number Existing</div>';
                    } else {
                        $getFromP->create('staff_reg', array('firstname'=>$firstname, 'email'=>$email, 'address'=>$address, 'country'=>$country, 'soo'=>$soo,'staffid'=>$staffid, 'lastname'=>$lastname, 'phonenumber'=>$phonenumber, 'dob'=>$dob, 'state'=>$state, 'gender'=>$gender, 'town'=>$town));
                        echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Registered Successfully</div>';
                    }
                }
            }
        } else {
            echo '<div class="alert alert-danger alert-dismissible text-center" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>All Fields required</div>';
        }
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form action="" method="POST">
        <center style="margin-top: 13px;">
            <p style="color: #fff; background-color: blue; font-size: 30px;">Staff Registration</p>
        </center>
        <div class="col-md-6">
            <div class="form-group">
                <label>First Name</label>
                <input class="form-control" placeholder="First-Name" type="text" name="firstname">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input class="form-control" placeholder="Email" type="email" name="email">
            </div>
            <div class="form-group">
                <label>Address</label>
                <input class="form-control" placeholder="Address" type="text" name="address">
            </div>
            <div class="form-group">
                <label>Country</label>
                <input class="form-control" placeholder="Country" type="text" name="country">
            </div>
            <div class="form-group">
                <label>State of Origin</label>
                <input class="form-control" placeholder="State of Origin" type="text" name="soo">
            </div>
            <div class="form-group">
                <label>Staff ID</label>
                <input class="form-control" value="<?=$randStr1.''.$randStr2.''.$randStr3?>" placeholder="Staff ID" type="text" name="staffid" readonly>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label>Last Name</label>
                <input class="form-control" placeholder="Last-Name" type="text" name="lastname">
            </div>
            <div class="form-group">
                <label>Phone Number</label>
                <input class="form-control" placeholder="Phone Number" type="number" name="phonenumber">
            </div>
            <div class="form-group">
                <label>Date of Birth</label>
                <input class="form-control" placeholder="Dirth of Birth" type="date" name="dob">
            </div>
            <div class="form-group">
                <label>Local Government</label>
                <input class="form-control" placeholder="State" type="text" name="state">
            </div>
            <div class="form-group">
                <label for="lastname">Gender</label>
                <select id="gender" name="gender" class="form-control" required>
                <option selected>Choose Gender</option>
                <option>Male</option>
                <option>Female</option>
                </select>
            </div>
            <div class="form-group">
                <label>Town</label>
                <input class="form-control" placeholder="Town" type="text" name="town">
            </div>
        </div>
            <center class="col-md-3">
                <input class="form-control btn btn-success" value="REGISTER" type="submit" name="shalom">
            </center>
    </form>
</body>
</html>
