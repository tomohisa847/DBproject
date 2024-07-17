USE DBproject;
INSERT INTO HealthStatus (person_id, temperature, joint_pain, fatigue, headache, sore_throat, shortness_of_breath, cough_sneeze, nausea_vomiting, stomach_ache_diarrhea, taste_disorder, smell_disorder, health_date, delflag) VALUES
('T210001', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),

('T220001', '37.0', true, false, true, false, false, true, false, false, false, false, '2024-08-01', false),
('T220001', '37.1', false, true, true, false, false, true, false, false, false, false, '2024-08-02', false),
('T220001', '37.2', true, false, false, true, false, true, false, false, false, false, '2024-08-03', false),
('T220001', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('T220002', '36.8', false, true, false, true, false, false, true, false, false, false, '2024-08-01', false),
('T220002', '36.9', true, false, true, false, false, true, false, false, false, false, '2024-08-02', false),
('T220002', '37.0', false, true, false, true, false, false, true, false, false, false, '2024-08-03', false),
('T220002', '37.1', true, true, false, false, true, false, false, true, false, false, '2024-08-04', false),

('T310001', '37.2', true, true, false, false, true, false, false, true, false, false, '2024-08-01', false),
('T310001', '37.3', false, true, true, false, true, false, false, true, false, false, '2024-08-02', false),
('T310001', '37.4', true, false, false, true, false, false, true, false, false, false, '2024-08-03', false),
('T310001', '37.5', true, true, false, true, false, false, true, false, false, false, '2024-08-04', false),

('T310002', '36.7', false, false, true, true, false, false, true, false, true, false, '2024-08-01', false),
('T310002', '36.8', true, false, false, true, false, false, true, false, true, false, '2024-08-02', false),
('T310002', '36.9', false, true, true, false, true, false, false, true, false, true, '2024-08-03', false),
('T310002', '37.0', true, false, false, true, false, false, true, false, true, false, '2024-08-04', false),

('T310003', '37.1', true, false, false, true, false, false, false, true, false, true, '2024-08-01', false),
('T310003', '37.2', false, true, false, true, false, false, false, true, false, true, '2024-08-02', false),
('T310003', '37.3', true, false, true, false, false, false, false, true, false, true, '2024-08-03', false),
('T310003', '37.4', true, true, false, false, true, false, false, false, true, false, '2024-08-04', false),

('T320001', '36.6', false, true, true, false, true, true, false, false, false, true, '2024-08-01', false),
('T320001', '36.7', true, false, true, false, true, true, false, false, false, true, '2024-08-02', false),
('T320001', '36.8', false, true, false, true, true, false, false, false, false, true, '2024-08-03', false),
('T320001', '36.9', true, true, true, false, false, true, false, false, false, true, '2024-08-04', false),

('T320002', '37.3', true, true, false, false, false, true, true, false, false, false, '2024-08-01', false),
('T320002', '37.4', false, true, true, false, true, true, true, false, false, false, '2024-08-02', false),
('T320002', '37.5', true, false, false, true, false, false, true, true, false, false, '2024-08-03', false),
('T320002', '37.6', true, true, true, false, true, false, false, true, false, false, '2024-08-04', false),

('Y220001', '36.9', false, false, true, true, false, false, false, true, true, false, '2024-08-01', false),
('Y220001', '37.0', true, false, false, true, false, false, false, true, true, false, '2024-08-02', false),
('Y220001', '37.1', false, true, true, false, true, false, false, false, true, true, '2024-08-03', false),
('Y220001', '37.2', true, false, true, false, false, true, false, false, true, true, '2024-08-04', false),

('Y230001', '37.0', true, false, false, false, true, false, false, false, false, true, '2024-08-01', false),
('Y230001', '37.1', false, true, false, false, true, false, false, false, true, false, '2024-08-02', false),
('Y230001', '37.2', true, false, true, false, false, false, false, false, true, true, '2024-08-03', false),
('Y230001', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S210001', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),
('S210001', '36.6', true, false, false, false, false, false, false, false, false, false, '2024-08-02', false),
('S210001', '36.7', false, true, false, false, false, false, false, false, false, false, '2024-08-03', false),
('S210001', '36.8', true, true, false, false, false, false, false, false, false, false, '2024-08-04', false),

('S220001', '37.0', true, false, true, false, false, true, false, false, false, false, '2024-08-01', false),
('S220001', '37.1', false, true, true, false, false, true, false, false, false, false, '2024-08-02', false),
('S220001', '37.2', true, false, false, true, false, true, false, false, false, false, '2024-08-03', false),
('S220001', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S230001', '36.8', false, true, false, true, false, false, true, false, false, false, '2024-08-01', false),
('S230001', '36.9', true, false, true, false, false, true, false, false, false, false, '2024-08-02', false),
('S230001', '37.0', false, true, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S230001', '37.1', true, true, false, false, true, false, false, true, false, false, '2024-08-04', false),

('S230002', '37.2', true, true, false, false, true, false, false, true, false, false, '2024-08-01', false),
('S230002', '37.3', false, true, true, false, true, false, false, true, false, false, '2024-08-02', false),
('S230002', '37.4', true, false, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S230002', '37.5', true, true, false, true, false, false, true, false, false, false, '2024-08-04', false),

('S230003', '36.7', false, false, true, true, false, false, true, false, true, false, '2024-08-01', false),
('S230003', '36.8', true, false, false, true, false, false, true, false, true, false, '2024-08-02', false),
('S230003', '36.9', false, true, true, false, true, false, false, true, false, true, '2024-08-03', false),
('S230003', '37.0', true, false, false, true, false, false, true, false, true, false, '2024-08-04', false),

('Y210001', '37.1', true, false, false, true, false, false, false, true, false, true, '2024-08-01', false),
('Y210001', '37.2', false, true, false, true, false, false, false, true, false, true, '2024-08-02', false),
('Y210001', '37.3', true, false, true, false, false, false, false, true, false, true, '2024-08-03', false),
('Y210001', '37.4', true, true, false, false, true, false, false, false, true, false, '2024-08-04', false),

('S122065', '36.6', false, true, true, false, true, true, false, false, false, true, '2024-08-01', false),
('S122065', '36.7', true, false, true, false, true, true, false, false, false, true, '2024-08-02', false),
('S122065', '36.8', false, true, false, true, true, false, false, false, false, true, '2024-08-03', false),
('S122065', '36.9', true, true, true, false, false, true, false, false, false, true, '2024-08-04', false),

('S122151', '37.3', true, true, false, false, false, true, true, false, false, false, '2024-08-01', false),
('S122151', '37.4', false, true, true, false, true, true, true, false, false, false, '2024-08-02', false),
('S122151', '37.5', true, false, false, true, false, false, true, true, false, false, '2024-08-03', false),
('S122151', '37.6', true, true, true, false, true, false, false, true, false, false, '2024-08-04', false),

('S121092', '36.9', false, false, true, true, false, false, false, true, true, false, '2024-08-01', false),
('S121092', '37.0', true, false, false, true, false, false, false, true, true, false, '2024-08-02', false),
('S121092', '37.1', false, true, true, false, true, false, false, false, true, true, '2024-08-03', false),
('S121092', '37.2', true, false, true, false, false, true, false, false, true, true, '2024-08-04', false),

('S121008', '37.0', true, false, false, false, true, false, false, false, false, true, '2024-08-01', false),
('S121008', '37.1', false, true, false, false, true, false, false, false, true, false, '2024-08-02', false),
('S121008', '37.2', true, false, true, false, false, false, false, false, true, true, '2024-08-03', false),
('S121008', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('M122035', '36.5', false, false, false, false, false, false, false, false, false, false, '2024-08-01', false),
('M122035', '36.6', true, false, false, false, false, false, false, false, false, false, '2024-08-02', false),
('M122035', '36.7', false, true, false, false, false, false, false, false, false, false, '2024-08-03', false),
('M122035', '36.8', true, true, false, false, false, false, false, false, false, false, '2024-08-04', false),

('M122013', '37.0', true, false, true, false, false, true, false, false, false, false, '2024-08-01', false),
('M122013', '37.1', false, true, true, false, false, true, false, false, false, false, '2024-08-02', false),
('M122013', '37.2', true, false, false, true, false, true, false, false, false, false, '2024-08-03', false),
('M122013', '37.3', true, true, false, true, false, true, false, false, false, false, '2024-08-04', false),

('S220134', '36.8', false, true, false, true, false, false, true, false, false, false, '2024-08-01', false),
('S220134', '36.9', true, false, true, false, false, true, false, false, false, false, '2024-08-02', false),
('S220134', '37.0', false, true, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S220134', '37.1', true, true, false, false, true, false, false, true, false, false, '2024-08-04', false),

('S219078', '37.2', true, true, false, false, true, false, false, true, false, false, '2024-08-01', false),
('S219078', '37.3', false, true, true, false, true, false, false, true, false, false, '2024-08-02', false),
('S219078', '37.4', true, false, false, true, false, false, true, false, false, false, '2024-08-03', false),
('S219078', '37.5', true, true, false, true, false, false, true, false, false, false, '2024-08-04', false),

('S219031', '36.7', false, false, true, true, false, false, true, false, true, false, '2024-08-01', false),
('S219031', '36.8', true, false, false, true, false, false, true, false, true, false, '2024-08-02', false),
('S219031', '36.9', false, true, true, false, true, false, false, true, false, true, '2024-08-03', false),
('S219031', '37.0', true, false, false, true, false, false, true, false, true, false, '2024-08-04', false),

('M222010', '37.1', true, false, false, true, false, false, false, true, false, true, '2024-08-01', false),
('M222010', '37.2', false, true, false, true, false, false, false, true, false, true, '2024-08-02', false),
('M222010', '37.3', true, false, true, false, false, false, false, true, false, true, '2024-08-03', false),
('M222010', '37.4', true, true, false, false, true, false, false, false, true, false, '2024-08-04', false);
