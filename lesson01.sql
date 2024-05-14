create database lesson01;

use lesson01;
drop table customer;
create table customer (
id int primary key auto_increment,
email varchar(100) unique not null
);

create table customer (
id int auto_increment,
email varchar(100),
primary key (id, email)
);

insert into customer (email) value ("hiep");
insert into customer (email) value (NULL);

DROP TABLE IF EXISTS department;
CREATE TABLE department (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
--
DROP TABLE IF EXISTS account;
CREATE TABLE account (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50),
    department_id INT
);

-- khoá ngoại
DROP TABLE IF EXISTS department;
CREATE TABLE department (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
--
DROP TABLE IF EXISTS account;
CREATE TABLE account (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id) ON UPDATE CASCADE ON DELETE CASCADE -- set null ON DELETE SET NULL
);
--
INSERT INTO department (id, name)
VALUES (100, "Bảo vệ");
INSERT INTO account (full_name, department_id)
VALUES ("Nguyễn Văn Khoa", 1000);
-- 