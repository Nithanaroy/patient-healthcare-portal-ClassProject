SET SQL_SAFE_UPDATES = 0;

delete  from  patient;

ALTER TABLE patient
ADD username varchar(20),
ADD pwd varchar(20),
ADD gender varchar(10),
ADD email varchar(50),
ADD mobilenumber varchar(20),
ADD address varchar(200),
ADD zipcode varchar(20),
ADD age varchar(3);



ALTER TABLE `se_project`.`patient` 
CHANGE COLUMN `username` `username` VARCHAR(20) NOT NULL AFTER `id`,
CHANGE COLUMN `pwd` `pwd` VARCHAR(20) NOT NULL AFTER `username`,
CHANGE COLUMN `lastname` `lastname` VARCHAR(45) NULL ,
CHANGE COLUMN `gender` `gender` VARCHAR(10) NOT NULL ,
CHANGE COLUMN `email` `email` VARCHAR(50) NOT NULL ,
CHANGE COLUMN `mobilenumber` `mobilenumber` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `age` `age` VARCHAR(3) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `username`);

ALTER TABLE `se_project`.`patient` 
CHANGE COLUMN `age` `age` VARCHAR(3) NOT NULL AFTER `gender`;

ALTER TABLE `se_project`.`patient` 
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC),
ADD UNIQUE INDEX `username_UNIQUE` (`username` ASC);

INSERT INTO patient (username, pwd, firstname, lastname, gender, email, mobilenumber, address, zipcode,age) VALUES ('samba','abcdefgh','samba', 'N','Male','samba@asu.edu','480','tempe','85281','50');

select * from patient;

