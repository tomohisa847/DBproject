-- PersonalInfoテーブルにサンプルデータを挿入
INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('S200001', '1234', '営業部', '部長', 1234567890, 'user1@gmail.com', '佐藤 太郎'),
('K210002', '1234', '経理部', '課長', 2345678901, 'user2@outlook.com', '鈴木 花子'),
('Y220003', '1234', '開発部', '主任', 3456789012, 'user3@yahoo.co.jp', '高橋 一郎'),
('S230004', '1234', '営業部', '部員', 4567890123, 'user4@gmail.com', '田中 次郎'),
('K240005', '1234', '経理部', '部員', 5678901234, 'user5@hotmail.com', '伊藤 三郎'),
('Y250006', '1234', '開発部', '係長', 6789012345, 'user6@gmail.com', '渡辺 四郎'),
('S260007', '1234', '営業部', '部員', 7890123456, 'user7@gmail.com', '山本 五郎'),
('K270008', '1234', '経理部', '課長', 8901234567, 'user8@gmail.com', '中村 六郎'),
('Y280009', '1234', '開発部', '主任', 9012345678, 'user9@gmail.com', '小林 七郎'),
('S290010', '1234', '営業部', '部員', 1230984567, 'user10@gmail.com', '斎藤 八郎');


-- PersonalInfoテーブルに教員データを挿入
INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('T210011', 'abcd', '数学科', '教授', '0901122334', 'teacher1@university.com', '田中 一郎'),
('T220012', 'abcd', '物理科', '准教授', '0902233445', 'teacher2@university.com', '山田 花子'),
('T230013', 'abcd', '化学科', '講師', '0903344556', 'teacher3@university.com', '佐藤 次郎'),
('T240014', 'abcd', '生物科', '教授', '0904455667', 'teacher4@university.com', '鈴木 三郎'),
('T250015', 'abcd', '地学科', '准教授', '0905566778', 'teacher5@university.com', '高橋 四郎'),
('T260016', 'abcd', '数学科', '講師', '0906677889', 'teacher6@university.com', '伊藤 五郎'),
('T270017', 'abcd', '物理科', '教授', '0907788990', 'teacher7@university.com', '中村 六郎'),
('T280018', 'abcd', '化学科', '准教授', '0908899001', 'teacher8@university.com', '小林 七郎'),
('T290019', 'abcd', '生物科', '講師', '0909900112', 'teacher9@university.com', '加藤 八郎'),
('T300020', 'abcd', '地学科', '教授', '0901011122', 'teacher10@university.com', '松本 九郎');

-- PersonalInfoテーブルに学生データを挿入
INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('S210001', '1234', '数学科', '学生', '0801122334', 'student1@university.com', '佐藤 花子'),
('S220002', '1234', '物理科', '学生', '0802233445', 'student2@university.com', '山田 次郎'),
('S230003', '1234', '化学科', '学生', '0803344556', 'student3@university.com', '高橋 三郎'),
('S240004', '1234', '生物科', '学生', '0804455667', 'student4@university.com', '伊藤 四郎'),
('S250005', '1234', '地学科', '学生', '0805566778', 'student5@university.com', '中村 五郎'),
('S260006', '1234', '数学科', '学生', '0806677889', 'student6@university.com', '小林 六郎'),
('S270007', '1234', '物理科', '学生', '0807788990', 'student7@university.com', '松本 七郎'),
('S280008', '1234', '化学科', '学生', '0808899001', 'student8@university.com', '鈴木 八郎'),
('S290009', '1234', '生物科', '学生', '0809900112', 'student9@university.com', '加藤 九郎'),
('S300010', '1234', '地学科', '学生', '0801011122', 'student10@university.com', '久保 十郎');