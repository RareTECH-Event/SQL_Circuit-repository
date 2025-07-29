-- 文字コード設定
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- データベースとユーザーが存在する場合のみ削除
DROP DATABASE IF EXISTS sql_circuit;
DROP USER IF EXISTS 'app_user'@'%';

-- ユーザーの作成
CREATE USER 'app_user'@'%' IDENTIFIED BY 'app_password';

-- データベースの作成
CREATE DATABASE sql_circuit CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- データベースの選択
USE sql_circuit;

-- ユーザーに権限を付与
GRANT ALL PRIVILEGES ON sql_circuit.* TO 'app_user'@'%';

-- 勤務地テーブル (locations) の作成と初期データ
CREATE TABLE locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100),
    prefecture VARCHAR(100),
    postal_code VARCHAR(20)
);

INSERT INTO locations (location_name, address, city, prefecture, postal_code) VALUES
('名古屋本社', '名古屋市中区栄3-15-33', '名古屋市', '愛知県', '460-0008'),
('東京支店', '東京都千代田区丸の内2-4-1', '千代田区', '東京都', '100-0005'),
('大阪支店', '大阪市中央区難波5-1-60', '大阪市', '大阪府', '542-0076'),
('福岡支店', '福岡市博多区博多駅中央街2-1-1', '福岡市', '福岡県', '812-0012'),
('札幌営業所', '札幌市中央区北5条西2丁目', '札幌市', '北海道', '060-0005'),
('仙台営業所', '仙台市青葉区一番町3-7-1', '仙台市', '宮城県', '980-0811'),
('広島営業所', '広島市中区紙屋町2-1-22', '広島市', '広島県', '730-0031'),
('那覇営業所', '那覇市久茂地1-1-1', '那覇市', '沖縄県', '900-0015');

-- 部署テーブル (departments) の作成と初期データ
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) UNIQUE NOT NULL,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

INSERT INTO departments (department_name, location_id) VALUES
('人事部', 1),
('経理部', 1),
('営業部', 2),
('開発部', 1),
('マーケティング部', 3),
('総務部', 4),
('広報部', 2),
('カスタマーサポート部', 3);

-- 社員テーブル (employees) の作成と初期データ
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_title VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_title, department_id) VALUES
('太郎', '山田', 'taro.yamada@example.com', '052-123-4567', '2020-04-01', '人事マネージャー', 1),
('花子', '佐藤', 'hanako.sato@example.com', '03-9876-5432', '2021-06-15', '経理担当', 2),
('一郎', '田中', 'ichiro.tanaka@example.com', '06-1111-2222', '2019-08-20', '営業部長', 3),
('さくら', '鈴木', 'sakura.suzuki@example.com', '052-333-4444', '2022-01-10', 'ソフトウェアエンジニア', 4),
('健太', '高橋', 'kenta.takahashi@example.com', '06-5555-6666', '2023-03-01', 'マーケティングスペシャリスト', 5),
('美咲', '伊藤', 'misaki.ito@example.com', '092-777-8888', '2024-05-10', '総務担当', 6),
('翔太', '吉田', 'shota.yoshida@example.com', '03-1234-5678', '2022-11-01', '広報', 7),
('優子', '林', 'yuko.hayashi@example.com', '06-9999-0000', '2023-07-01', 'カスタマーサポート', 8);

-- 変更を確定
FLUSH PRIVILEGES;