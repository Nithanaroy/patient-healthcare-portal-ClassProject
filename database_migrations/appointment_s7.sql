 CREATE TABLE `se_project`.`appointment` (
 `username` INT NOT NULL,
 `appointmen_time` VARCHAR(45) NOT NULL,
 `doctor_name` VARCHAR(45) NOT NULL,
 PRIMARY KEY (`username`));
 
  ALTER TABLE `se_project`.`appointment`
CHANGE COLUMN `username` `username` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `appointmen_time` `appointment_time` VARCHAR(45) NOT NULL ;

ALTER TABLE `se_project`.`appointment`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`username`, `doctor_name`);