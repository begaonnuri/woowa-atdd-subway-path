INSERT INTO STATION VALUES (1, '중랑', CURRENT_TIME());
INSERT INTO STATION VALUES (2, '청량리', CURRENT_TIME());
INSERT INTO STATION VALUES (3, '왕십리', CURRENT_TIME());
INSERT INTO STATION VALUES (4, '신촌', CURRENT_TIME());
INSERT INTO STATION VALUES (5, '합정', CURRENT_TIME());

INSERT INTO LINE VALUES (1, '경의중앙선', '05:10', '22:10', 10, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO LINE VALUES (2, '분당선', '05:20', '23:20', 15, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO LINE VALUES (3, '2호선', '05:30', '23:30', 20, CURRENT_TIME(), CURRENT_TIME());

INSERT INTO EDGE VALUES (1, 1, 1, null, 10, 10, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO EDGE VALUES (2, 1, 2, 1, 1, 10, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO EDGE VALUES (3, 1, 3, 2, 10, 10, CURRENT_TIME(), CURRENT_TIME());

INSERT INTO EDGE VALUES (4, 2, 2, null, 10, 10, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO EDGE VALUES (5, 2, 3, 2, 1, 10, CURRENT_TIME(), CURRENT_TIME());

INSERT INTO EDGE VALUES (6, 3, 4, null, 10, 10, CURRENT_TIME(), CURRENT_TIME());
INSERT INTO EDGE VALUES (7, 3, 5, 4, 10, 10, CURRENT_TIME(), CURRENT_TIME());