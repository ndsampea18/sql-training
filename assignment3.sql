USE TestingSystem;

-- question 1
insert into question (title, Question_Category_ID, type, level_ID, version, author_ID, create_time) 
values 
('Tính chất quan trọng nhất của lập trình hướng đối tượng trong Java', 1,	'Multiple-Choice', 2, 1, 12,  '2024-03-16 09:30:30'),
('Cách tạo index trong SQL', 6,	'Essay', 3, 1, 10, '2024-03-16 09:35:30'),
('4 tiêu chí chấm điểm Writing IELTS', 5, 'Essay', 4, 1, 13, '2024-03-16 09:37:30'),
('Hibernate khác với JPA như thế nào', 2, 'Essay', 3, 1, 5, '2024-03-17 09:39:30'),
('Nêu 4 access modifier trong Java', 1, 'Essay', 1, 2, 3, '2024-03-18 09:40:30'),
('Nêu điểm khác nhau giữa function và procedure', 6, 'Essay', 3, 2, 3, '2024-03-20 10:40:30'),
('Hiện tại hoàn thành được dùng khi nào', 5, 'Essay', 4, 2, 3, '2024-03-18 09:40:30'),
('Từ khóa được dùng để đánh dấu một biến là hằng số xong Java là từ khóa nào', 1, 'Multiple-Choice', 2, 2, 2, '2024-03-18 09:42:30'),
('Có mấy kiểu thể hiện của tính đa hình,cụ thể là gì', 1, 'Essay', 3, 1, 2, '2024-03-19 09:45:30'),
('Để lấy giá trị chung giữa 2 bảng dữ liệu ta sử dụng từ khóa nào', 1, 'Multiple-Choice', 4, 1, 14, '2024-03-20 09:50:30');

-- question 2
select count(id) as total, level_ID from question group by level_ID having level_ID = 4;

-- question 3
select question.title, answer.key from question inner join answer on question.id = answer.question_ID where answer.is_correct = 1;

-- question 4
select * from user where gender = 'M' and date_Of_Birth between '1981-01-15' and '1997-10-20';
