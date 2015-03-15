CREATE TABLE `se_project`.`login` (
  `username` VARCHAR(45) NOT NULL,
  `pwd` VARCHAR(45) NOT NULL,
  `usertype` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC));

ALTER TABLE `se_project`.`login` 
ADD COLUMN `id` INT(11) NOT NULL AFTER `usertype`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);

ALTER TABLE `se_project`.`login` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC);
  
ALTER TABLE patient
DROP COLUMN pwd;

ALTER TABLE `se_project`.`patient` 
CHANGE COLUMN `username` `username` VARCHAR(45) NOT NULL ;

ALTER TABLE `se_project`.`patient` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`username`);

ALTER TABLE `se_project`.`patient` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL ;

ALTER TABLE `se_project`.`patient` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);

ALTER TABLE `se_project`.`patient` 
ADD CONSTRAINT `patient_id`
  FOREIGN KEY (`id`)
  REFERENCES `se_project`.`login` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

INSERT INTO login (username,pwd,usertype)VALUES ('ram','abc','patient');

INSERT INTO patient (id,username, firstname, lastname, gender, email, mobilenumber, address, zipcode,age) VALUES ('1','ram','ram', 'sri','Male','ram@asu.edu','420','tempe','85281','25')
  
commit;

