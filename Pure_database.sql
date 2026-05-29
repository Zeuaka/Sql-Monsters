-- ============= 1. УДАЛЯЕМ ВСЕ ТАБЛИЦЫ И ТИПЫ =============
DROP TABLE IF EXISTS panoramas CASCADE;
DROP TABLE IF EXISTS edges CASCADE;
DROP TABLE IF EXISTS points CASCADE;
DROP TABLE IF EXISTS floors CASCADE;
DROP TABLE IF EXISTS buildings CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP DOMAIN IF EXISTS point_type CASCADE;

-- ============= 2. СОЗДАЁМ ТИП =============
CREATE DOMAIN point_type AS INTEGER CHECK (VALUE BETWEEN 1 AND 8);

-- ============= 3. СОЗДАЁМ ТАБЛИЦЫ =============

-- 3.1 Корпуса
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(500),
    floors_count INTEGER NOT NULL DEFAULT 0
);

-- 3.2 Этажи
CREATE TABLE floors (
    id SERIAL PRIMARY KEY,
    building_id INTEGER NOT NULL REFERENCES buildings(id) ON DELETE CASCADE,
    floor_number INTEGER NOT NULL,
    floor_plan_url VARCHAR(500),
    UNIQUE(building_id, floor_number)
);

-- 3.3 Точки навигации
CREATE TABLE points (
    id SERIAL PRIMARY KEY,
    building_id INTEGER NOT NULL REFERENCES buildings(id) ON DELETE CASCADE,
    floor_id INTEGER NOT NULL REFERENCES floors(id) ON DELETE CASCADE,
    type point_type NOT NULL,
    name VARCHAR(255) NOT NULL,
    x_coord DECIMAL(10, 2),
    y_coord DECIMAL(10, 2),
    description TEXT,
    panorama_id INTEGER,
    is_active BOOLEAN DEFAULT TRUE
);

-- 3.4 Рёбра графа
CREATE TABLE edges (
    id SERIAL PRIMARY KEY,
    from_point_id INTEGER NOT NULL REFERENCES points(id) ON DELETE CASCADE,
    to_point_id INTEGER NOT NULL REFERENCES points(id) ON DELETE CASCADE,
    distance_meters DECIMAL(10, 2) NOT NULL CHECK (distance_meters > 0),
    direction_text VARCHAR(255),
    floor_transition BOOLEAN DEFAULT FALSE,
    UNIQUE(from_point_id, to_point_id)
);

-- 3.5 Панорамы
CREATE TABLE panoramas (
    id SERIAL PRIMARY KEY,
    point_id INTEGER NOT NULL REFERENCES points(id) ON DELETE CASCADE,
    image_path VARCHAR(500) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    yaw DECIMAL(6, 3),
    pitch DECIMAL(6, 3)
);

-- 3.6 Пользователи
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) DEFAULT 'user',
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============= 4. ИНСЕРТЫ =============

-- 4.1 Пользователи
INSERT INTO users (username, email, password, role) 
VALUES ('admin', 'admin@example.com', 'admin123', 'admin')
ON CONFLICT (username) DO NOTHING;

INSERT INTO users (username, email, password, role) 
VALUES ('user', 'user@example.com', 'user123', 'user')
ON CONFLICT (username) DO NOTHING;

-- 4.2 Корпуса
INSERT INTO buildings (id, name, address, floors_count) VALUES
(1, 'Физический факультет', 'ул. Букирева, 10', 4),
(2, 'ИКНТ и Биологический факультет', 'ул. Генкеля, 7', 5),
(3, 'РИНО ПГНИУ', 'ул. Генкеля 5А', 3),
(4, 'Колледж ПГНИУ', 'ул. Генкеля 7А', 3),
(5, 'Факультет филологии и коммуникации', 'ул. Дзержинского 2', 3),
(6, 'Химический факультет', 'ул. Букирева 10А', 5),
(7, 'СДК', 'ул. Букирева 10', 4),
(8, 'Географический факультет', 'ул Генкеля 8', 7),
(9, 'Юридический факультет', 'ул. Генкеля 3', 2),
(10, 'Спортклуб', 'ул. Букирева 15к10', 3),
(11, 'Юридический факультет', 'ул. Генкеля 3А', 2),
(12, 'Экономический факультет/Лицей', 'ул. Дзержинского 2А', 3),
(16, 'Естественнонаучный институт', 'ул. Генкеля 4', 4)
ON CONFLICT (id) DO NOTHING;

-- 4.3 Этажи
INSERT INTO floors (id, building_id, floor_number, floor_plan_url) VALUES 
-- Корпус 1
(45, 1, 1, '/floorplans/1_1.svg'),
(46, 1, 2, '/floorplans/1_2.svg'),
(47, 1, 3, '/floorplans/1_3.svg'),
(48, 1, 4, '/floorplans/1_4.svg'),

-- Корпус 2
(1, 2, 0, '/floorplans/2_0.svg'),
(2, 2, 1, '/floorplans/2_1.svg'),
(3, 2, 2, '/floorplans/2_2.svg'),
(4, 2, 3, '/floorplans/2_3.svg'),
(5, 2, 4, '/floorplans/2_4.svg'),

-- Корпус 3
(6, 3, 1, '/floorplans/3_1.svg'),
(7, 3, 2, '/floorplans/3_2.svg'),
(8, 3, 3, '/floorplans/3_3.svg'),

-- Корпус 4
(9, 4, 1, '/floorplans/4_1.svg'),
(10, 4, 2, '/floorplans/4_2.svg'),
(11, 4, 3, '/floorplans/4_3.svg'),

-- Корпус 5
(12, 5, 1, '/floorplans/5_1.svg'),
(13, 5, 2, '/floorplans/5_2.svg'),
(14, 5, 3, '/floorplans/5_3.svg'),

-- Корпус 6
(16, 6, 1, '/floorplans/6_1.svg'),
(17, 6, 2, '/floorplans/6_2.svg'),
(18, 6, 3, '/floorplans/6_3.svg'),
(19, 6, 4, '/floorplans/6_4.svg'),

-- Корпус 7
(20, 7, 1, '/floorplans/7_1.svg'),
(21, 7, 2, '/floorplans/7_2.svg'),
(22, 7, 3, '/floorplans/7_3.svg'),
(23, 7, 4, '/floorplans/7_4.svg'),

-- Корпус 8
(24, 8, 1, '/floorplans/8_1.svg'),
(25, 8, 2, '/floorplans/8_2.svg'),
(26, 8, 3, '/floorplans/8_3.svg'),
(27, 8, 4, '/floorplans/8_4.svg'),
(28, 8, 5, '/floorplans/8_5.svg'),
(29, 8, 6, '/floorplans/8_6.svg'),
(30, 8, 7, '/floorplans/8_7.svg'),

-- Корпус 9
(31, 9, 1, '/floorplans/9_1.svg'),
(32, 9, 2, '/floorplans/9_2.svg'),

-- Корпус 10
(33, 10, 1, '/floorplans/10_1.svg'),
(34, 10, 2, '/floorplans/10_2.svg'),
(35, 10, 3, '/floorplans/10_3.svg'),

-- Корпус 11
(36, 11, 1, '/floorplans/11_1.svg'),
(37, 11, 2, '/floorplans/11_2.svg'),

-- Корпус 12
(38, 12, 1, '/floorplans/12_1.svg'),
(39, 12, 2, '/floorplans/12_2.svg'),
(40, 12, 3, '/floorplans/12_3.svg'),

-- Корпус 16
(41, 16, 1, '/floorplans/16_1.svg'),
(42, 16, 2, '/floorplans/16_2.svg'),
(43, 16, 3, '/floorplans/16_3.svg'),
(44, 16, 4, '/floorplans/16_4.svg')
ON CONFLICT (id) DO NOTHING;

-- ============= 5. ПРОВЕРКА =============
SELECT COUNT(*) as total_buildings FROM buildings;
SELECT COUNT(*) as total_floors FROM floors;
SELECT COUNT(*) as total_points FROM points;
SELECT COUNT(*) as total_edges FROM edges;
SELECT COUNT(*) as total_panoramas FROM panoramas;
SELECT COUNT(*) as total_users FROM users;
