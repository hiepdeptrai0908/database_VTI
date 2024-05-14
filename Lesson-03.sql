-- Mệnh đề SLECT
select current_date as "today", now() as "now";

-- Mệnh đề FROM
SELECT department_id, department_name FROM department;
-- *: tất cả
SELECT * FROM department;

-- Mệnh đề WHERE : điều kiện
-- Toán tử: >, >=, <, <=, =, != (<>)
-- Logic AND, OR: và, hoặc
SELECT * FROM department WHERE department_id > 3 and department_id < 6;

-- Toán tử BETWEEN ... AND
SELECT * FROM department WHERE department_id BETWEEN 3 AND 5;

-- Toán tử IN
SELECT * FROM department WHERE department_id IN ( 1, 5, 2);

/* Toán tử LIKE
	_: đại diện cho 1 ký tự 
	%: đại diện cho 0 hoặc nhiều ký tự 
*/
SELECT * FROM department WHERE department_name LIKE "%i%";

-- IS NULL, IS NOT NULL
SELECT * FROM department WHERE department_name IS NOT NULL;

-- Mệnh đề LIMIT: giới hạn số lượng trả về
SELECT * FROM department WHERE department_id > 4 LIMIT 5;
SELECT * FROM department 
LIMIT 3,3; -- vị trí bắt đầu, số lượng lấy

use assignment_03;
-- SUBSTRING_INDEX(): lấy ra ký tự mong muốn
SELECT SUBSTRING_INDEX("Triệu Quang Hiệp", " ", -1) LIKE "D%o";
SELECT * FROM `account` WHERE full_name LIKE "D%o";
SELECT * FROM `account` WHERE SUBSTRING_INDEX(full_name, " ", -1) LIKE "D%o";

-- ORDER BY: sắp xếp
/*
	ASC: tăng dần
    DESC: giảm dần
*/
SELECT * FROM exam ORDER BY duration DESC, created_date DESC;