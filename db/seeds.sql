INSERT INTO department (dept_name)
VALUES ('Sales'),
       ('Admin');

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Manager", 120000.00, 1),
       ("Sales Rep", 70000.00, 1),
       ("Receptionist", 50000.00, 2),
       ("Senior Accountant", 75000.00, 2),
       ("Customer Service", 60000.00, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Scott", 1, null),
       ("Dwight", "Schrute", 2, 1),
       ("Jim", "Halpert", 2, 2),
       ("Pam", "Beesly", 3, 3),
       ("Angela", "Martin", 4, 3),
       ("Kelly", "Kapoor", 5, 3);