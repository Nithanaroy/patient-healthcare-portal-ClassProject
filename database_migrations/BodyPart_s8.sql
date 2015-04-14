SET SQL_SAFE_UPDATES = 0;

delete from body_part;

ALTER TABLE `se_project`.`body_part` 
ADD COLUMN `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `bodyparts_indices`;
