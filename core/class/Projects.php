<?php 
    class Projects {
        protected $pdo;

        function __construct($pdo) {
            $this->pdo = $pdo;
        }

        public function query ($stmt) {
            $stmt = $this->pdo->prepare ($stmt);
            return $stmt;
        }

        public function checkInput($var){
            $var = htmlspecialchars($var);
            $var = trim($var);
            $var = stripcslashes($var);
            return $var;
        }

    public function check_staff_id($staff_id, $cur_date, $weather){
        
        $stmt = $this->pdo->prepare("SELECT b.staff_id, b.moment, a.id, a.staffid FROM `staff_reg` AS a INNER JOIN `unique_attendance` AS b ON a.id = b.staff_id WHERE b.staff_id = :staffid AND moment = :weather AND todays_date LIKE '%$cur_date%'");
        $stmt->bindParam(":staffid", $staff_id, PDO::PARAM_STR);
        $stmt->bindParam(":weather", $weather, PDO::PARAM_STR);
        $stmt->execute();

        $count = $stmt->rowCount();

        if($count > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    
    public function selectStaffId($staff_id) {
        $stmt = $this->pdo->prepare("SELECT `id` FROM `staff_reg` WHERE `staffid` = :staffid");
        $stmt->bindParam(":staffid", $staff_id, PDO::PARAM_STR);
        $stmt->execute();
        $prep = $stmt->fetch(PDO::FETCH_OBJ);
        return @$prep->id;
    }


    public function fetch_all_data($cur_date, $weather) {
        $stmt = $this->pdo->prepare("SELECT * FROM `staff_reg` AS a INNER JOIN `unique_attendance` AS b ON a.id = b.staff_id WHERE b.todays_date = :date_in AND moment = :morning");
        $stmt->bindParam(":date_in", $cur_date, PDO::PARAM_STR);
        $stmt->bindParam(":morning", $weather, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function fetch_all_members() {
        $stmt = $this->pdo->prepare("SELECT * FROM `unique_attendance` AS a INNER JOIN `staff_reg` AS b ON b.id = a.staff_id");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

        public function select_cond_table($first_value, $second_value) {
            $stmt = $this->pdo->prepare("SELECT * FROM `staff_reg` AS a INNER JOIN `unique_attendance` AS b ON a.id = b.staff_id WHERE `todays_date` BETWEEN :firstCol AND :secondCol");
            $stmt->bindParam(":firstCol", $first_value, PDO::PARAM_STR);
            $stmt->bindParam(":secondCol", $second_value, PDO::PARAM_STR);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_OBJ);
        }


        public function checkMail($email){
            $stmt = $this->pdo->prepare("SELECT * FROM `teacher` WHERE `email` = :email");
            $stmt->bindParam(":email", $email, PDO::PARAM_STR);
            $stmt->execute();
    
            $user = $stmt->fetch(PDO::FETCH_OBJ);
            $count = $stmt->rowCount();
    
            if($count > 0) {
                return true;
            }else{
                return false;
            }
            
        }
        
        
        public function check_staff_number($phonenumber) {
            $stmt = $this->pdo->prepare("SELECT * FROM `staff_reg` WHERE `phone_number` = :phone_number");
            $stmt->bindParam(":phone_number", $phonenumber, PDO::PARAM_STR);
            $stmt->execute();
    
            $user = $stmt->fetch(PDO::FETCH_OBJ);
            $count = $stmt->rowCount();

            if($count > 0){
                return true;
            } else {
                return false;
            }
        }


        public function create($table, $fields = array()) {
            // remove the , from the key values in the fields(i.e the values input into databse)
            $columns = implode(',', array_keys($fields));
            $values = ':'.implode(', :', array_keys($fields));
            $sql = "INSERT INTO {$table} ({$columns}) VALUES ({$values})";
            if($stmt = $this->pdo->prepare($sql)) {
                foreach($fields as $key => $data) {
                    $stmt->bindValue(`:`.$key, $data);
                }
                $stmt->execute();
                return $this->pdo->lastInsertId();
            }
        }


        public function update($table, $staff_id, $cur_date,  $wheres, $ids, $fields = array()) {
            $columns = '';
            $i = 1;

            foreach($fields as $name => $value) {
                $columns .= "`{$name}` = :{$name}";
                if($i < count($fields)) {
                    $columns .= ', ';
                }
                $i++;
            }
            $sql = "UPDATE {$table} SET {$columns} WHERE `staff_id` = {$staff_id} AND `todays_date` = {$cur_date}";
          
            if($stmt = $this->pdo->prepare($sql)) {
                foreach($fields as $key => $value) {
                    $stmt->bindValue(':'.$key, $value);
                }
                var_dump($sql);
                $stmt -> execute();
            }
        }
        
    }
?>
