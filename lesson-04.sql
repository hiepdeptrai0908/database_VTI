-- hàm tổng hợp: áp dụng với tất cả giá trị khác NULL
-- COUNT(*): đếm số dòng
-- COUNT(id): đếm số dòng mà id IS NOT NULL
-- SUM(): Tính tổng
-- MIN(): giá trị nhỏ nhất
-- MAX(): giá trị lớn nhất
-- AVG(): trung bình tổng

-- GROUP BY: phân chia thành các nhóm, chỉ in ra được thông tin chung
-- trong nhóm, không in ra thông tin riêng lẻ trong nhóm
SELECT duration, created_date,count(exam_id)
FROM exam
GROUP BY duration, created_date
ORDER BY duration, created_date;

-- Mệnh đề HAVING: điều kiện trên nhóm
-- #WHERE: điều kiện cá nhân
SELECT duration, created_date,count(exam_id)
FROM exam
GROUP BY duration, created_date
HAVING COUNT(exam_id) > 1
ORDER BY duration, created_date;

-- UPDATE: cập nhật dữ liệu
UPDATE department
SET department_name = "phòng chờ"
WHERE department_id = 1;

-- DELETE: xoá dữ liệu
DELETE FROM exam
WHERE  duration IS NULL;





