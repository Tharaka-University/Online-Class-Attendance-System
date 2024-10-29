CREATE TABLE attendance (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    `check` VARCHAR(10) NOT NULL,
    registrationNumber VARCHAR(50) NOT NULL,
    unitCode VARCHAR(20) NOT NULL,
    unitTitle VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL
);
