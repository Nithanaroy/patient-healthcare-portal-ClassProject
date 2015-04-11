CREATE TABLE `se_project`.`esas` (
  `username` VARCHAR(45) NOT NULL,
  `pain` INT NULL,
  `tiredness` INT NULL DEFAULT 0,
  `nausea` INT NULL DEFAULT 0,
  `depression` INT NULL DEFAULT 0,
  `anxiety` INT NULL DEFAULT 0,
  `drowsiness` INT NULL DEFAULT 0,
  `appetite` INT NULL DEFAULT 0,
  `wellbeing` INT NULL DEFAULT 0,
  `breath` INT NULL DEFAULT 0);

  ALTER TABLE `se_project`.`esas` 
ADD COLUMN `date` DATE NOT NULL AFTER `breath`;

ALTER TABLE `se_project`.`esas` 
CHANGE COLUMN `pain` `pain` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `tiredness` `tiredness` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `nausea` `nausea` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `depression` `depression` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `anxiety` `anxiety` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `drowsiness` `drowsiness` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `appetite` `appetite` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `wellbeing` `wellbeing` VARCHAR(45) NULL DEFAULT '0' ,
CHANGE COLUMN `breath` `breath` VARCHAR(45) NULL DEFAULT '0' ;
