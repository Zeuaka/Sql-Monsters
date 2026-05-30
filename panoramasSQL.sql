-- ========== 1 корпус панорамы ===========
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES
(200015, 101001, '/panoramas/1.1.10.jpg', 'Коридор к лестнице 5', '', 0, 0),
(200016, 101006, '/panoramas/1.1.2.jpg', 'Банкоматы', '', 0, 0),
(200017, 101007, '/panoramas/1.1.3.jpg', 'Корридор', '', 0, 0),
(200018, 101002, '/panoramas/1.1.л5.jpg', 'Лестница у буфета', '', 0, 0),
(200019, 101008, '/panoramas/1.1.4.jpg', 'Коридор', '', 0, 0),
(200020, 101009, '/panoramas/1.1.л3.jpg', 'Лестница', '', 0, 0),
(200021, 101010, '/panoramas/1.1.л1.jpg', 'Главная лестница', '', 0, 0),
(200022, 101011, '/panoramas/1.1.1.jpg', 'Холл 1 корпус', '', 0, 0),
(200023, 101012, '/panoramas/1.1.л2.jpg', 'Главная лестница', '', 0, 0),
(200024, 101013, '/panoramas/1.1.5.jpg', 'Развилка', '', 0, 0),
(200025, 101014, '/panoramas/1.1.6.jpg', 'Коридор', '', 0, 0),
(200026, 101015, '/panoramas/1.1.7.jpg', 'Коридор', '', 0, 0),
(200027, 101016, '/panoramas/1.1.л4.jpg', 'Лестница', '', 0, 0),
(200028, 101017, '/panoramas/1.1.8.jpg', 'Вход в библиотеку', '', 0, 0),
(200029, 101018, '/panoramas/1.1.9.jpg', 'Библиотека', '', 0, 0),
(200030, 11312, '/panoramas/1.2.3.jpg', 'Коридор', '', 0, 0),
(200031, 102314, '/panoramas/1.2.л3.jpg', 'Лестница', '', 0, 0),
(200032, 11303, '/panoramas/1.2.2.jpg', 'Коридор', '', 0, 0),
(200033, 11219, '/panoramas/1.2.1.jpg', 'Развилка', '', 0, 0),
(200034, 11210, '/panoramas/1.2.л1.jpg', 'Лестница', '', 0, 0),
(200035, 11218, '/panoramas/1.2.4.jpg', 'Коридор', '', 0, 0),
(200036, 11211, '/panoramas/1.2.л2.jpg', 'Главная лестница', '', 0, 0),
(200037, 11283, '/panoramas/1.2.5.jpg', 'Холл', '', 0, 0),
(200038, 11214, '/panoramas/1.2.6.jpg', 'Рядом с переходом', '', 0, 0),
(200039, 11293, '/panoramas/1.2.7.jpg', 'Корридор', '', 0, 0),
(200040, 11297, '/panoramas/1.2.8.jpg', 'Коридор', '', 0, 0),
(200041, 11212, '/panoramas/1.2.л4.jpg', 'Лестница', '', 0, 0),
(1990042, 11338, '/panoramas/1.3.3.jpg', 'Коридор', '', 0, 0),
(1990043, 11316, '/panoramas/1.3.л3.jpg', 'Лестница', '', 0, 0),
(1990044, 11321, '/panoramas/1.3.2.jpg', 'Коридор', '', 0, 0),
(1990045, 11390, '/panoramas/1.3.1.jpg', 'Холл', '', 0, 0),
(1990046, 11315, '/panoramas/1.3.л1.jpg', 'Главная лестница', '', 0, 0),
(1990047, 11395, '/panoramas/1.3.4.jpg', 'Коридор', '', 0, 0),
(1990048, 11314, '/panoramas/1.3.л2.jpg', 'Лестница', '', 0, 0),
(1990049, 11318, '/panoramas/1.3.5.jpg', 'Холл', '', 0, 0),
(1990050, 11405, '/panoramas/1.3.6.jpg', 'Коридор', '', 0, 0),
(1990051, 11317, '/panoramas/1.3.л4.jpg', 'Коридор', '', 0, 0),
(1990052, 11323, '/panoramas/1.3.7.jpg', 'Коридор', '', 0, 0),
(1990053, 11422, '/panoramas/1.4.1.jpg', 'Холл', '', 0, 0),
(1990054, 11488, '/panoramas/1.4.2.jpg', 'Коридор', '', 0, 0),
(1990055, 11493, '/panoramas/1.4.3.jpg', 'Коридор', '', 0, 0),
(1990056, 11421, '/panoramas/1.4.4.jpg', 'Холл', '', 0, 0),
(1990057, 11420, '/panoramas/1.4.5.jpg', 'Коридор', '', 0, 0),
(1990058, 11419, '/panoramas/1.4.6.jpg', 'У лестницы', '', 0, 0),
(1990059, 11477, '/panoramas/1.4.7.jpg', 'Коридор', '', 0, 0),
(1990060, 11425, '/panoramas/1.4.8.jpg', 'Коридор', '', 0, 0),
(1990061, 11416, '/panoramas/1.4.л4.jpg', 'Лестница', '', 0, 0),
(1990062, 11415, '/panoramas/1.4.л2.jpg', 'Главная лестница', '', 0, 0),
(1990063, 11417, '/panoramas/1.4.л1.jpg', 'Главная лестница', '', 0, 0),
(1990064, 11418, '/panoramas/1.4.л3.jpg', 'Лестница', '', 0, 0)

ON CONFLICT (id) DO NOTHING;

UPDATE points SET panorama_id = 200015 WHERE id = 101001;
UPDATE points SET panorama_id = 200016 WHERE id = 101006;
UPDATE points SET panorama_id = 200017 WHERE id = 101007;
UPDATE points SET panorama_id = 200018 WHERE id = 101002;
UPDATE points SET panorama_id = 200019 WHERE id = 101008;
UPDATE points SET panorama_id = 200020 WHERE id = 101009;
UPDATE points SET panorama_id = 200021 WHERE id = 101010;
UPDATE points SET panorama_id = 200022 WHERE id = 101011;
UPDATE points SET panorama_id = 200023 WHERE id = 101012;
UPDATE points SET panorama_id = 200024 WHERE id = 101013;
UPDATE points SET panorama_id = 200025 WHERE id = 101014;
UPDATE points SET panorama_id = 200026 WHERE id = 101015;
UPDATE points SET panorama_id = 200027 WHERE id = 101016;
UPDATE points SET panorama_id = 200028 WHERE id = 101017;
UPDATE points SET panorama_id = 200029 WHERE id = 101018;
UPDATE points SET panorama_id = 200030 WHERE id = 11312;
UPDATE points SET panorama_id = 200031 WHERE id = 102314;
UPDATE points SET panorama_id = 200032 WHERE id = 11303;
UPDATE points SET panorama_id = 200033 WHERE id = 11219;
UPDATE points SET panorama_id = 200034 WHERE id = 11210;
UPDATE points SET panorama_id = 200035 WHERE id = 11218;
UPDATE points SET panorama_id = 200036 WHERE id = 11211;
UPDATE points SET panorama_id = 200037 WHERE id = 11283;
UPDATE points SET panorama_id = 200038 WHERE id = 11214;
UPDATE points SET panorama_id = 200039 WHERE id = 11293;
UPDATE points SET panorama_id = 200040 WHERE id = 11297;
UPDATE points SET panorama_id = 200041 WHERE id = 11212;
UPDATE points SET panorama_id = 1990042 WHERE id = 11338;
UPDATE points SET panorama_id = 1990043 WHERE id = 11316;
UPDATE points SET panorama_id = 1990044 WHERE id = 11321;
UPDATE points SET panorama_id = 1990045 WHERE id = 11390;
UPDATE points SET panorama_id = 1990046 WHERE id = 11315;
UPDATE points SET panorama_id = 1990047 WHERE id = 11395;
UPDATE points SET panorama_id = 1990048 WHERE id = 11314;
UPDATE points SET panorama_id = 1990049 WHERE id = 11318;
UPDATE points SET panorama_id = 1990050 WHERE id = 11405;
UPDATE points SET panorama_id = 1990051 WHERE id = 11317;
UPDATE points SET panorama_id = 1990052 WHERE id = 11323;
UPDATE points SET panorama_id = 1990053 WHERE id = 11422;
UPDATE points SET panorama_id = 1990054 WHERE id = 11488;
UPDATE points SET panorama_id = 1990055 WHERE id = 11493;
UPDATE points SET panorama_id = 1990056 WHERE id = 11421;
UPDATE points SET panorama_id = 1990057 WHERE id = 11420;
UPDATE points SET panorama_id = 1990058 WHERE id = 11419;
UPDATE points SET panorama_id = 1990059 WHERE id = 11477;
UPDATE points SET panorama_id = 1990060 WHERE id = 11425;
UPDATE points SET panorama_id = 1990061 WHERE id = 11416;
UPDATE points SET panorama_id = 1990062 WHERE id = 11415;
UPDATE points SET panorama_id = 1990063 WHERE id = 11417;
UPDATE points SET panorama_id = 1990064 WHERE id = 11418;


-- ========== 2 корпус панорамы ===========
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(2990002, 200001, '/panoramas/2.1.л2.jpg', 'Лестница', '', 0, 0),
(2990003, 200002, '/panoramas/2.1.2.jpg', 'Коридор', '', 0, 0),
(2990004, 200004, '/panoramas/2.1.1.jpg', 'Центральный проход', '', 0, 0),
(2990005, 200005, '/panoramas/2.1.л1.jpg', 'Центральная лестница', '', 0, 0),
(2990006, 200006, '/panoramas/2.1.3.jpg', 'Коридор', '', 0, 0),
(2990007, 200008, '/panoramas/2.1.5.jpg', 'Развилка', '', 0, 0),
(2990008, 200007, '/panoramas/2.1.4.jpg', 'Коридор', '', 0, 0),
(2990009, 200009, '/panoramas/2.1.л3.jpg', 'Лестница', '', 0, 0),
(2990015, 200003, '/panoramas/2.1.6.jpg', 'У лестницы', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 2990002 WHERE id = 200001;
UPDATE points SET panorama_id = 2990003 WHERE id = 200002;
UPDATE points SET panorama_id = 2990004 WHERE id = 200004;
UPDATE points SET panorama_id = 2990005 WHERE id = 200005;
UPDATE points SET panorama_id = 2990006 WHERE id = 200006;
UPDATE points SET panorama_id = 2990007 WHERE id = 200008;
UPDATE points SET panorama_id = 2990008 WHERE id = 200007;
UPDATE points SET panorama_id = 2990009 WHERE id = 200009;
UPDATE points SET panorama_id = 2990015 WHERE id = 200003;

-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(2990010, 201001, '/panoramas/2.2.1.jpg', 'Холл ИКНТ', '', 0, 0),
(2990012, 201003, '/panoramas/2.2.2.jpg', 'Коридор', '', 0, 0),
(2990013, 201002, '/panoramas/2.2.л1.jpg', 'Главная лестница', '', 0, 0),
(2990014, 201004, '/panoramas/2.2.3.jpg', 'Коридор', '', 0, 0),
(2990016, 201005, '/panoramas/2.2.4.jpg', 'Коридор', '', 0, 0),
(2990017, 201006, '/panoramas/2.2.5.jpg', 'Развилка', '', 0, 0),
(2990018, 201011, '/panoramas/2.2.л3.jpg', 'Лестница', '', 0, 0),
(2990019, 201008, '/panoramas/2.2.6.jpg', 'Коридор', '', 0, 0),
(2990020, 201007, '/panoramas/2.2.л2.jpg', 'Лестница', '', 0, 0),
(2990021, 201009, '/panoramas/2.2.7.jpg', 'Коридор', '', 0, 0),
(2990022, 201010, '/panoramas/2.2.8.jpg', 'У лестницы', '', 0, 0),
(2990023, 201012, '/panoramas/2.2.8.jpg', 'Коридор', '', 0, 0),
(2990024, 201013, '/panoramas/2.2.10.jpg', 'Развилка', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 2990010 WHERE id = 201001;
UPDATE points SET panorama_id = 2990012 WHERE id = 201003;
UPDATE points SET panorama_id = 2990013 WHERE id = 201002;
UPDATE points SET panorama_id = 2990014 WHERE id = 201004;
UPDATE points SET panorama_id = 2990016 WHERE id = 201005;
UPDATE points SET panorama_id = 2990017 WHERE id = 201006;
UPDATE points SET panorama_id = 2990018 WHERE id = 201011;
UPDATE points SET panorama_id = 2990019 WHERE id = 201008;
UPDATE points SET panorama_id = 2990020 WHERE id = 201007;
UPDATE points SET panorama_id = 2990021 WHERE id = 201009;
UPDATE points SET panorama_id = 2990022 WHERE id = 201010;
UPDATE points SET panorama_id = 2990023 WHERE id = 201012;
UPDATE points SET panorama_id = 2990024 WHERE id = 201013;

-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(2990025, 202002, '/panoramas/2.3.1.jpg', 'Холл', '', 0, 0),
(2990026, 202004, '/panoramas/2.3.2.jpg', 'Поворот', '', 0, 0),
(2990027, 202005, '/panoramas/2.3.3.jpg', 'Поворот', '', 0, 0),
(2990028, 202007, '/panoramas/2.3.4.jpg', 'Коридор', '', 0, 0),
(2990029, 202008, '/panoramas/2.3.5.jpg', 'Коридор', '', 0, 0),
(2990030, 202009, '/panoramas/2.3.6.jpg', 'Коридор', '', 0, 0),
(2990031, 202010, '/panoramas/2.3.7.jpg', 'Коридор', '', 0, 0),
(2990032, 202011, '/panoramas/2.3.л3.jpg', 'Лестница', '', 0, 0),
(2990033, 202003, '/panoramas/2.3.л1.jpg', 'Главная лестница', '', 0, 0),
(2990034, 202006, '/panoramas/2.3.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 2990025 WHERE id = 202002;
UPDATE points SET panorama_id = 2990026 WHERE id = 202004;
UPDATE points SET panorama_id = 2990027 WHERE id = 202005;
UPDATE points SET panorama_id = 2990028 WHERE id = 202007;
UPDATE points SET panorama_id = 2990029 WHERE id = 202008;
UPDATE points SET panorama_id = 2990030 WHERE id = 202009;
UPDATE points SET panorama_id = 2990031 WHERE id = 202010;
UPDATE points SET panorama_id = 2990032 WHERE id = 202011;
UPDATE points SET panorama_id = 2990033 WHERE id = 202003;
UPDATE points SET panorama_id = 2990034 WHERE id = 202006;

-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(2990035, 203001, '/panoramas/2.4.1.jpg', 'Холл', '', 0, 0),
(2990036, 203003, '/panoramas/2.4.2.jpg', 'Коридор', '', 0, 0),
(2990037, 203004, '/panoramas/2.4.3.jpg', 'Коридор', '', 0, 0),
(2990038, 203007, '/panoramas/2.4.4.jpg', 'Коридор', '', 0, 0),
(2990039, 203006, '/panoramas/2.4.5.jpg', 'Тупик', '', 0, 0),
(2990040, 203008, '/panoramas/2.4.6.jpg', 'Поворот', '', 0, 0),
(2990041, 203009, '/panoramas/2.4.7.jpg', 'Коридор', '', 0, 0),
(2990042, 203010, '/panoramas/2.4.8.jpg', 'Коридор', '', 0, 0),
(2990043, 203012, '/panoramas/2.4.9.jpg', 'Тупик', '', 0, 0),
(2990044, 203011, '/panoramas/2.4.л3.jpg', 'Лестница', '', 0, 0),
(2990045, 203002, '/panoramas/2.4.л1.jpg', 'Главная лестница', '', 0, 0),
(2990046, 203005, '/panoramas/2.4.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 2990035 WHERE id = 203001;
UPDATE points SET panorama_id = 2990036 WHERE id = 203003;
UPDATE points SET panorama_id = 2990037 WHERE id = 203004;
UPDATE points SET panorama_id = 2990038 WHERE id = 203007;
UPDATE points SET panorama_id = 2990039 WHERE id = 203006;
UPDATE points SET panorama_id = 2990040 WHERE id = 203008;
UPDATE points SET panorama_id = 2990041 WHERE id = 203009;
UPDATE points SET panorama_id = 2990042 WHERE id = 203010;
UPDATE points SET panorama_id = 2990043 WHERE id = 203012;
UPDATE points SET panorama_id = 2990044 WHERE id = 203011;
UPDATE points SET panorama_id = 2990045 WHERE id = 203002;
UPDATE points SET panorama_id = 2990046 WHERE id = 203005;



-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(2990047, 204016, '/panoramas/2.5.1.jpg', 'Холл', '', 0, 0),
(2990048, 204011, '/panoramas/2.5.2.jpg', 'Коридор', '', 0, 0),
(2990049, 204021, '/panoramas/2.5.3.jpg', 'Коридор', '', 0, 0),
(2990050, 204019, '/panoramas/2.5.4.jpg', 'Перед лестницей', '', 0, 0),
(2990051, 204020, '/panoramas/2.5.5.jpg', 'Тупик', '', 0, 0),
(2990052, 204005, '/panoramas/2.5.6.jpg', 'Коридор', '', 0, 0),
(2990053, 204003, '/panoramas/2.5.7.jpg', 'Коридор', '', 0, 0),
(2990054, 204002, '/panoramas/2.5.8.jpg', 'У лестницы', '', 0, 0),
(2990055, 204001, '/panoramas/2.5.л3.jpg', 'Лестница', '', 0, 0),
(2990056, 204017, '/panoramas/2.5.л1.jpg', 'Главная лестница', '', 0, 0),
(2990057, 204018, '/panoramas/2.5.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 2990047 WHERE id = 204016;
UPDATE points SET panorama_id = 2990048 WHERE id = 204011;
UPDATE points SET panorama_id = 2990049 WHERE id = 204021;
UPDATE points SET panorama_id = 2990050 WHERE id = 204019;
UPDATE points SET panorama_id = 2990051 WHERE id = 204020;
UPDATE points SET panorama_id = 2990052 WHERE id = 204005;
UPDATE points SET panorama_id = 2990053 WHERE id = 204003;
UPDATE points SET panorama_id = 2990054 WHERE id = 204002;
UPDATE points SET panorama_id = 2990055 WHERE id = 204001;
UPDATE points SET panorama_id = 2990056 WHERE id = 204017;
UPDATE points SET panorama_id = 2990057 WHERE id = 204018;

--============ 10 корпус =============
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(10990001, 1001002, '/panoramas/10.1.1.jpg', 'Холл', '', 0, 0),
(10990002, 1001004, '/panoramas/10.1.2.jpg', 'Холл', '', 0, 0),
(10990003, 1001005, '/panoramas/10.1.3.jpg', 'Холл', '', 0, 0),
(10990004, 1001003, '/panoramas/10.1.л1.jpg', 'Лестница', '', 0, 0),
(10990005, 1001006, '/panoramas/10.1.л2.jpg', 'Лестница', '', 0, 0),
(10990007, 1002002, '/panoramas/10.2.2.jpg', 'У тренерской', '', 0, 0),
(10990008, 1002001, '/panoramas/10.2.л2.jpg', 'Лестница', '', 0, 0),
(10990009, 1002003, '/panoramas/10.2.1.jpg', 'Игровой зал', '', 0, 0),
(10990010, 1002004, '/panoramas/10.2.л1.jpg', 'Лестница', '', 0, 0),
(10990011, 1003008, '/panoramas/10.3.1.jpg', 'У 301', '', 0, 0),
(10990012, 1003006, '/panoramas/10.3.2.jpg', 'У 302', '', 0, 0),
(10990013, 1003001, '/panoramas/10.3.3.jpg', 'У лестницы', '', 0, 0),
(10990014, 1003002, '/panoramas/10.3.л2.jpg', 'Лестница', '', 0, 0),
(10990015, 1003007, '/panoramas/10.3.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 10990001 WHERE id = 1001002;
UPDATE points SET panorama_id = 10990002 WHERE id = 1001004;
UPDATE points SET panorama_id = 10990003 WHERE id = 1001005;
UPDATE points SET panorama_id = 10990004 WHERE id = 1001003;
UPDATE points SET panorama_id = 10990005 WHERE id = 1001006;
UPDATE points SET panorama_id = 10990007 WHERE id = 1002002;
UPDATE points SET panorama_id = 10990008 WHERE id = 1002001;
UPDATE points SET panorama_id = 10990009 WHERE id = 1002003;
UPDATE points SET panorama_id = 10990010 WHERE id = 1002004;
UPDATE points SET panorama_id = 10990011 WHERE id = 1003008;
UPDATE points SET panorama_id = 10990012 WHERE id = 1003006;
UPDATE points SET panorama_id = 10990013 WHERE id = 1003001;
UPDATE points SET panorama_id = 10990014 WHERE id = 1003002;
UPDATE points SET panorama_id = 10990015 WHERE id = 1003007;

-- 12 корпус
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(12990001, 1201006, '/panoramas/12.1.1.jpg', 'У лестницы', '', 0, 0),
(12990002, 1201033, '/panoramas/12.1.2.jpg', 'Коридор', '', 0, 0),
(12990003, 1201040, '/panoramas/12.1.3.jpg', 'Коридор', '', 0, 0),
(12990004, 1201044, '/panoramas/12.1.4.jpg', 'Коридор', '', 0, 0),
(12990005, 1201005, '/panoramas/12.1.л1.jpg', 'Лестница', '', 0, 0),
(12990006, 1201016, '/panoramas/12.1.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 12990001 WHERE id = 1201006;
UPDATE points SET panorama_id = 12990002 WHERE id = 1201033;
UPDATE points SET panorama_id = 12990003 WHERE id = 1201040;
UPDATE points SET panorama_id = 12990004 WHERE id = 1201044;
UPDATE points SET panorama_id = 12990005 WHERE id = 1201005;
UPDATE points SET panorama_id = 12990006 WHERE id = 1201016;

-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(12990007, 1202004, '/panoramas/12.2.1.jpg', 'Развилка', '', 0, 0),
(12990008, 1202037, '/panoramas/12.2.2.jpg', 'У лестницы', '', 0, 0),
(12990009, 1202039, '/panoramas/12.2.3.jpg', 'Холл', '', 0, 0),
(12990010, 1202044, '/panoramas/12.2.4.jpg', 'Коридор', '', 0, 0),
(12990011, 1202051, '/panoramas/12.2.5.jpg', 'Коридор у лестницы', '', 0, 0),
(12990012, 1202058, '/panoramas/12.2.6.jpg', 'Тупик', '', 0, 0),
(12990013, 1202030, '/panoramas/12.2.л2.jpg', 'Лестница', '', 0, 0),
(12990014, 1202022, '/panoramas/12.2.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 12990007 WHERE id = 1202004;
UPDATE points SET panorama_id = 12990008 WHERE id = 1202037;
UPDATE points SET panorama_id = 12990009 WHERE id = 1202039;
UPDATE points SET panorama_id = 12990010 WHERE id = 1202044;
UPDATE points SET panorama_id = 12990011 WHERE id = 1202051;
UPDATE points SET panorama_id = 12990012 WHERE id = 1202058;
UPDATE points SET panorama_id = 12990013 WHERE id = 1202030;
UPDATE points SET panorama_id = 12990014 WHERE id = 1202022;

-- 3 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(12990015, 1203004, '/panoramas/12.3.1.jpg', 'Развилка', '', 0, 0),
(12990016, 1203035, '/panoramas/12.2.2.jpg', 'У лестницы', '', 0, 0),
(12990017, 1203037, '/panoramas/12.2.3.jpg', 'Коридор', '', 0, 0),
(12990018, 1203043, '/panoramas/12.2.4.jpg', 'Коридор', '', 0, 0),
(12990019, 1203050, '/panoramas/12.2.5.jpg', 'Тупик', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 12990015 WHERE id = 1203004;
UPDATE points SET panorama_id = 12990016 WHERE id = 1203035;
UPDATE points SET panorama_id = 12990017 WHERE id = 1203037;
UPDATE points SET panorama_id = 12990018 WHERE id = 1203043;
UPDATE points SET panorama_id = 12990019 WHERE id = 1203050;

--=============== 11 корпус =============
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(11990001, 1101010, '11.1.1.jpeg', '11.1.1', '', 0, 0),
(11990002, 1101014, '11.1.2.jpeg', '11.1.2', '', 0, 0),
(11990003, 1101007, '11.1.л1.jpeg', '11.1.л1', '', 0, 0),
(11990004, 1102006, '11.2.1.jpeg', '11.2.1', '', 0, 0),
(11990005, 1102013, '11.2.2.jpeg', '11.2.2', '', 0, 0),
(11990006, 1102001, '11.1.л1.jpeg', 'повтор 11.1.л1', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 11990001 WHERE id = 1101010;
UPDATE points SET panorama_id = 11990002 WHERE id = 1101014;
UPDATE points SET panorama_id = 11990003 WHERE id = 1101007;
UPDATE points SET panorama_id = 11990004 WHERE id = 1102006;
UPDATE points SET panorama_id = 11990005 WHERE id = 1102013;
UPDATE points SET panorama_id = 11990006 WHERE id = 1102001;

--============ 6 корпус===============
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(6990002, 601021, '/panoramas/6.1.л2.jpg', 'Лестница', '', 0, 0),
(6990003, 601038, '/panoramas/6.1.5.jpg', 'Коридор', '', 0, 0),
(6990004, 601040, '/panoramas/6.1.6.jpg', 'У лестницы', '', 0, 0),
(6990005, 601033, '/panoramas/6.1.4.jpg', 'Коридор', '', 0, 0),
(6990006, 601029, '/panoramas/6.1.3.jpg', 'Коридор', '', 0, 0),
(6990007, 601042, '/panoramas/6.1.2.jpg', 'Коридор', '', 0, 0),
(6990008, 601022, '/panoramas/6.1.1.jpg', 'У выхода', '', 0, 0),
(6990009, 601020, '/panoramas/6.1.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 6990002 WHERE id = 601021;
UPDATE points SET panorama_id = 6990003 WHERE id = 601038;
UPDATE points SET panorama_id = 6990004 WHERE id = 601040;
UPDATE points SET panorama_id = 6990005 WHERE id = 601033;
UPDATE points SET panorama_id = 6990006 WHERE id = 601029;
UPDATE points SET panorama_id = 6990007 WHERE id = 601042;
UPDATE points SET panorama_id = 6990008 WHERE id = 601022;
UPDATE points SET panorama_id = 6990009 WHERE id = 601020;

-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(6990010, 602045, '/panoramas/6.2.5.jpg', 'Коридор', '', 0, 0),
(6990011, 602047, '/panoramas/6.2.4.jpg', 'Коридор', '', 0, 0),
(6990012, 602053, '/panoramas/6.2.3.jpg', 'Коридор', '', 0, 0),
(6990013, 602059, '/panoramas/6.2.2.jpg', 'Коридор', '', 0, 0),
(6990014, 602032, '/panoramas/6.2.1.jpg', 'У лестницы', '', 0, 0),
(6990015, 602022, '/panoramas/6.2.л2.jpg', 'Лестница', '', 0, 0),
(6990016, 602029, '/panoramas/6.2.л1.jpg', 'Лестница', '', 0, 0),
(6990017, 602035, '/panoramas/6.2.8.jpg', 'Коридор', '', 0, 0),
(6990018, 602040, '/panoramas/6.2.7.jpg', 'Поворот', '', 0, 0),
(6990019, 602043, '/panoramas/6.2.6.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 6990010 WHERE id = 602045;
UPDATE points SET panorama_id = 6990011 WHERE id = 602047;
UPDATE points SET panorama_id = 6990012 WHERE id = 602053;
UPDATE points SET panorama_id = 6990013 WHERE id = 602059;
UPDATE points SET panorama_id = 6990014 WHERE id = 602032;
UPDATE points SET panorama_id = 6990015 WHERE id = 602022;
UPDATE points SET panorama_id = 6990016 WHERE id = 602029;
UPDATE points SET panorama_id = 6990017 WHERE id = 602035;
UPDATE points SET panorama_id = 6990018 WHERE id = 602040;
UPDATE points SET panorama_id = 6990019 WHERE id = 602043;

-- 3 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(6990020, 602037, '/panoramas/6.3.5.jpg', 'У лестницы', '', 0, 0),
(6990021, 603036, '/panoramas/6.3.л2.jpg', 'Лестница', '', 0, 0),
(6990022, 603042, '/panoramas/6.3.4.jpg', 'Коридор', '', 0, 0),
(6990023, 603046, '/panoramas/6.3.3.jpg', 'Поворот', '', 0, 0),
(6990024, 603048, '/panoramas/6.3.2.jpg', 'Коридор', '', 0, 0),
(6990025, 603052, '/panoramas/6.3.1.jpg', 'У лестницы', '', 0, 0),
(6990026, 603035, '/panoramas/6.3.л1.jpg', 'Лестница', '', 0, 0),
(6990027, 603059, '/panoramas/6.3.8.jpg', 'Коридор', '', 0, 0),
(6990028, 603063, '/panoramas/6.3.7.jpg', 'Поворот', '', 0, 0),
(6990029, 603066, '/panoramas/6.3.6.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 6990020 WHERE id = 602037;
UPDATE points SET panorama_id = 6990021 WHERE id = 603036;
UPDATE points SET panorama_id = 6990022 WHERE id = 603042;
UPDATE points SET panorama_id = 6990023 WHERE id = 603046;
UPDATE points SET panorama_id = 6990024 WHERE id = 603048;
UPDATE points SET panorama_id = 6990025 WHERE id = 603052;
UPDATE points SET panorama_id = 6990026 WHERE id = 603035;
UPDATE points SET panorama_id = 6990027 WHERE id = 603059;
UPDATE points SET panorama_id = 6990028 WHERE id = 603063;
UPDATE points SET panorama_id = 6990029 WHERE id = 603066;

-- 4 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(6990030, 604053, '/panoramas/6.4.5.jpg', 'У лестницы', '', 0, 0),
(6990031, 604037, '/panoramas/6.4.л2.jpg', 'Лестница', '', 0, 0),
(6990032, 604047, '/panoramas/6.4.4.jpg', 'Коридор', '', 0, 0),
(6990033, 604041, '/panoramas/6.4.3.jpg', 'Поворот', '', 0, 0),
(6990034, 604071, '/panoramas/6.4.2.jpg', 'Коридор', '', 0, 0),
(6990035, 604068, '/panoramas/6.4.1.jpg', 'У лестницы', '', 0, 0),
(6990036, 604036, '/panoramas/6.4.л1.jpg', 'Лестница', '', 0, 0),
(6990037, 604066, '/panoramas/6.4.8.jpg', 'Коридор', '', 0, 0),
(6990038, 604060, '/panoramas/6.4.7.jpg', 'Поворот', '', 0, 0),
(6990039, 604056, '/panoramas/6.4.6.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 6990030 WHERE id = 604053;
UPDATE points SET panorama_id = 6990031 WHERE id = 604037;
UPDATE points SET panorama_id = 6990032 WHERE id = 604047;
UPDATE points SET panorama_id = 6990033 WHERE id = 604041;
UPDATE points SET panorama_id = 6990034 WHERE id = 604071;
UPDATE points SET panorama_id = 6990035 WHERE id = 604068;
UPDATE points SET panorama_id = 6990036 WHERE id = 604036;
UPDATE points SET panorama_id = 6990037 WHERE id = 604066;
UPDATE points SET panorama_id = 6990038 WHERE id = 604060;
UPDATE points SET panorama_id = 6990039 WHERE id = 604056;

-- ================== 7 корпус ====================
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(7990001, 72005, '/panoramas/7.1.1.jpg', 'Холл СДК', '', 0, 0),
(7990002, 72004, '/panoramas/7.1.2.jpg', 'Коридор', '', 0, 0),
(7990003, 72002, '/panoramas/7.1.3.jpg', 'Развилка', '', 0, 0),
(7990004, 72003, '/panoramas/7.1.л3.jpg', 'Лестница', '', 0, 0),
(7990005, 72001, '/panoramas/7.1.л2.jpg', 'Лестница', '', 0, 0),
(7990006, 72006, '/panoramas/7.1.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 7990001 WHERE id = 72005;
UPDATE points SET panorama_id = 7990002 WHERE id = 72004;
UPDATE points SET panorama_id = 7990003 WHERE id = 72002;
UPDATE points SET panorama_id = 7990004 WHERE id = 72003;
UPDATE points SET panorama_id = 7990005 WHERE id = 72001;
UPDATE points SET panorama_id = 7990006 WHERE id = 72006;
-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(7990007, 72129, '/panoramas/7.2.л3.jpg', 'Лестница', '', 0, 0),
(7990008, 702147, '/panoramas/7.2.6.jpg', 'Коридор', '', 0, 0),
(7990009, 702141, '/panoramas/7.2.5.jpg', 'Поворот', '', 0, 0),
(7990010, 702136, '/panoramas/7.2.л2.jpg', 'Лестница', '', 0, 0),
(7990011, 702137, '/panoramas/7.2.4.jpg', 'Коридор', '', 0, 0),
(7990012, 702142, '/panoramas/7.2.3.jpg', 'Развилка', '', 0, 0),
(7990013, 702144, '/panoramas/7.2.2.jpg', 'Холл', '', 0, 0),
(7990014, 702153, '/panoramas/7.2.1.jpg', 'У лестницы', '', 0, 0),
(7990015, 702134, '/panoramas/7.2.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 7990007 WHERE id = 72129;
UPDATE points SET panorama_id = 7990008 WHERE id = 702147;
UPDATE points SET panorama_id = 7990009 WHERE id = 702141;
UPDATE points SET panorama_id = 7990010 WHERE id = 702136;
UPDATE points SET panorama_id = 7990011 WHERE id = 702137;
UPDATE points SET panorama_id = 7990012 WHERE id = 702142;
UPDATE points SET panorama_id = 7990013 WHERE id = 702144;
UPDATE points SET panorama_id = 7990014 WHERE id = 702153;
UPDATE points SET panorama_id = 7990015 WHERE id = 702134;
-- 3 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(7990016, 703007, '/panoramas/7.3.л2.jpg', 'Лестница', '', 0, 0),
(7990017, 703009, '/panoramas/7.3.л1.jpg', 'Лестница', '', 0, 0),
(7990018, 703012, '/panoramas/7.3.1.jpg', 'Коридор', '', 0, 0),
(7990019, 703011, '/panoramas/7.3.2.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 7990016 WHERE id = 703007;
UPDATE points SET panorama_id = 7990017 WHERE id = 703009;
UPDATE points SET panorama_id = 7990018 WHERE id = 703012;
UPDATE points SET panorama_id = 7990019 WHERE id = 703011;
--4 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(7990020, 704004, '/panoramas/7.4.2.jpg', 'Коридор', '', 0, 0),
(7990021, 704007, '/panoramas/7.4.1.jpg', 'У балконов', '', 0, 0),
(7990022, 704006, '/panoramas/7.4.л1.jpg', 'Лестница', '', 0, 0),
(7990023, 704002, '/panoramas/7.4.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 7990020 WHERE id = 704004;
UPDATE points SET panorama_id = 7990021 WHERE id = 704007;
UPDATE points SET panorama_id = 7990022 WHERE id = 704006;
UPDATE points SET panorama_id = 7990023 WHERE id = 704002;

-- ============ 8 корпус ================
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990001, 801014, '/panoramas/8.1.2.jpg', 'Коридор', '', 0, 0),
(8990002, 801021, '/panoramas/8.1.3.jpg', 'Поворот', '', 0, 0),
(8990003, 801005, '/panoramas/8.1.л2.jpg', 'Лестница', '', 0, 0),
(8990004, 801033, '/panoramas/8.1.1.jpg', 'Холл', '', 0, 0),
(8990005, 801036, '/panoramas/8.1.л1.jpg', 'Главная лестница', '', 0, 0),
(8990006, 801044, '/panoramas/8.1.4.jpg', 'Поворот', '', 0, 0),
(8990007, 801046, '/panoramas/8.1.л3.jpg', 'Лестница', '', 0, 0),
(8990008, 801059, '/panoramas/8.1.5.jpg', 'Тупик', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990001 WHERE id = 801014;
UPDATE points SET panorama_id = 8990002 WHERE id = 801021;
UPDATE points SET panorama_id = 8990003 WHERE id = 801005;
UPDATE points SET panorama_id = 8990004 WHERE id = 801033;
UPDATE points SET panorama_id = 8990005 WHERE id = 801036;
UPDATE points SET panorama_id = 8990006 WHERE id = 801044;
UPDATE points SET panorama_id = 8990007 WHERE id = 801046;
UPDATE points SET panorama_id = 8990008 WHERE id = 801059;
-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990001, 802010, '/panoramas/8.2.2.jpg', 'Коридор', '', 0, 0),
(8990002, 802019, '/panoramas/8.2.л2.jpg', 'Лестница', '', 0, 0),
(8990003, 802022, '/panoramas/8.2.3.jpg', 'Поворот', '', 0, 0),
(8990004, 802047, '/panoramas/8.2.1.jpg', 'Холл', '', 0, 0),
(8990005, 802040, '/panoramas/8.2.л1.jpg', 'Главная лестница', '', 0, 0),
(8990006, 802069, '/panoramas/8.2.4.jpg', 'Поворот', '', 0, 0),
(8990007, 802055, '/panoramas/8.2.л3.jpg', 'Лестница', '', 0, 0),
(8990008, 802078, '/panoramas/8.2.5.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990001 WHERE id = 802010;
UPDATE points SET panorama_id = 8990002 WHERE id = 802019;
UPDATE points SET panorama_id = 8990003 WHERE id = 802022;
UPDATE points SET panorama_id = 8990004 WHERE id = 802047;
UPDATE points SET panorama_id = 8990005 WHERE id = 802040;
UPDATE points SET panorama_id = 8990006 WHERE id = 802069;
UPDATE points SET panorama_id = 8990007 WHERE id = 802055;
UPDATE points SET panorama_id = 8990008 WHERE id = 802078;
--3 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990009, 803017, '/panoramas/8.3.2.jpg', 'Коридор', '', 0, 0),
(8990010, 803025, '/panoramas/8.3.3.jpg', 'Поворот', '', 0, 0),
(8990011, 803006, '/panoramas/8.3.л2.jpg', 'Лестница', '', 0, 0),
(8990012, 803049, '/panoramas/8.3.1.jpg', 'Холл', '', 0, 0),
(8990013, 803042, '/panoramas/8.3.л1.jpg', 'Главная лестница', '', 0, 0),
(8990014, 803057, '/panoramas/8.3.4.jpg', 'Поворот', '', 0, 0),
(8990015, 803059, '/panoramas/8.3.л3.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990009 WHERE id = 803017;
UPDATE points SET panorama_id = 8990010 WHERE id = 803025;
UPDATE points SET panorama_id = 8990011 WHERE id = 803006;
UPDATE points SET panorama_id = 8990012 WHERE id = 803049;
UPDATE points SET panorama_id = 8990013 WHERE id = 803042;
UPDATE points SET panorama_id = 8990014 WHERE id = 803057;
UPDATE points SET panorama_id = 8990015 WHERE id = 803059;
--4 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990009, 804012, '/panoramas/8.4.2.jpg', 'Коридор', '', 0, 0),
(8990010, 804021, '/panoramas/8.4.3.jpg', 'Поворот', '', 0, 0),
(8990011, 804006, '/panoramas/8.4.л2.jpg', 'Лестница', '', 0, 0),
(8990012, 804046, '/panoramas/8.4.1.jpg', 'Холл', '', 0, 0),
(8990013, 804039, '/panoramas/8.4.л1.jpg', 'Главная лестница', '', 0, 0),
(8990014, 804055, '/panoramas/8.4.4.jpg', 'Поворот', '', 0, 0),
(8990015, 804057, '/panoramas/8.4.л3.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990009 WHERE id = 804012;
UPDATE points SET panorama_id = 8990010 WHERE id = 804021;
UPDATE points SET panorama_id = 8990011 WHERE id = 804006;
UPDATE points SET panorama_id = 8990012 WHERE id = 804046;
UPDATE points SET panorama_id = 8990013 WHERE id = 804039;
UPDATE points SET panorama_id = 8990014 WHERE id = 804055;
UPDATE points SET panorama_id = 8990015 WHERE id = 804057;
-- 5 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990016, 805013, '/panoramas/8.5.2.jpg', 'Коридор', '', 0, 0),
(8990017, 805023, '/panoramas/8.5.3.jpg', 'Поворот', '', 0, 0),
(8990018, 805005, '/panoramas/8.5.л2.jpg', 'Лестница', '', 0, 0),
(8990019, 805046, '/panoramas/8.5.1.jpg', 'Холл', '', 0, 0),
(8990020, 805039, '/panoramas/8.5.л1.jpg', 'Главная лестница', '', 0, 0),
(8990021, 805055, '/panoramas/8.5.4.jpg', 'Поворот', '', 0, 0),
(8990022, 805060, '/panoramas/8.5.л3.jpg', 'Лестница', '', 0, 0),
(8990023, 805076, '/panoramas/8.5.5.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990016 WHERE id = 805013;
UPDATE points SET panorama_id = 8990017 WHERE id = 805023;
UPDATE points SET panorama_id = 8990018 WHERE id = 805005;
UPDATE points SET panorama_id = 8990019 WHERE id = 805046;
UPDATE points SET panorama_id = 8990020 WHERE id = 805039;
UPDATE points SET panorama_id = 8990021 WHERE id = 805055;
UPDATE points SET panorama_id = 8990022 WHERE id = 805060;
UPDATE points SET panorama_id = 8990023 WHERE id = 805076;
--6 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990024, 806014, '/panoramas/8.6.2.jpg', 'Коридор', '', 0, 0),
(8990025, 806023, '/panoramas/8.6.3.jpg', 'Поворот', '', 0, 0),
(8990026, 806005, '/panoramas/8.6.л2.jpg', 'Лестница', '', 0, 0),
(8990027, 806047, '/panoramas/8.6.1.jpg', 'Холл', '', 0, 0),
(8990028, 806041, '/panoramas/8.6.л1.jpg', 'Главная лестница', '', 0, 0),
(8990029, 806057, '/panoramas/8.6.4.jpg', 'Поворот', '', 0, 0),
(8990030, 806056, '/panoramas/8.6.л3.jpg', 'Лестница', '', 0, 0),
(8990031, 806075, '/panoramas/8.6.5.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990024 WHERE id = 806014;
UPDATE points SET panorama_id = 8990025 WHERE id = 806023;
UPDATE points SET panorama_id = 8990026 WHERE id = 806005;
UPDATE points SET panorama_id = 8990027 WHERE id = 806047;
UPDATE points SET panorama_id = 8990028 WHERE id = 806041;
UPDATE points SET panorama_id = 8990029 WHERE id = 806057;
UPDATE points SET panorama_id = 8990030 WHERE id = 806056;
UPDATE points SET panorama_id = 8990031 WHERE id = 806075;
--7 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(8990032, 807009, '/panoramas/8.7.2.jpg', 'Коридор', '', 0, 0),
(8990033, 807015, '/panoramas/8.7.3.jpg', 'Поворот', '', 0, 0),
(8990034, 807004, '/panoramas/8.7.л2.jpg', 'Лестница', '', 0, 0),
(8990035, 807030, '/panoramas/8.7.1.jpg', 'Холл', '', 0, 0),
(8990036, 807026, '/panoramas/8.7.л1.jpg', 'Главная', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 8990032 WHERE id = 807009;
UPDATE points SET panorama_id = 8990033 WHERE id = 807015;
UPDATE points SET panorama_id = 8990034 WHERE id = 807004;
UPDATE points SET panorama_id = 8990035 WHERE id = 807030;
UPDATE points SET panorama_id = 8990036 WHERE id = 807026;

-- ============ 3 корпус ================
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(3990001, 301001, '/panoramas/3.1.1.jpg', 'У лестницы', '', 0, 0),
(3990002, 301003, '/panoramas/3.1.2.jpg', 'Тупик', '', 0, 0),
(3990003, 301004, '/panoramas/3.1.3.jpg', 'Тупик', '', 0, 0),
(3990004, 301011, '/panoramas/3.1.4.jpg', 'У лестницы', '', 0, 0),
(3990005, 301010, '/panoramas/3.1.л2.jpg', 'Лестница', '', 0, 0),
(3990006, 301002, '/panoramas/3.1.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 3990001 WHERE id = 301001;
UPDATE points SET panorama_id = 3990002 WHERE id = 301003;
UPDATE points SET panorama_id = 3990003 WHERE id = 301004;
UPDATE points SET panorama_id = 3990004 WHERE id = 301011;
UPDATE points SET panorama_id = 3990005 WHERE id = 301010;
UPDATE points SET panorama_id = 3990006 WHERE id = 301002;
-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(3990007, 302002, '/panoramas/3.2.1.jpg', 'У лестницы', '', 0, 0),
(3990008, 302003, '/panoramas/3.2.2.jpg', 'Коридор', '', 0, 0),
(3990009, 303004, '/panoramas/3.2.3.jpg', 'У лестницы', '', 0, 0),
(3990010, 302005, '/panoramas/3.2.л2.jpg', 'Лестница', '', 0, 0),
(3990011, 302001, '/panoramas/3.2.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 3990007 WHERE id = 302002;
UPDATE points SET panorama_id = 3990008 WHERE id = 302003;
UPDATE points SET panorama_id = 3990009 WHERE id = 302004;
UPDATE points SET panorama_id = 3990010 WHERE id = 302005;
UPDATE points SET panorama_id = 3990011 WHERE id = 302001;
-- 3 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(3990012, 303002, '/panoramas/3.3.1.jpg', 'У лестницы', '', 0, 0),
(3990013, 303011, '/panoramas/3.3.2.jpg', 'Коридор', '', 0, 0),
(3990014, 303021, '/panoramas/3.3.2.jpg', 'Коридор', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 3990012 WHERE id = 303002;
UPDATE points SET panorama_id = 3990013 WHERE id = 303011;
UPDATE points SET panorama_id = 3990014 WHERE id = 303021;

-- ================ 4 корпус =============
-- 1 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(4990002, 401002, '/panoramas/4.1.2.jpg', 'Коридор', '', 0, 0),
(4990003, 401001, '/panoramas/4.1.1.jpg', 'Холл', '', 0, 0),
(4990004, 401003, '/panoramas/4.1.3.jpg', 'Поворот', '', 0, 0),
(4990005, 401004, '/panoramas/4.1.л1.jpg', 'Лестница', '', 0, 0),
(4990006, 401005, '/panoramas/4.1.л2.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 4990002 WHERE id = 401002;
UPDATE points SET panorama_id = 4990003 WHERE id = 401001;
UPDATE points SET panorama_id = 4990004 WHERE id = 401003;
UPDATE points SET panorama_id = 4990005 WHERE id = 401004;
UPDATE points SET panorama_id = 4990006 WHERE id = 401005;
-- 2 этаж
-- ПАНОРАМЫ
INSERT INTO panoramas (id, point_id, image_path, title, description, yaw, pitch) VALUES 
(4990007, 402002, '/panoramas/4.2.1.jpg', 'Поворот', '', 0, 0),
(4990008, 402003, '/panoramas/4.2.2.jpg', 'Коридор', '', 0, 0),
(4990009, 402004, '/panoramas/4.2.3.jpg', 'Поворот', '', 0, 0),
(4990010, 402011, '/panoramas/4.2.л2.jpg', 'Лестница', '', 0, 0),
(4990011, 402001, '/panoramas/4.2.л1.jpg', 'Лестница', '', 0, 0)
ON CONFLICT (id) DO NOTHING;

-- ОБНОВЛЕНИЕ ТОЧЕК (установка panorama_id)
UPDATE points SET panorama_id = 4990007 WHERE id = 402002;
UPDATE points SET panorama_id = 4990008 WHERE id = 402003;
UPDATE points SET panorama_id = 4990009 WHERE id = 402004;
UPDATE points SET panorama_id = 4990010 WHERE id = 402011;
UPDATE points SET panorama_id = 4990011 WHERE id = 402001;
