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
