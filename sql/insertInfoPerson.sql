USE DBproject;
INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('S210001', '1234', '営業部', '課長', 1234567890, 'user1@gmail.com', '佐藤 太郎'),
('S220001', '1234', '営業部', '係長', 2345678901, 'user2@outlook.com', '鈴木 花子'),
('S230001', '1234', '営業部', '部員', 3456789012, 'user3@yahoo.co.jp', '高橋 一郎'),
('S230002', '1234', '営業部', '部員', 4567890123, 'user4@gmail.com', '田中 次郎'),
('S230003', '1234', '営業部', '部員', 5678901234, 'user5@hotmail.com', '伊藤 三郎'),
('Y210001', '1234', '開発部', '課長', 6789012345, 'user6@gmail.com', '渡辺 四郎'),
('Y220001', '1234', '開発部', '係長', 7890123456, 'user7@gmail.com', '山本 五郎'),
('Y230001', '1234', '開発部', '部員', 8901234567, 'user8@gmail.com', '中村 六郎'),
('Y230002', '1234', '開発部', '部員', 9012345678, 'user9@gmail.com', '小林 七郎'),
('Y230003', '1234', '開発部', '部員', 1230984567, 'user10@gmail.com', '斎藤 八郎');


INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('T210001', 'abcd', '理学部', '教授', '0901122334', 'teacher1@university.com', '田中 一郎'),
('T210002', 'abcd', '理学部', '教授', '0902233445', 'teacher2@university.com', '山田 花子'),
('T210003', 'abcd', '理学部', '教授', '0903344556', 'teacher3@university.com', '佐藤 次郎'),
('T310001', 'abcd', '理学部', '準教授', '0904455667', 'teacher4@university.com', '鈴木 三郎'),
('T310002', 'abcd', '理学部', '准教授', '0905566778', 'teacher5@university.com', '高橋 四郎'),
('T310003', 'abcd', '理学部', '準教授', '0906677889', 'teacher6@university.com', '伊藤 五郎'),
('T220001', 'abcd', '工学部', '教授', '0907788990', 'teacher7@university.com', '中村 六郎'),
('T220002', 'abcd', '工学部', '教授', '0908899001', 'teacher8@university.com', '小林 七郎'),
('T320001', 'abcd', '工学部', '准教授', '0909900112', 'teacher9@university.com', '加藤 八郎'),
('T320002', 'abcd', '工学部', '準教授', '0901011122', 'teacher10@university.com', '松本 九郎');

INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES
('S122065', '1234', '理学部', '学部1年生', '0801122334', 'student1@university.com', '佐藤 花子'),
('S122151', '1234', '理学部', '学部1年生', '0802233445', 'student2@university.com', '山田 次郎'),
('S121092', '1234', '理学部', '学部2年生', '0803344556', 'student3@university.com', '高橋 三郎'),
('S121008', '1234', '理学部', '学部2年生', '0804455667', 'student4@university.com', '伊藤 四郎'),
('M122035', '1234', '理学部', '修士1年生', '0805566778', 'student5@university.com', '中村 五郎'),
('M122013', '1234', '理学部', '修士1年生', '0806677889', 'student6@university.com', '小林 六郎'),
('S220134', '1234', '工学部', '学部3年生', '0807788990', 'student7@university.com', '松本 七郎'),
('S219078', '1234', '工学部', '学部4年生', '0808899001', 'student8@university.com', '鈴木 八郎'),
('S219031', '1234', '工学部', '学部4年生', '0809900112', 'student9@university.com', '加藤 九郎'),
('M222010', '1234', '工学部', '修士2年生', '0801011122', 'student10@university.com', '久保 十郎');
---- PersonalInfoテーブルに管理者データを挿入
INSERT INTO PersonalInfo (person_id, pass, affiliation, position, phone_number, email, u_name) VALUES 
('S-USER01', '12345', '管理者', '管理者', '08077665656', 'superuser1@university.com', '管理者');