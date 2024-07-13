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


-- ActivityLogテーブルにテストデータを挿入
INSERT INTO ActivityLog (person_id, start_time, end_time, transport_method, departure_address, transit_address1, transit_address2, transit_address3, arrival_address, companion_present, companion_name, special_notes, last_update, delflag) VALUES
('T210011', '2024-07-01 08:00:00', '2024-07-01 09:00:00', '車', '大学', '駅前', NULL, NULL, '研究所', TRUE, '田中 一郎', '田中 一郎と同行', '2024-07-01 09:00:00', FALSE),
('T210011', '2024-07-01 09:30:00', '2024-07-01 10:30:00', '車', '大学', '駅前', NULL, NULL, '研究所', TRUE, '佐藤 花子', '佐藤 花子と同行', '2024-07-01 10:30:00', FALSE),
('T210011', '2024-07-01 11:00:00', '2024-07-01 12:00:00', '車', '大学', '駅前', NULL, NULL, '研究所', TRUE, '高橋 次郎', '高橋 次郎と同行', '2024-07-01 12:00:00', FALSE),

('S210001', '2024-07-02 10:00:00', '2024-07-02 11:00:00', '自転車', '自宅', NULL, NULL, NULL, '大学', TRUE, '山本 三郎', '山本 三郎と同行', '2024-07-02 11:00:00', FALSE),
('S210001', '2024-07-02 11:30:00', '2024-07-02 12:30:00', '自転車', '自宅', NULL, NULL, NULL, '大学', TRUE, '伊藤 四郎', '伊藤 四郎と同行', '2024-07-02 12:30:00', FALSE),
('S210001', '2024-07-02 13:00:00', '2024-07-02 14:00:00', '自転車', '自宅', NULL, NULL, NULL, '大学', TRUE, '鈴木 五郎', '鈴木 五郎と同行', '2024-07-02 14:00:00', FALSE),

('T220012', '2024-07-03 08:30:00', '2024-07-03 09:30:00', 'バス', '駅', 'ショッピングモール', NULL, NULL, '大学', TRUE, '中村 六郎', '中村 六郎と同行', '2024-07-03 09:30:00', FALSE),
('T220012', '2024-07-03 10:00:00', '2024-07-03 11:00:00', 'バス', '駅', 'ショッピングモール', NULL, NULL, '大学', TRUE, '小林 七郎', '小林 七郎と同行', '2024-07-03 11:00:00', FALSE),
('T220012', '2024-07-03 11:30:00', '2024-07-03 12:30:00', 'バス', '駅', 'ショッピングモール', NULL, NULL, '大学', TRUE, '斎藤 八郎', '斎藤 八郎と同行', '2024-07-03 12:30:00', FALSE),

('S220002', '2024-07-04 09:00:00', '2024-07-04 10:00:00', '徒歩', '自宅', NULL, NULL, NULL, '図書館', TRUE, '加藤 九郎', '加藤 九郎と同行', '2024-07-04 10:00:00', FALSE),
('S220002', '2024-07-04 10:30:00', '2024-07-04 11:30:00', '徒歩', '自宅', NULL, NULL, NULL, '図書館', TRUE, '久保 十郎', '久保 十郎と同行', '2024-07-04 11:30:00', FALSE),
('S220002', '2024-07-04 12:00:00', '2024-07-04 13:00:00', '徒歩', '自宅', NULL, NULL, NULL, '図書館', TRUE, '佐々木 一郎', '佐々木 一郎と同行', '2024-07-04 13:00:00', FALSE),

('T230013', '2024-07-05 08:00:00', '2024-07-05 08:45:00', '車', '自宅', 'コンビニ', NULL, NULL, '大学', TRUE, '田中 三郎', '田中 三郎と同行', '2024-07-05 08:45:00', FALSE),
('T230013', '2024-07-05 09:00:00', '2024-07-05 09:45:00', '車', '自宅', 'コンビニ', NULL, NULL, '大学', TRUE, '山本 四郎', '山本 四郎と同行', '2024-07-05 09:45:00', FALSE),
('T230013', '2024-07-05 10:00:00', '2024-07-05 10:45:00', '車', '自宅', 'コンビニ', NULL, NULL, '大学', TRUE, '高橋 五郎', '高橋 五郎と同行', '2024-07-05 10:45:00', FALSE),

('S230003', '2024-07-06 10:30:00', '2024-07-06 11:30:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '鈴木 六郎', '鈴木 六郎と同行', '2024-07-06 11:30:00', FALSE),
('S230003', '2024-07-06 12:00:00', '2024-07-06 13:00:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '中村 七郎', '中村 七郎と同行', '2024-07-06 13:00:00', FALSE),
('S230003', '2024-07-06 13:30:00', '2024-07-06 14:30:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '小林 八郎', '小林 八郎と同行', '2024-07-06 14:30:00', FALSE),

('T240014', '2024-07-07 07:45:00', '2024-07-07 08:45:00', '車', '自宅', '病院', NULL, NULL, '大学', TRUE, '斎藤 九郎', '斎藤 九郎と同行', '2024-07-07 08:45:00', FALSE),
('T240014', '2024-07-07 09:00:00', '2024-07-07 10:00:00', '車', '自宅', '病院', NULL, NULL, '大学', TRUE, '加藤 十郎', '加藤 十郎と同行', '2024-07-07 10:00:00', FALSE),
('T240014', '2024-07-07 10:30:00', '2024-07-07 11:30:00', '車', '自宅', '病院', NULL, NULL, '大学', TRUE, '久保 一郎', '久保 一郎と同行', '2024-07-07 11:30:00', FALSE),

('S240004', '2024-07-08 09:15:00', '2024-07-08 10:15:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '佐々木 二郎', '佐々木 二郎と同行', '2024-07-08 10:15:00', FALSE),
('S240004', '2024-07-08 10:45:00', '2024-07-08 11:45:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '田中 三郎', '田中 三郎と同行', '2024-07-08 11:45:00', FALSE),
('S240004', '2024-07-08 12:00:00', '2024-07-08 13:00:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '山本 四郎', '山本 四郎と同行', '2024-07-08 13:00:00', FALSE),

('T250015', '2024-07-09 08:15:00', '2024-07-09 09:15:00', '徒歩', '自宅', '駅', NULL, NULL, '大学', TRUE, '高橋 五郎', '高橋 五郎と同行', '2024-07-09 09:15:00', FALSE),
('T250015', '2024-07-09 09:30:00', '2024-07-09 10:30:00', '徒歩', '自宅', '駅', NULL, NULL, '大学', TRUE, '鈴木 六郎', '鈴木 六郎と同行', '2024-07-09 10:30:00', FALSE),
('T250015', '2024-07-09 11:00:00', '2024-07-09 12:00:00', '徒歩', '自宅', '駅', NULL, NULL, '大学', TRUE, '中村 七郎', '中村 七郎と同行', '2024-07-09 12:00:00', FALSE),

('S250005', '2024-07-10 10:00:00', '2024-07-10 11:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '小林 八郎', '小林 八郎と同行', '2024-07-10 11:00:00', FALSE),
('S250005', '2024-07-10 11:30:00', '2024-07-10 12:30:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '斎藤 九郎', '斎藤 九郎と同行', '2024-07-10 12:30:00', FALSE),
('S250005', '2024-07-10 13:00:00', '2024-07-10 14:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '加藤 十郎', '加藤 十郎と同行', '2024-07-10 14:00:00', FALSE),

('T260016', '2024-07-11 07:45:00', '2024-07-11 08:15:00', '車', '自宅', 'ガソリンスタンド', NULL, NULL, '大学', TRUE, '久保 一郎', '久保 一郎と同行', '2024-07-11 08:15:00', FALSE),
('T260016', '2024-07-11 08:30:00', '2024-07-11 09:00:00', '車', '自宅', 'ガソリンスタンド', NULL, NULL, '大学', TRUE, '佐々木 二郎', '佐々木 二郎と同行', '2024-07-11 09:00:00', FALSE),
('T260016', '2024-07-11 09:15:00', '2024-07-11 09:45:00', '車', '自宅', 'ガソリンスタンド', NULL, NULL, '大学', TRUE, '田中 三郎', '田中 三郎と同行', '2024-07-11 09:45:00', FALSE),

('S260006', '2024-07-12 09:30:00', '2024-07-12 10:30:00', '自転車', '自宅', '公園', NULL, NULL, '大学', TRUE, '山本 四郎', '山本 四郎と同行', '2024-07-12 10:30:00', FALSE),
('S260006', '2024-07-12 11:00:00', '2024-07-12 12:00:00', '自転車', '自宅', '公園', NULL, NULL, '大学', TRUE, '高橋 五郎', '高橋 五郎と同行', '2024-07-12 12:00:00', FALSE),
('S260006', '2024-07-12 12:30:00', '2024-07-12 13:30:00', '自転車', '自宅', '公園', NULL, NULL, '大学', TRUE, '鈴木 六郎', '鈴木 六郎と同行', '2024-07-12 13:30:00', FALSE),

('T270017', '2024-07-13 08:15:00', '2024-07-13 09:15:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '中村 七郎', '中村 七郎と同行', '2024-07-13 09:15:00', FALSE),
('T270017', '2024-07-13 09:30:00', '2024-07-13 10:30:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '小林 八郎', '小林 八郎と同行', '2024-07-13 10:30:00', FALSE),
('T270017', '2024-07-13 11:00:00', '2024-07-13 12:00:00', 'バス', '自宅', '駅', 'バス停', NULL, '大学', TRUE, '斎藤 九郎', '斎藤 九郎と同行', '2024-07-13 12:00:00', FALSE),

('S270007', '2024-07-14 10:45:00', '2024-07-14 11:45:00', '徒歩', '自宅', 'カフェ', NULL, NULL, '大学', TRUE, '加藤 十郎', '加藤 十郎と同行', '2024-07-14 11:45:00', FALSE),
('S270007', '2024-07-14 12:00:00', '2024-07-14 13:00:00', '徒歩', '自宅', 'カフェ', NULL, NULL, '大学', TRUE, '久保 一郎', '久保 一郎と同行', '2024-07-14 13:00:00', FALSE),
('S270007', '2024-07-14 13:30:00', '2024-07-14 14:30:00', '徒歩', '自宅', 'カフェ', NULL, NULL, '大学', TRUE, '佐々木 二郎', '佐々木 二郎と同行', '2024-07-14 14:30:00', FALSE),

('T280018', '2024-07-15 08:30:00', '2024-07-15 09:30:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '田中 三郎', '田中 三郎と同行', '2024-07-15 09:30:00', FALSE),
('T280018', '2024-07-15 10:00:00', '2024-07-15 11:00:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '山本 四郎', '山本 四郎と同行', '2024-07-15 11:00:00', FALSE),
('T280018', '2024-07-15 11:30:00', '2024-07-15 12:30:00', '自転車', '自宅', 'スーパー', NULL, NULL, '大学', TRUE, '高橋 五郎', '高橋 五郎と同行', '2024-07-15 12:30:00', FALSE),

('S280008', '2024-07-16 11:00:00', '2024-07-16 12:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '鈴木 六郎', '鈴木 六郎と同行', '2024-07-16 12:00:00', FALSE),
('S280008', '2024-07-16 12:30:00', '2024-07-16 13:30:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '中村 七郎', '中村 七郎と同行', '2024-07-16 13:30:00', FALSE),
('S280008', '2024-07-16 14:00:00', '2024-07-16 15:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '小林 八郎', '小林 八郎と同行', '2024-07-16 15:00:00', FALSE),

('T290019', '2024-07-17 08:45:00', '2024-07-17 09:45:00', '徒歩', '自宅', '図書館', NULL, NULL, '大学', TRUE, '斎藤 九郎', '斎藤 九郎と同行', '2024-07-17 09:45:00', FALSE),
('T290019', '2024-07-17 10:00:00', '2024-07-17 11:00:00', '徒歩', '自宅', '図書館', NULL, NULL, '大学', TRUE, '加藤 十郎', '加藤 十郎と同行', '2024-07-17 11:00:00', FALSE),
('T290019', '2024-07-17 11:30:00', '2024-07-17 12:30:00', '徒歩', '自宅', '図書館', NULL, NULL, '大学', TRUE, '久保 一郎', '久保 一郎と同行', '2024-07-17 12:30:00', FALSE),

('S290009', '2024-07-18 10:15:00', '2024-07-18 11:15:00', '自転車', '自宅', '駅', NULL, NULL, '大学', TRUE, '佐々木 二郎', '佐々木 二郎と同行', '2024-07-18 11:15:00', FALSE),
('S290009', '2024-07-18 11:30:00', '2024-07-18 12:30:00', '自転車', '自宅', '駅', NULL, NULL, '大学', TRUE, '田中 三郎', '田中 三郎と同行', '2024-07-18 12:30:00', FALSE),
('S290009', '2024-07-18 13:00:00', '2024-07-18 14:00:00', '自転車', '自宅', '駅', NULL, NULL, '大学', TRUE, '山本 四郎', '山本 四郎と同行', '2024-07-18 14:00:00', FALSE),

('T300020', '2024-07-19 08:00:00', '2024-07-19 08:45:00', '車', '自宅', '駅前', NULL, NULL, '大学', TRUE, '高橋 五郎', '高橋 五郎と同行', '2024-07-19 08:45:00', FALSE),
('T300020', '2024-07-19 09:00:00', '2024-07-19 09:45:00', '車', '自宅', '駅前', NULL, NULL, '大学', TRUE, '鈴木 六郎', '鈴木 六郎と同行', '2024-07-19 09:45:00', FALSE),
('T300020', '2024-07-19 10:00:00', '2024-07-19 10:45:00', '車', '自宅', '駅前', NULL, NULL, '大学', TRUE, '中村 七郎', '中村 七郎と同行', '2024-07-19 10:45:00', FALSE),

('S300010', '2024-07-20 09:45:00', '2024-07-20 10:45:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '小林 八郎', '小林 八郎と同行', '2024-07-20 10:45:00', FALSE),
('S300010', '2024-07-20 11:00:00', '2024-07-20 12:00:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '斎藤 九郎', '斎藤 九郎と同行', '2024-07-20 12:00:00', FALSE),
('S300010', '2024-07-20 12:30:00', '2024-07-20 13:30:00', 'バス', '自宅', 'バス停', NULL, NULL, '大学', TRUE, '加藤 十郎', '加藤 十郎と同行', '2024-07-20 13:30:00', FALSE);
