#원가 분류 코드
INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1001-000-001','한우');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1002-000-001','한돈');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1003-000-001','국내산 기타육');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0101-000-001','수입산 소');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0102-000-001','수입산 돼지');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0103-000-001','수입산 기타육');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1001-100-001','국내산 가공육');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0101-100-001','수입산 가공육');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1004-100-001','기타 국내산 가공품');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0104-100-001','기타 수입산 가공품');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1010-100-001','국내산 유제품');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0110-100-001','수입산 유제품');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1030-000-001','국내산 야채/채소');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0130-000-001','수입산 야채/채소');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1031-000-001','국내산 과일');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0131-000-001','수입산 과일');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0040-000-001','조미료');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0050-000-001','향신료');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0060-100-001','장류');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0070-000-001','소스');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('1080-000-001','국내산 잡곡');

INSERT INTO cost_code(cc_code, cc_code_type)
VALUES('0180-000-001','수입산 잡곡');

SELECT * 
FROM cost_code
ORDER BY cc_pk;