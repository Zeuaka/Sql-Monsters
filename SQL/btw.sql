-- между корпусами
INSERT INTO edges (id, from_point_id, to_point_id, distance_meters, direction_text, floor_transition) VALUES 
(715014, 702139, 602007, 12, '', true),
(715016, 702139, 802001, 28, '', true),
(715017, 101997, 801060, 60, '', true),
(715021, 802001, 602007, 25, '', true),
(1011000, 101002, 1202099, 5, '', true),
(16050086, 1602073, 11289, 0.1, '', true)
ON CONFLICT (id) DO NOTHING;