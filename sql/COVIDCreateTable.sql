-- データベースを作成
CREATE DATABASE IF NOT EXISTS DBproject;

-- データベースを選択
USE DBproject;

-- PersonalInfoテーブルが存在しない場合に作成
CREATE TABLE IF NOT EXISTS PersonalInfo (
    person_id VARCHAR(10) NOT NULL PRIMARY KEY, -- 個人ID: 主キー
    pass VARCHAR(16) NOT NULL, -- パスワード: 必須項目
    affiliation VARCHAR(20), -- 所属
    position VARCHAR(5), -- 役職
    phone_number VARCHAR(15) NOT NULL, -- 電話番号: 必須項目
    email VARCHAR(100) NOT NULL, -- メールアドレス: 必須項目
    u_name VARCHAR(100) NOT NULL -- 氏名: 必須項目
);

-- HealthStatusテーブルが存在しない場合に作成
CREATE TABLE IF NOT EXISTS HealthStatus (
    symptom_id INT AUTO_INCREMENT PRIMARY KEY, -- 症状ID: 主キー、自動インクリメント
    person_id VARCHAR(10) NOT NULL, -- 個人ID: 必須項目、外部キー
    temperature VARCHAR(10), -- 体温
    joint_pain BOOLEAN, -- 関節痛
    fatigue BOOLEAN, -- だるさ
    headache BOOLEAN, -- 頭痛
    sore_throat BOOLEAN, -- 咽頭痛
    shortness_of_breath BOOLEAN, -- 息苦しさ
    cough_sneeze BOOLEAN, -- 咳・くしゃみ
    nausea_vomiting BOOLEAN, -- 吐き気・嘔吐
    stomach_ache_diarrhea BOOLEAN, -- 腹痛・下痢
    taste_disorder BOOLEAN, -- 味覚障害
    smell_disorder BOOLEAN, -- 嗅覚障害
    health_date DATE NOT NULL, -- 日付: 必須項目
    delflag BOOLEAN, -- 削除フラグ
    FOREIGN KEY (person_id) REFERENCES PersonalInfo(person_id) -- 外部キー設定: PersonalInfoテーブルのperson_idを参照
);

-- ActivityLogテーブルが存在しない場合に作成
CREATE TABLE IF NOT EXISTS ActivityLog (
    activity_id INT AUTO_INCREMENT PRIMARY KEY, -- 行動ID: 主キー、自動インクリメント
    person_id VARCHAR(10) NOT NULL, -- 個人ID: 必須項目、外部キー
    start_time DATETIME, -- 開始時間
    end_time DATETIME, -- 終了時間
    transport_method VARCHAR(10), -- 移動方法
    departure_address VARCHAR(100), -- 出発地住所
    transit_address1 VARCHAR(100), -- 中継地点住所1
    transit_address2 VARCHAR(100), -- 中継地点住所2
    transit_address3 VARCHAR(100), -- 中継地点住所3
    arrival_address VARCHAR(100), -- 到着地住所
    companion_present BOOLEAN, -- 同行者有無
    companion_name VARCHAR(100), -- 同行者名
    special_notes VARCHAR(200), -- 特記事項
    last_update DATETIME, -- 最終更新
    delflag BOOLEAN, -- 削除フラグ
    FOREIGN KEY (person_id) REFERENCES PersonalInfo(person_id) -- 外部キー設定: PersonalInfoテーブルのperson_idを参照
);
