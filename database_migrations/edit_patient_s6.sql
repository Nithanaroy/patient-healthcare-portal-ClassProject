SET SQL_SAFE_UPDATES = 0;

SELECT * FROM `se_project`.`patient`  
WHERE `username` = `username`

ALTER TABLE `se_project`.`patient`

CHANGE COLUMN `pwd` `pwd` VARCHAR(20) NOT NULL AFTER `username`,
CHANGE COLUMN `lastname` `lastname` VARCHAR(45) NULL ,
CHANGE COLUMN `gender` `gender` VARCHAR(10) NOT NULL ,
CHANGE COLUMN `email` `email` VARCHAR(50) NOT NULL ,
CHANGE COLUMN `mobilenumber` `mobilenumber` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `age` `age` VARCHAR(3) NOT NULL ,
 
INSERT INTO edit_patient (username,pwd,lastname,gender,email,mobilenumber,age)VALUES ('patient');

select * from patient;
