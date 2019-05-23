SELECT * FROM packing_combine_code;

INSERT INTO packing_combine_code(pcc_code, pcc_type)
VALUES(1, '전체 합포');

INSERT INTO packing_combine_code(pcc_code, pcc_type)
VALUES(2, '따로 포장');

INSERT INTO packing_combine_code(pcc_code, pcc_type)
VALUES(3, '야채 포장');


SELECT * FROM excel_order_seq;

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(1, '한우', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(2, '한우 세트', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(3, '한돈', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(4, '한돈 세트', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(5, '냉동육', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(6, '냉동육 세트', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(7, '양념육 냉동', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(8, '야채', 'NULL');

INSERT INTO excel_order_seq(eos_seq, eos_location, eos_code)
VALUES(9, '냉장육 등', 'NULL');