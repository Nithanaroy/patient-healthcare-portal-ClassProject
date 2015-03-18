ALTER TABLE `se_project`.`doctor` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
CHANGE COLUMN `name` `lastname` VARCHAR(45) NULL ,
ADD COLUMN `username` VARCHAR(45) NULL AFTER `id`,
ADD COLUMN `firstName` VARCHAR(45) NULL AFTER `username`,
ADD COLUMN `speciality` VARCHAR(45) NULL AFTER `lastname`,
ADD COLUMN `successrate` VARCHAR(45) NULL AFTER `speciality`;
ALTER TABLE `se_project`.`doctor` 
ADD CONSTRAINT `doctor_id`
  FOREIGN KEY (`id`)
  REFERENCES `se_project`.`login` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
  INSERT INTO `se_project`.`login`
(`username`,
`pwd`,
`usertype`)
VALUES
('doctor1','doctor1','staff');

INSERT INTO `se_project`.`doctor`
(`username`,
`firstName`,
`lastname`,
`speciality`,
`successrate`,
`id`)
SELECT login.username, 'doctor1','doctor1','surgery general','99.5 percent', login.id From login
WHERE login.username='doctor1';


USE `se_project`;
DROP procedure IF EXISTS `create_doctor`;

DELIMITER $$
USE `se_project`$$
CREATE PROCEDURE `new_procedure` (IN username varchar(45), 
IN pwd varchar(45), IN firstname varchar(45), IN lastname varchar(45), 
IN speciality varchar(45), IN successrate varchar(45)
)
BEGIN
INSERT INTO `se_project`.`login`
(`username`,
`pwd`,
`usertype`)
SELECT username, pwd,'staff';

INSERT INTO `se_project`.`doctor`
(`username`,
`firstName`,
`lastname`,
`speciality`,
`successrate`,
`id`)
SELECT login.username, firstname,lastname,speciality,successrate, login.id From login
WHERE login.username=username;
END
$$

DELIMITER ;

call create_doctor('doctor2','doctor2','doctor2','','orthopaedist', '94 percent');
-- user name, pwd, firstname, lastname, specialist, successrate

