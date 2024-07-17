-- ActivityLogテーブルにテストデータを挿入
USE DBproject;
INSERT INTO ActivityLog (person_id, start_time, end_time, transport_method, departure_address, transit_address1, transit_address2, transit_address3, arrival_address, companion_present, companion_name, special_notes, last_update, delflag) VALUES
('T210001', '2024-07-01 08:00:00', '2024-07-01 09:00:00', '車', '大学', '駅前', NULL, NULL, '研究所', TRUE, '田中 一郎', '田中 一郎と同行', '2024-07-01 09:00:00', FALSE),
('T210001', '2024-07-02 08:00:00', '2024-07-02 09:00:00', '車', '大学', '駅前', '公園', NULL, '研究所', TRUE, '小川 かつま', '小川かつまと同行', '2024-07-02 09:00:00', FALSE),
('T210001', '2024-07-03 08:00:00', '2024-07-03 09:00:00', '徒歩', '大学', '駅前', '町工場', '図書館', '研究所', TRUE, '田中 智久', '田中智久と同行', '2024-07-03 09:00:00', FALSE);
