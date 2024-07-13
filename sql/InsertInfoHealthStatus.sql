-- HealthStatusテーブルにサンプルデータを挿入 (各ユーザーに対して4日分のデータ)
INSERT INTO HealthStatus (person_id, temperature, joint_pain, fatigue, headache, sore_throat, shortness_of_breath, cough_sneeze, nausea_vomiting, stomach_ache_diarrhea, taste_disorder, smell_disorder, health_date, delflag) VALUES
('T210011', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),

('T220012', '37.0', true, false, true, false, false, true, false, false, false, false, '2024-08-01', false),
('T220012', '37.1', false, true, true, false, false, true, false, false, false, false, '2024-08-02', false),
('T220012', '37.2', true, false, false, true, false, true, false, false, false, false, '2024-08-03', false),
('T220012', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('T230013', '36.8', false, true, false, true, false, false, true, false, false, false, '2024-08-01', false),
('T230013', '36.9', true, false, true, false, false, true, false, false, false, false, '2024-08-02', false),
('T230013', '37.0', false, true, false, true, false, false, true, false, false, false, '2024-08-03', false),
('T230013', '37.1', true, true, false, false, true, false, false, true, false, false, '2024-08-04', false),

('T240014', '37.2', true, true, false, false, true, false, false, true, false, false, '2024-08-01', false),
('T240014', '37.3', false, true, true, false, true, false, false, true, false, false, '2024-08-02', false),
('T240014', '37.4', true, false, false, true, false, false, true, false, false, false, '2024-08-03', false),
('T240014', '37.5', true, true, false, true, false, false, true, false, false, false, '2024-08-04', false),

('T250015', '36.7', false, false, true, true, false, false, true, false, true, false, '2024-08-01', false),
('T250015', '36.8', true, false, false, true, false, false, true, false, true, false, '2024-08-02', false),
('T250015', '36.9', false, true, true, false, true, false, false, true, false, true, '2024-08-03', false),
('T250015', '37.0', true, false, false, true, false, false, true, false, true, false, '2024-08-04', false),

('T260016', '37.1', true, false, false, true, false, false, false, true, false, true, '2024-08-01', false),
('T260016', '37.2', false, true, false, true, false, false, false, true, false, true, '2024-08-02', false),
('T260016', '37.3', true, false, true, false, false, false, false, true, false, true, '2024-08-03', false),
('T260016', '37.4', true, true, false, false, true, false, false, false, true, false, '2024-08-04', false),

('T270017', '36.6', false, true, true, false, true, true, false, false, false, true, '2024-08-01', false),
('T270017', '36.7', true, false, true, false, true, true, false, false, false, true, '2024-08-02', false),
('T270017', '36.8', false, true, false, true, true, false, false, false, false, true, '2024-08-03', false),
('T270017', '36.9', true, true, true, false, false, true, false, false, false, true, '2024-08-04', false),

('T280018', '37.3', true, true, false, false, false, true, true, false, false, false, '2024-08-01', false),
('T280018', '37.4', false, true, true, false, true, true, true, false, false, false, '2024-08-02', false),
('T280018', '37.5', true, false, false, true, false, false, true, true, false, false, '2024-08-03', false),
('T280018', '37.6', true, true, true, false, true, false, false, true, false, false, '2024-08-04', false),

('T290019', '36.9', false, false, true, true, false, false, false, true, true, false, '2024-08-01', false),
('T290019', '37.0', true, false, false, true, false, false, false, true, true, false, '2024-08-02', false),
('T290019', '37.1', false, true, true, false, true, false, false, false, true, true, '2024-08-03', false),
('T290019', '37.2', true, false, true, false, false, true, false, false, true, true, '2024-08-04', false),

('T300020', '37.0', true, false, false, false, true, false, false, false, false, true, '2024-08-01', false),
('T300020', '37.1', false, true, false, false, true, false, false, false, true, false, '2024-08-02', false),
('T300020', '37.2', true, false, true, false, false, false, false, false, true, true, '2024-08-03', false),
('T300020', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S210001', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),
('S210001', '36.6', true, false, false, false, false, false, false, false, false, false, '2024-08-02', false),
('S210001', '36.7', false, true, false, false, false, false, false, false, false, false, '2024-08-03', false),
('S210001', '36.8', true, true, false, false, false, false, false, false, false, false, '2024-08-04', false),

('S220002', '37.0', true, false, true, false, false, true, false, false, false, false, '2024-08-01', false),
('S220002', '37.1', false, true, true, false, false, true, false, false, false, false, '2024-08-02', false),
('S220002', '37.2', true, false, false, true, false, true, false, false, false, false, '2024-08-03', false),
('S220002', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S230003', '36.8', false, true, false, true, false, false, true, false, false, false, '2024-08-01', false),
('S230003', '36.9', true, false, true, false, false, true, false, false, false, false, '2024-08-02', false),
('S230003', '37.0', false, true, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S230003', '37.1', true, true, false, false, true, false, false, true, false, false, '2024-08-04', false),

('S240004', '37.2', true, true, false, false, true, false, false, true, false, false, '2024-08-01', false),
('S240004', '37.3', false, true, true, false, true, false, false, true, false, false, '2024-08-02', false),
('S240004', '37.4', true, false, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S240004', '37.5', true, true, false, true, false, false, true, false, false, false, '2024-08-04', false),

('S250005', '36.7', false, false, true, true, false, false, true, false, true, false, '2024-08-01', false),
('S250005', '36.8', true, false, false, true, false, false, true, false, true, false, '2024-08-02', false),
('S250005', '36.9', false, true, true, false, true, false, false, true, false, true, '2024-08-03', false),
('S250005', '37.0', true, false, false, true, false, false, true, false, true, false, '2024-08-04', false),

('S260006', '37.1', true, false, false, true, false, false, false, true, false, true, '2024-08-01', false),
('S260006', '37.2', false, true, false, true, false, false, false, true, false, true, '2024-08-02', false),
('S260006', '37.3', true, false, true, false, false, false, false, true, false, true, '2024-08-03', false),
('S260006', '37.4', true, true, false, false, true, false, false, false, true, false, '2024-08-04', false),

('S270007', '36.6', false, true, true, false, true, true, false, false, false, true, '2024-08-01', false),
('S270007', '36.7', true, false, true, false, true, true, false, false, false, true, '2024-08-02', false),
('S270007', '36.8', false, true, false, true, true, false, false, false, false, true, '2024-08-03', false),
('S270007', '36.9', true, true, true, false, false, true, false, false, false, true, '2024-08-04', false),

('S280008', '37.3', true, true, false, false, false, true, true, false, false, false, '2024-08-01', false),
('S280008', '37.4', false, true, true, false, true, true, true, false, false, false, '2024-08-02', false),
('S280008', '37.5', true, false, false, true, false, false, true, true, false, false, '2024-08-03', false),
('S280008', '37.6', true, true, true, false, true, false, false, true, false, false, '2024-08-04', false),

('S290009', '36.9', false, false, true, true, false, false, false, true, true, false, '2024-08-01', false),
('S290009', '37.0', true, false, false, true, false, false, false, true, true, false, '2024-08-02', false),
('S290009', '37.1', false, true, true, false, true, false, false, false, true, true, '2024-08-03', false),
('S290009', '37.2', true, false, true, false, false, true, false, false, true, true, '2024-08-04', false),

('S300010', '37.0', true, false, false, false, true, false, false, false, false, true, '2024-08-01', false),
('S300010', '37.1', false, true, false, false, true, false, false, false, true, false, '2024-08-02', false),
('S300010', '37.2', true, false, true, false, false, false, false, false, true, true, '2024-08-03', false),
('S300010', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S-USER01', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),
('S-USER01', '36.6', true, false, false, false, false, false, false, false, false, false, '2024-08-02', false),
('S-USER01', '36.7', false, true, false, false, false, false, false, false, false, false, '2024-08-03', false),
('S-USER01', '36.8', true, true, false, false, false, false, false, false, false, false, '2024-08-04', false);
