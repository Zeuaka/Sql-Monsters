-- ============= 1. УДАЛЯЕМ ВСЕ ТАБЛИЦЫ И ТИПЫ =============
DROP TABLE IF EXISTS panoramas CASCADE;
DROP TABLE IF EXISTS edges CASCADE;
DROP TABLE IF EXISTS points CASCADE;
DROP TABLE IF EXISTS floors CASCADE;
DROP TABLE IF EXISTS buildings CASCADE;
DROP DOMAIN IF EXISTS point_type CASCADE;

-- ============= 2. СОЗДАЁМ ТИП =============
CREATE DOMAIN point_type AS INTEGER CHECK (VALUE BETWEEN 1 AND 7);

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

-- ============= 4. ВСТАВЛЯЕМ ДАННЫЕ =============

-- 4.1 Корпуса
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

-- 4.2 Этажи
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
(15, 6, 0, '/floorplans/6_0.svg'),
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

-- 4.3 Точки навигации
INSERT INTO points (id, building_id, floor_id, type, name, x_coord, y_coord, description, panorama_id, is_active) VALUES 
-- ========== КОРПУС 2 ==========
-- этаж 1 (floor_id = 2)
(200, 2, 2, 1, 'Холл ИКНТ', 50, 85, 'Главный холл, гардероб, информационная стойка', 201, true),
(201, 2, 2, 7, 'Переход в корпус 1', 50, 75, 'Переход в соседний корпус', NULL, true),
(202, 2, 2, 2, 'Центральная лестница', 50, 65, 'Главная лестница на 2-4 этажи', NULL, true),
(203, 2, 2, 3, 'Главный коридор', 50, 55, 'Центральный коридор, разветвление на крылья', NULL, true),
(204, 2, 2, 5, 'Коридор, восточное крыло', 70, 55, 'Поворот направо от главного коридора', NULL, true),
(205, 2, 2, 3, 'Коридор, западное крыло', 30, 55, 'Поворот налево от главного коридора', NULL, true),
(206, 2, 2, 6, 'Лестница, восточное крыло', 85, 40, 'Лестница на 2 этаж (восточное крыло)', NULL, true),
(207, 2, 2, 4, 'Лестница, западное крыло', 15, 40, 'Лестница на 2 этаж (западное крыло)', NULL, true),
(208, 2, 2, 5, 'Тупиковый коридор', 90, 55, 'Конец восточного крыла', NULL, true),
(209, 2, 2, 3, 'Коридор к столовой', 20, 70, 'Поворот к столовой', NULL, true),
(210, 2, 2, 1, 'Столовая', 15, 85, 'Студенческая столовая', 202, true),

-- этаж 2 (floor_id = 3)
(211, 2, 3, 2, 'Центральная лестница (2 этаж)', 50, 65, 'Выход с лестницы на 2 этаж', NULL, true),
(212, 2, 3, 1, 'Холл 2 этажа', 50, 85, 'Холл второго этажа', NULL, true),
(213, 2, 3, 3, 'Главный коридор 2 этажа', 50, 55, 'Центральный коридор 2 этажа', NULL, true),
(214, 2, 3, 5, 'Коридор, восточное крыло', 70, 55, 'Восточное крыло 2 этажа', NULL, true),
(215, 2, 3, 3, 'Коридор, западное крыло', 30, 55, 'Западное крыло 2 этажа', NULL, true),
(216, 2, 3, 6, 'Лестница, восточное крыло (2 этаж)', 85, 40, 'Лестница на 3 этаж', NULL, true),
(217, 2, 3, 4, 'Лестница, западное крыло (2 этаж)', 15, 40, 'Лестница на 3 этаж', NULL, true),
(218, 2, 3, 1, 'Аудитория 201', 80, 70, 'Лекционная аудитория на 100 мест', NULL, true),
(219, 2, 3, 1, 'Аудитория 215', 20, 70, 'Компьютерный класс', NULL, true),

-- этаж 3 (floor_id = 4)
(220, 2, 4, 2, 'Центральная лестница (3 этаж)', 50, 65, NULL, NULL, true),
(221, 2, 4, 1, 'Холл 3 этажа', 50, 85, NULL, NULL, true),
(222, 2, 4, 1, 'Лаборатория биологии', 70, 70, 'Лаборатория молекулярной биологии', 203, true),
(223, 2, 4, 1, 'Лаборатория ИИ', 30, 70, 'Лаборатория искусственного интеллекта', NULL, true),

-- ========== КОРПУС 9 ==========
-- этаж 1 (floor_id = 31)
(910, 9, 31, 1, 'Холл 9 корпус', 0, 0, 'Главный холл, информационная стойка', 911, true),
(911, 9, 31, 3, 'Слева от холла', 0, 0, 'каб 102/103/104/105', 912, true),
(912, 9, 31, 3, 'Вперед от холла', 0, 0, 'Гардероб, лестница на 2 этаж', 913, true),
(913, 9, 31, 3, 'Справа от гардероба', 0, 0, 'угол с каб 110', 914, true),
(9101, 9, 31, 4, 'Лестница 1', 0, 0, '', 9101, true),
(9102, 9, 31, 6, 'Лестница 2', 0, 0, '', 9102, true),

-- этаж 2 (floor_id = 32)
(920, 9, 32, 1, '2 этаж', 0, 0, '2 лестницы, деканат очного отделения', 921, true),
(921, 9, 32, 3, 'слева от лестниц', 0, 0, 'буфет', 922, true),
(922, 9, 32, 5, 'справа от лестниц', 0, 0, 'каб 203/204/205', 923, true),
(923, 9, 32, 7, 'переход в 11 корпус', 0, 0, 'переход в 11 корпус', 924, true),

-- ========== КОРПУС 10 ==========
-- этаж 1 (floor_id = 33)
(1010, 10, 33, 1, 'холл 10 корпуса', 0, 0, 'охрана, лестница', 1011, true),
(1011, 10, 33, 3, 'справа от холла', 0, 0, 'туалеты', 1012, true),
(1012, 10, 33, 3, 'дальше от туалетов', 0, 0, 'каб 109/110/111', 1011, true),
(10101, 10, 33, 4, 'лестница рядом с точкой 1', 0, 0, '', 10101, true),
(10102, 10, 33, 6, 'лестница рядом с точкой 3', 0, 0, '', 10102, true),
(10123, 10, 33, 3, 'между 2 и 3', 0, 0, '', NULL, false),

-- этаж 2 (floor_id = 34)
(1021, 10, 34, 1, 'игровой зал', 0, 0, 'раздевалка, лестницы л1, 2л1', 1021, true),
(1022, 10, 34, 1, 'игровой зал 2', 0, 0, 'спорт инвентарь лестницы л2, 2л2', 1022, true),
(10201, 10, 34, 4, 'лестница 2л1', 0, 0, 'около зального балкона', 10201, true),
(10202, 10, 34, 6, 'лестница 2л2', 0, 0, 'с противоположной стороны от 2л1', 10202, true),

-- этаж 3 (floor_id = 35)
(1031, 10, 35, 3, 'балкон рядом с 2л1', 0, 0, 'каб 301 и вид на зал', 1031, true),
(1032, 10, 35, 5, 'балкон рядом с 2л2', 0, 0, 'вид на зал', 1032, true),
(10323, 10, 35, 5, 'между 2 и 3', 0, 0, '', NULL, false),
-- лестница нахуй --

-- ========== КОРПУС 11 ==========
-- этаж 1 (floor_id = 36)
(1111, 11, 36, 1, 'коридор', 0, 0, 'рядом с каб 126 и лестницей', 1111, true),
(1112, 11, 36, 3, 'дальше по коридору от т1', 0, 0, 'рядом с каб 128/129', 1112, true),
(11101, 11, 36, 4, 'лестница л1', 0, 0, '', 11101, true),

-- этаж 2 (floor_id = 37)
(1121, 11, 37, 1, 'коридор', 0, 0, 'каб 219/223/224', 1121, true),
(1122, 11, 37, 3, 'коридор', 0, 0, 'каб 225 и пролет в каб 226', 1122, true)
-- лестница нахуй --
ON CONFLICT (id) DO NOTHING;

-- 4.4 Панорамы
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(201, 200, '/panoramas/corpus2_hall.jpg', 'Холл ИКНТ', 'Главный холл корпуса №2', 0, 0),
(202, 210, '/panoramas/corpus2_cafe.jpg', 'Столовая', 'Студенческая столовая', 0, 0),
(203, 222, '/panoramas/corpus2_lab.jpg', 'Лаборатория биологии', 'Лаборатория молекулярной биологии', 0, 0),
(911, 910, '/panoramas/corpus9_hall.jpg', 'Холл 9 корпус', 'Главный холл юридического факультета', 0, 0),
(912, 911, '/panoramas/corpus9_left.jpg', 'Слева от холла', 'Кабинеты 102-105', 0, 0),
(913, 912, '/panoramas/corpus9_forward.jpg', 'Вперед от холла', 'Гардероб, лестница', 0, 0),
(914, 913, '/panoramas/corpus9_right.jpg', 'Справа от гардероба', 'Угол с кабинетом 110', 0, 0),
(921, 920, '/panoramas/corpus9_floor2.jpg', '2 этаж', 'Деканат очного отделения', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- 4.5 Рёбра (для корпуса 2)
INSERT INTO edges (id, from_point_id, to_point_id, distance_meters, direction_text, floor_transition) 
VALUES 
(1, 200, 201, 10, 'К переходу в корпус 1', false), 
(2, 200, 202, 15, 'К центральной лестнице', false), 
(3, 202, 203, 8, 'Спуститься в главный коридор', false), 
(4, 203, 204, 15, 'Повернуть направо (восточное крыло)', false), 
(5, 203, 205, 15, 'Повернуть налево (западное крыло)', false), 
(6, 204, 206, 20, 'К лестнице в восточном крыле', false), 
(7, 205, 207, 20, 'К лестнице в западном крыле', false), 
(8, 204, 208, 10, 'В тупиковый коридор', false), 
(9, 205, 209, 15, 'К коридору столовой', false), 
(10, 209, 210, 8, 'В столовую', false), 
(11, 202, 211, 8, 'Подняться на 2 этаж (центральная лестница)', true), 
(12, 206, 216, 8, 'Подняться на 2 этаж (восточная лестница)', true), 
(13, 207, 217, 8, 'Подняться на 2 этаж (западная лестница)', true), 
(14, 211, 212, 10, 'В холл 2 этажа', false), 
(15, 212, 213, 8, 'В главный коридор', false), 
(16, 213, 214, 15, 'В восточное крыло', false), 
(17, 213, 215, 15, 'В западное крыло', false), 
(18, 214, 218, 12, 'К аудитории 201', false), 
(19, 215, 219, 12, 'К аудитории 215', false), 
(20, 211, 220, 16, 'Подняться на 3 этаж', true), 
(21, 220, 221, 10, 'В холл 3 этажа', false), 
(22, 221, 222, 25, 'К лаборатории биологии', false), 
(23, 221, 223, 25, 'К лаборатории ИИ', false) 
ON CONFLICT (id) DO NOTHING;



-- Проверка
SELECT COUNT(*) as total_buildings FROM buildings;
SELECT COUNT(*) as total_floors FROM floors;
SELECT COUNT(*) as total_points FROM points;
SELECT COUNT(*) as total_edges FROM edges;
SELECT COUNT(*) as total_panoramas FROM panoramas;
