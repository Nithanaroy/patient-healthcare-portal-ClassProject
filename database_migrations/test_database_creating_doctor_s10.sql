INSERT INTO `se_project_test`.`login`
(`username`,
`pwd`,
`usertype`)
SELECT 'doctor1', 'doctor1','staff';

INSERT INTO `se_project_test`.`doctor`
(`username`,
`firstName`,
`lastname`,
`speciality`,
`successrate`,
`id`)
SELECT login.username, 'doctor1','doctor1','surgen','100%', login.id From login
WHERE login.username='doctor1';

INSERT INTO `se_project_test`.`login`
(`username`,
`pwd`,
`usertype`)
SELECT 'doctor2', 'doctor2','staff';

INSERT INTO `se_project_test`.`doctor`
(`username`,
`firstName`,
`lastname`,
`speciality`,
`successrate`,
`id`)
SELECT login.username, 'doctor2','doctor2','surgen','100%', login.id From login
WHERE login.username='doctor2';

commit;