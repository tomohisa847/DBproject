-- ActivityLogテーブルにテストデータを挿入
INSERT INTO ActivityLog (person_id, start_time, end_time, transport_method, departure_address, transit_address1, transit_address2, transit_address3, arrival_address, companion_present, companion_name, special_notes, last_update, delflag) VALUES
('T210011', '2024-07-01 08:00:00', '2024-07-01 09:00:00', '車', '大学', '駅前', NULL, NULL, '研究所', FALSE, NULL, '朝の通勤', '2024-07-01 09:00:00', FALSE),
('S210001', '2024-07-01 10:00:00', '2024-07-01 11:00:00', '自転車', '自宅', NULL, NULL, NULL, '大学', FALSE, NULL, '通学', '2024-07-01 11:00:00', FALSE),
('T220012', '2024-07-02 08:30:00', '2024-07-02 09:30:00', 'バス', '駅', 'ショッピングモール', NULL, NULL, '大学', TRUE, '山田 花子', '同行者あり', '2024-07-02 09:30:00', FALSE),
('S220002', '2024-07-02 09:00:00', '2024-07-02 10:00:00', '徒歩', '自宅', NULL, NULL, NULL, '図書館', FALSE, NULL, '図書館で勉強', '2024-07-02 10:00:00', FALSE),
('T230013', '2024-07-03 08:00:00', '2024-07-03 08:45:00', '車', '自宅', 'コンビニ', NULL, NULL, '大学', TRUE, '佐藤 次郎', '途中で買い物', '2024-07-03 08:45:00', FALSE),
('S230003', '2024-07-03 10:30:00', '2024-07-03 11:30:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', FALSE, NULL, 'バスで通学', '2024-07-03 11:30:00', FALSE),
('T240014', '2024-07-04 07:45:00', '2024-07-04 08:45:00', '車', '自宅', '病院', NULL, NULL, '大学', TRUE, '鈴木 三郎', '病院に寄り道', '2024-07-04 08:45:00', FALSE),
('S240004', '2024-07-04 09:15:00', '2024-07-04 10:15:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', FALSE, NULL, '途中で買い物', '2024-07-04 10:15:00', FALSE),
('T250015', '2024-07-05 08:15:00', '2024-07-05 09:15:00', '徒歩', '自宅', '駅', NULL, NULL, '大学', TRUE, '高橋 四郎', '駅で待ち合わせ', '2024-07-05 09:15:00', FALSE),
('S250005', '2024-07-05 10:00:00', '2024-07-05 11:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', FALSE, NULL, 'バスで通学', '2024-07-05 11:00:00', FALSE);

-- ActivityLogテーブルにさらにテストデータを挿入
INSERT INTO ActivityLog (person_id, start_time, end_time, transport_method, departure_address, transit_address1, transit_address2, transit_address3, arrival_address, companion_present, companion_name, special_notes, last_update, delflag) VALUES
('T260016', '2024-07-06 08:00:00', '2024-07-06 08:30:00', '車', '自宅', 'ガソリンスタンド', NULL, NULL, '大学', FALSE, NULL, 'ガソリン補給', '2024-07-06 08:30:00', FALSE),
('S260006', '2024-07-06 09:30:00', '2024-07-06 10:30:00', '自転車', '自宅', '公園', NULL, NULL, '大学', TRUE, '小林 六郎', '公園で友人と会う', '2024-07-06 10:30:00', FALSE),
('T270017', '2024-07-07 08:15:00', '2024-07-07 09:15:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', FALSE, NULL, 'バスで通勤', '2024-07-07 09:15:00', FALSE),
('S270007', '2024-07-07 10:45:00', '2024-07-07 11:45:00', '徒歩', '自宅', 'カフェ', NULL, NULL, '大学', TRUE, '松本 七郎', 'カフェで待ち合わせ', '2024-07-07 11:45:00', FALSE),
('T280018', '2024-07-08 08:30:00', '2024-07-08 09:30:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', FALSE, NULL, '途中で買い物', '2024-07-08 09:30:00', FALSE),
('S280008', '2024-07-08 11:00:00', '2024-07-08 12:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', FALSE, NULL, 'バスで通学', '2024-07-08 12:00:00', FALSE),
('T290019', '2024-07-09 08:45:00', '2024-07-09 09:45:00', '徒歩', '自宅', '図書館', NULL, NULL, '大学', TRUE, '加藤 八郎', '図書館に寄り道', '2024-07-09 09:45:00', FALSE),
('S290009', '2024-07-09 10:15:00', '2024-07-09 11:15:00', '自転車', '自宅', '駅', NULL, NULL, '大学', FALSE, NULL, '自転車で通学', '2024-07-09 11:15:00', FALSE),
('T300020', '2024-07-10 08:00:00', '2024-07-10 08:45:00', '車', '自宅', '駅前', NULL, NULL, '大学', FALSE, NULL, '駅で待ち合わせ', '2024-07-10 08:45:00', FALSE),
('S300010', '2024-07-10 09:45:00', '2024-07-10 10:45:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', FALSE, NULL, 'バスで通学', '2024-07-10 10:45:00', FALSE);