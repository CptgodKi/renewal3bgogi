-- 상품
CREATE TABLE `products` (
	`product_pk`         INT           NOT NULL, -- 상품 고유 번호
	`cf_fk`              INT           NOT NULL, -- 상품 분류 고유 번호
	`product_name`       VARCHAR(150)  NOT NULL, -- 상품명
	`product_flag`       TINYINT(1)    NULL     DEFAULT 1, -- 상품의 사용 여부
	`product_remark`     VARCHAR(2000) NULL,     -- 비고사항
	`product_memo1`      VARCHAR(800)  NULL,     -- 상품 메모1
	`product_memo2`      VARCHAR(800)  NULL,     -- 상품 메모2
	`product_memo3`      VARCHAR(800)  NULL,     -- 상품 메모3
	`product_memo4`      VARCHAR(800)  NULL,     -- 상품 메모4
	`product_memo5`      VARCHAR(800)  NULL,     -- 상품 메모5
	`product_memo6`      VARCHAR(800)  NULL,     -- 상품 메모6
	`product_thumbnail1` VARCHAR(200)  NULL,     -- 상품 사진1
	`product_thumbnail2` VARCHAR(200)  NULL,     -- 상품 사진2
	`product_regdate`    DATETIME      NULL     DEFAULT NOW() -- 상품 등록일
);

-- 상품
ALTER TABLE `products`
	ADD CONSTRAINT `PK_products` -- 상품 기본키
		PRIMARY KEY (
			`product_pk` -- 상품 고유 번호
		);

ALTER TABLE `products`
	MODIFY COLUMN `product_pk` INT NOT NULL AUTO_INCREMENT;

-- 옵션
CREATE TABLE `options` (
	`option_pk`                INT           NOT NULL, -- 옵션 고유 번호
	`eo_fk`                    INT           NOT NULL, -- 주문서 위치 고유 번호
	`res_fk`                   INT           NULL,     -- 자재 고유 번호
	`event_fk`                 INT           NULL,     -- 이벤트 고유 번호
	`pcc_fk`                   INT(3)        NOT NULL, -- 합포 분류 고유 번호
	`product_fk`               INT           NOT NULL, -- 상품 고유 번호
	`option_name`              VARCHAR(200)  NOT NULL, -- 옵션명
	`option_price`             INT           NOT NULL DEFAULT 0, -- 옵션 가격
	`option_width_size`        INT           NULL     DEFAULT 1, -- 상품 가로 길이
	`option_height_size`       INT           NULL     DEFAULT 1, -- 상품 높이
	`option_length_size`       INT           NULL     DEFAULT 1, -- 상품 세로
	`option_flag`              TINYINT(1)    NOT NULL DEFAULT 1, -- 옵션 사용 여부
	`option_seq`               INT           NOT NULL DEFAULT 0, -- 옵션 순서
	`option_barcode_number1`   VARCHAR(25)   NULL     DEFAULT 10101010, -- 바코드1
	`option_barcode_number2`   VARCHAR(25)   NULL     DEFAULT 01010101, -- 바코드2
	`option_remark`            VARCHAR(2000) NULL,     -- 비고사항
	`option_tax_flag`          TINYINT(1)    NULL     DEFAULT 1, -- 면세 여부
	`option_stock_flag`        TINYINT(1)    NULL     DEFAULT 0, -- 재고 체크 여부
	`option_stock`             INT           NULL     DEFAULT 0, -- 상품 재고
	`option_stock_max_alarm`   INT           NULL     DEFAULT 50, -- 재고 알람 개수
	`option_excel_color_check` TINYINT(1)    NULL     DEFAULT 0, -- 엑셀 컬러 여부
	`option_memo1`             VARCHAR(800)  NULL,     -- 옵션 메모1
	`option_memo2`             VARCHAR(800)  NULL,     -- 옵션 메모2
	`option_memo3`             VARCHAR(800)  NULL,     -- 옵션 메모3
	`option_memo4`             VARCHAR(800)  NULL,     -- 옵션 메모4
	`option_thumbnail1`        VARCHAR(200)  NULL,     -- 옵션 사진1
	`option_thumbnail2`        VARCHAR(200)  NULL,     -- 옵션 사진2
	`option_update`            TIMESTAMP     NULL     DEFAULT NOW(), -- 옵션 수정일
	`option_regdate`           DATETIME      NULL     DEFAULT NOW() -- 옵션 등록일
);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `PK_options` -- 옵션 기본키
		PRIMARY KEY (
			`option_pk` -- 옵션 고유 번호
		);

ALTER TABLE `options`
	MODIFY COLUMN `option_pk` INT NOT NULL AUTO_INCREMENT;

-- 이벤트
CREATE TABLE `events` (
	`event_pk`            INT           NOT NULL, -- 이벤트 고유 번호
	`ec_fk`               INT           NULL,     -- 이벤트분류코드 고유번호
	`event_name`          VARCHAR(300)  NULL,     -- 이벤트명
	`event_store`         VARCHAR(40)   NULL     DEFAULT '스마트스토어', -- 이벤트 판매처
	`event_start`         DATETIME      NULL     DEFAULT NOW(), -- 이벤트 시작 날짜
	`event_end`           DATETIME      NULL     DEFAULT NOW(), -- 이벤트 종료 날짜
	`event_multiple_flag` TINYINT(1)    NULL     DEFAULT 0, -- 상품 배수 여부
	`event_multiple_each` INT           NULL     DEFAULT 1, -- 상품 배수 개수
	`event_freebie_flag`  TINYINT(1)    NULL     DEFAULT 0, -- 사은품 여부
	`event_minimum_price` INT           NULL     DEFAULT 0, -- 사은품 최소가
	`event_maxinum_price` INT           NULL     DEFAULT 1, -- 사은품 최대가
	`event_target_option` INT           NULL     DEFAULT 0, -- 이벤트 대상 옵션
	`event_target_each`   INT           NULL     DEFAULT 1, -- 이벤트 대상 갯수
	`event_price`         INT           NULL     DEFAULT 0, -- 이벤트 가격
	`event_detail`        VARCHAR(2000) NULL,     -- 이벤트 상세사항
	`event_regdate`       DATETIME      NULL     DEFAULT NOW() -- 이벤트 등록일
);

-- 이벤트
ALTER TABLE `events`
	ADD CONSTRAINT `PK_events` -- 이벤트 기본키
		PRIMARY KEY (
			`event_pk` -- 이벤트 고유 번호
		);

ALTER TABLE `events`
	MODIFY COLUMN `event_pk` INT NOT NULL AUTO_INCREMENT;

-- 상품 분류
CREATE TABLE `classification` (
	`cf_pk`        INT         NOT NULL, -- 상품 분류 고유 번호
	`cf_code`      INT         NOT NULL, -- 분류 코드
	`cf_code_type` VARCHAR(70) NOT NULL, -- 분류 이름
	`cf_regdate`   TIMESTAMP   NULL     DEFAULT NOW() -- 분류 등록일
);

-- 상품 분류
ALTER TABLE `classification`
	ADD CONSTRAINT `PK_classification` -- 상품 분류 기본키
		PRIMARY KEY (
			`cf_pk` -- 상품 분류 고유 번호
		);

ALTER TABLE `classification`
	MODIFY COLUMN `cf_pk` INT NOT NULL AUTO_INCREMENT;

-- 상품매칭
CREATE TABLE `product_matching` (
	`pm_pk`                 INT          NOT NULL, -- 매칭고유 번호
	`product_fk`            INT          NULL,     -- 상품 고유 번호
	`om_fk`                 INT          NULL,     -- 옵션매칭 고유번호
	`pm_store_product_name` VARCHAR(150) NOT NULL, -- 매칭 상품명
	`pm_each_flag`          TINYINT(1)   NULL     DEFAULT 0, -- 개별출력여부
	`pm_eachs`              INT          NULL     DEFAULT 0, -- 개별출력 개수
	`pm_regdate`            TIMESTAMP    NOT NULL DEFAULT NOW() -- 매칭 등록일
);

-- 상품매칭
ALTER TABLE `product_matching`
	ADD CONSTRAINT `PK_product_matching` -- 상품매칭 기본키
		PRIMARY KEY (
			`pm_pk` -- 매칭고유 번호
		);

ALTER TABLE `product_matching`
	MODIFY COLUMN `pm_pk` INT NOT NULL AUTO_INCREMENT;

-- 주문서
CREATE TABLE `orders` (
	`or_pk`                        INT           NOT NULL, -- 주문서 고유 번호
	`pm_fk`                        INT           NULL,     -- 매칭고유 번호
	`or_serial_special_number`     VARCHAR(30)   NULL,     -- 주문서 고유 특수 번호
	`or_buyer_id`                  VARCHAR(40)   NULL,     -- 구매자 아이디
	`or_buyer_name`                VARCHAR(30)   NOT NULL, -- 구매자명
	`or_buyer_another_name`        VARCHAR(30)   NULL,     -- 구매자명 치환
	`or_buyer_contract_number1`    VARCHAR(16)   NOT NULL, -- 구매자 연락처1
	`or_buyer_contract_number2`    VARCHAR(16)   NULL,     -- 구매자 연락처2
	`or_receiver_name`             VARCHAR(30)   NOT NULL, -- 수취인명
	`or_product`                   VARCHAR(300)  NOT NULL, -- 상품명
	`or_product_type`              VARCHAR(50)   NULL,     -- 상품종류
	`or_product_option`            VARCHAR(300)  NOT NULL, -- 옵션명
	`or_amount`                    INT           NOT NULL, -- 수량
	`or_delivery_message`          VARCHAR(1000) NULL,     -- 배송메세지
	`or_delivery_type`             VARCHAR(50)   NULL,     -- 배송방법
	`or_delivery_company`          VARCHAR(70)   NULL     DEFAULT '우체국택배', -- 택배사
	`or_order_number`              VARCHAR(30)   NULL,     -- 주문번호
	`or_product_order_number`      VARCHAR(30)   NULL,     -- 상품주문번호
	`or_product_number`            VARCHAR(30)   NULL,     -- 상품고유번호
	`or_payment_position_type`     VARCHAR(100)  NULL     DEFAULT '전화주문', -- 결제위치
	`or_settlement_day`            DATETIME      NULL     DEFAULT NOW(), -- 결제일
	`or_product_price`             INT           NULL     DEFAULT 0, -- 상품가격
	`or_product_option_price`      INT           NULL     DEFAULT 0, -- 옵션가격
	`or_discount_price`            INT           NULL     DEFAULT 0, -- 상품할인가
	`or_total_price`               INT           NULL     DEFAULT 0, -- 총 주문가격
	`or_total_cost`                INT           NULL     DEFAULT 0, -- 총 원가
	`or_check_day`                 DATE          NULL,     -- 발주확인일
	`or_sending_deadline`          DATE          NULL,     -- 발송기한
	`or_sending_day`               DATE          NULL,     -- 발송일
	`or_delivery_charge_type`      VARCHAR(30)   NULL,     -- 배송비 형태
	`or_delivery_number`           VARCHAR(30)   NULL,     -- 배송묶음번호
	`or_delivery_price`            INT           NULL     DEFAULT 0, -- 배송비
	`or_delivery_discount_price`   INT           NULL     DEFAULT 0, -- 배송할인액
	`or_receiver_contract_number1` VARCHAR(16)   NOT NULL, -- 수취인연락처1
	`or_receiver_contract_number2` VARCHAR(16)   NULL,     -- 수취인연락처2
	`or_shipping_address_number`   VARCHAR(6)    NULL,     -- 우편번호
	`or_shipping_province`         VARCHAR(30)   NULL,     -- 배송지 도
	`or_shipping_address`          VARCHAR(300)  NULL,     -- 배송지 기본사항
	`or_shipping_address_detail`   VARCHAR(300)  NULL,     -- 배송지 상세사항
	`or_special_region_flag`       TINYINT(1)    NULL     DEFAULT 0, -- 섬지역 여부
	`or_sending_address`           VARCHAR(500)  NULL     DEFAULT '인천광역시 계양구 효서로 388 삼형제고', -- 출고지
	`or_payment_type`              VARCHAR(30)   NULL,     -- 결제수단
	`or_payment_commision`         INT           NULL,     -- 결제수수료
	`or_another_payment_commision` INT           NULL     DEFAULT 0, -- 또 다른 결제수수료
	`or_inflow_route`              VARCHAR(60)   NULL,     -- 유입경로
	`or_request`                   VARCHAR(300)  NULL,     -- 특별 요청 사항
	`or_tax_flag`                  TINYINT(1)    NULL     DEFAULT 0, -- 면세 여부
	`or_regdate`                   DATETIME      NULL     DEFAULT NOW() -- 주문서 등록일
);

-- 주문서
ALTER TABLE `orders`
	ADD CONSTRAINT `PK_orders` -- 주문서 기본키
		PRIMARY KEY (
			`or_pk` -- 주문서 고유 번호
		);

ALTER TABLE `orders`
	MODIFY COLUMN `or_pk` INT NOT NULL AUTO_INCREMENT;

-- 원가
CREATE TABLE `costs` (
	`cost_pk`              INT         NOT NULL, -- 원가 고유 번호
	`cd_fk`                INT         NOT NULL, -- 원가 세부사항 고유 번호
	`cost_name`            VARCHAR(80) NOT NULL, -- 원가명
	`cost_measure_cal`     INT         NULL,     -- 원가 단위당 계산
	`cost_production_time` INT         NULL,     -- 상품 생산 시간
	`cost_update`          TIMESTAMP   NULL     DEFAULT NOW(), -- 원가수정일
	`cost_regdate`         DATETIME    NULL     DEFAULT NOW() -- 원가등록일
);

-- 원가
ALTER TABLE `costs`
	ADD CONSTRAINT `PK_costs` -- 원가 기본키
		PRIMARY KEY (
			`cost_pk` -- 원가 고유 번호
		);

ALTER TABLE `costs`
	MODIFY COLUMN `cost_pk` INT NOT NULL AUTO_INCREMENT;

-- 원가 세부사항
CREATE TABLE `cost_detail` (
	`cd_pk`                INT           NOT NULL, -- 원가 세부사항 고유 번호
	`cc_fk`                INT           NOT NULL, -- 원가 분류 고유 번호
	`cd_name`              VARCHAR(80)   NOT NULL, -- 원가 세부사항 명
	`cd_cost`              INT           NOT NULL, -- 원가
	`cd_loss_rate`         INT           NULL,     -- 손실률
	`cd_loss_flag`         TINYINT(1)    NOT NULL DEFAULT 1, -- 손실 여부
	`cd_company_diagnosis` TINYINT(1)    NOT NULL DEFAULT 0, -- 제조사 혹은 판매처 구분
	`cd_manufacturer`      VARCHAR(100)  NULL,     -- 제조사
	`cd_store_company`     VARCHAR(100)  NULL,     -- 판매사
	`cd_measure`           VARCHAR(10)   NOT NULL, -- 단위
	`cd_remark`            VARCHAR(1000) NULL,     -- 비고사항
	`cd_update`            TIMESTAMP     NOT NULL DEFAULT NOW(), -- 수정일
	`cd_regdate`           DATETIME      NOT NULL DEFAULT NOW() -- 등록일
);

-- 원가 세부사항
ALTER TABLE `cost_detail`
	ADD CONSTRAINT `PK_cost_detail` -- 원가 세부사항 기본키
		PRIMARY KEY (
			`cd_pk` -- 원가 세부사항 고유 번호
		);

ALTER TABLE `cost_detail`
	MODIFY COLUMN `cd_pk` INT NOT NULL AUTO_INCREMENT;

-- 엑셀주문순서
CREATE TABLE `excel_order_seq` (
	`eos_pk`       INT         NOT NULL, -- 주문서 위치 고유 번호
	`eos_seq`      INT         NULL,     -- 주문서 순서
	`eos_location` VARCHAR(30) NULL,     -- 담당 주문 위치 명
	`eos_code`     VARCHAR(5)  NULL      -- 담당 위치 고유 코드
);

-- 엑셀주문순서
ALTER TABLE `excel_order_seq`
	ADD CONSTRAINT `PK_excel_order_seq` -- 엑셀주문순서 기본키
		PRIMARY KEY (
			`eos_pk` -- 주문서 위치 고유 번호
		);

ALTER TABLE `excel_order_seq`
	MODIFY COLUMN `eos_pk` INT NOT NULL AUTO_INCREMENT;


-- 자재
CREATE TABLE `resources` (
	`res_pk`                      INT          NOT NULL, -- 자재 고유 번호
	`rc_fk`                       INT          NULL,     -- 분류코드 고유번호
	`res_name`                    VARCHAR(200) NULL,     -- 자재명
	`res_cost`                    INT          NULL,     -- 자재원가
	`res_company`                 VARCHAR(200) NULL,     -- 자재 제조사
	`res_company_contract_number` VARCHAR(16)  NULL,     -- 제조사 번호
	`res_company_address`         VARCHAR(500) NULL,     -- 제조사 주소
	`res_stock`                   INT          NULL,     -- 자재 재고
	`res_stock_alarm_flag`        TINYINT(1)   NULL     DEFAULT 0, -- 재고 알람 여부
	`res_stock_max_alarm`         INT          NULL     DEFAULT 50, -- 재고 알람 개수
	`res_width_size`              INT          NULL     DEFAULT 1, -- 자재 가로 길이
	`res_height_size`             INT          NULL     DEFAULT 1, -- 자재 높이 길이
	`res_length_size`             INT          NULL     DEFAULT 1, -- 자재 세로 길이
	`res_remark`                  VARCHAR(800) NULL,     -- 자재 비고 사항
	`res_thumbnail1`              VARCHAR(200) NULL,     -- 자재 사진1
	`res_thumbnail2`              VARCHAR(200) NULL,     -- 자재 사진2
	`res_update`                  TIMESTAMP    NULL     DEFAULT NOW(), -- 자재 수정
	`res_regdate`                 DATETIME     NULL     DEFAULT NOW() -- 자재 등록일
);

-- 자재
ALTER TABLE `resources`
	ADD CONSTRAINT `PK_resources` -- 자재 기본키
		PRIMARY KEY (
			`res_pk` -- 자재 고유 번호
		);

ALTER TABLE `resources`
	MODIFY COLUMN `res_pk` INT NOT NULL AUTO_INCREMENT;

-- 자재 분류 코드
CREATE TABLE `resource_code` (
	`rc_pk`        INT         NOT NULL, -- 분류코드 고유번호
	`rc_code`      INT         NULL,     -- 분류코드
	`rc_code_type` VARCHAR(80) NULL      -- 분류코드명
);

-- 자재 분류 코드
ALTER TABLE `resource_code`
	ADD CONSTRAINT `PK_resource_code` -- 자재 분류 코드 기본키
		PRIMARY KEY (
			`rc_pk` -- 분류코드 고유번호
		);

ALTER TABLE `resource_code`
	MODIFY COLUMN `rc_pk` INT NOT NULL AUTO_INCREMENT;

-- 이벤트 분류 코드
CREATE TABLE `event_code` (
	`ec_pk`          INT          NOT NULL, -- 이벤트분류코드 고유번호
	`ec_code_number` INT          NULL,     -- 이벤트 분류코드
	`ec_code_type`   VARCHAR(500) NULL,     -- 이벤트 타입
	`ec_regdate`     DATETIME     NULL     DEFAULT NOW() -- 이벤트 등록일
);

-- 이벤트 분류 코드
ALTER TABLE `event_code`
	ADD CONSTRAINT `PK_event_code` -- 이벤트 분류 코드 기본키
		PRIMARY KEY (
			`ec_pk` -- 이벤트분류코드 고유번호
		);

-- 원가 변동 사항
CREATE TABLE `cost_change_log` (
	`ccl_pk`          INT          NOT NULL, -- 원가 변동 고유번호
	`cd_fk`           INT          NOT NULL, -- 원가 세부사항 고유 번호
	`ccl_admin`       VARCHAR(45)  NOT NULL, -- 원가 수정자
	`ccl_name`        VARCHAR(100) NOT NULL, -- 원가명
	`ccl_price`       INT          NOT NULL, -- 원가
	`ccl_older_name`  VARCHAR(100) NOT NULL, -- 전 원가명
	`ccl_older_price` INT          NOT NULL, -- 전 원가
	`ccl_change_date` TIMESTAMP    NOT NULL DEFAULT NOW() -- 변동일
);

-- 원가 변동 사항
ALTER TABLE `cost_change_log`
	ADD CONSTRAINT `PK_cost_change_log` -- 원가 변동 사항 기본키
		PRIMARY KEY (
			`ccl_pk` -- 원가 변동 고유번호
		);

ALTER TABLE `cost_change_log`
	MODIFY COLUMN `ccl_pk` INT NOT NULL AUTO_INCREMENT;

-- 종합 CS
CREATE TABLE `customer_satisfaction` (
	`cs_pk`                INT           NOT NULL, -- 종합 CS 고유 번호
	`or_fk`                INT           NOT NULL, -- 주문서 고유 번호
	`csc_fk`               INT           NOT NULL, -- CS코드 고유 번호
	`csc_title`            VARCHAR(100)  NULL,     -- CS 제목
	`csc_buyer_name`       VARCHAR(50)   NULL,     -- CS 대상명
	`csc_address`          VARCHAR(300)  NULL,     -- CS 주소
	`csc_contract_number1` VARCHAR(16)   NULL,     -- CS 연락처 1
	`csc_contract_number2` VARCHAR(16)   NULL,     -- CS 연락처 2
	`csc_process1`         VARCHAR(1000) NULL,     -- CS 처리 과정 1
	`csc_process_time1`    DATETIME      NULL     DEFAULT NOW(), -- CS 처리시간 1
	`csc_process2`         VARCHAR(1000) NULL,     -- CS 처리 과정 2
	`csc_process_time2`    DATETIME      NULL     DEFAULT NOW(), -- CS 처리시간 2
	`csc_process3`         VARCHAR(1000) NULL,     -- CS 처리 과정 3
	`csc_process_time3`    DATETIME      NULL     DEFAULT NOW(), -- CS 처리시간 3
	`csc_process4`         VARCHAR(1000) NULL,     -- CS 처리 과정 4
	`csc_process_time4`    DATETIME      NULL     DEFAULT NOW(), -- CS 처리시간 4
	`csc_process5`         VARCHAR(1000) NULL,     -- CS 처리 과정 5
	`csc_process_time5`    DATETIME      NULL     DEFAULT NOW(), -- CS 처리시간 5
	`csc_complete_flag`    TINYINT(4)    NULL,     -- CS 완료 여부
	`csc_complete_time`    TIMESTAMP     NULL,     -- CS 완료 시간
	`csc_re_delivery_flag` TINYINT(1)    NULL     DEFAULT 0, -- CS 재발송 여부
	`csc_regdate`          DATETIME      NULL     DEFAULT NOW() -- CS 등록일
);

-- 종합 CS
ALTER TABLE `customer_satisfaction`
	ADD CONSTRAINT `PK_customer_satisfaction` -- 종합 CS 기본키
		PRIMARY KEY (
			`cs_pk` -- 종합 CS 고유 번호
		);

ALTER TABLE `customer_satisfaction`
	MODIFY COLUMN `cs_pk` INT NOT NULL AUTO_INCREMENT;

-- CS 코드
CREATE TABLE `customer_satisfaction_code` (
	`csc_pk`   INT         NOT NULL, -- CS코드 고유 번호
	`csc_code` INT         NOT NULL, -- CS코드 코드
	`csc_type` VARCHAR(30) NOT NULL  -- CS코드 타입명
);

-- CS 코드
ALTER TABLE `customer_satisfaction_code`
	ADD CONSTRAINT `PK_customer_satisfaction_code` -- CS 코드 기본키
		PRIMARY KEY (
			`csc_pk` -- CS코드 고유 번호
		);

ALTER TABLE `customer_satisfaction_code`
	MODIFY COLUMN `csc_pk` INT NOT NULL AUTO_INCREMENT;

-- 주문서 수정
CREATE TABLE `orders_change_log` (
	`ocl_pk`      INT          NOT NULL, -- 주문서수정 고유번호
	`or_fk`       INT          NOT NULL, -- 주문서 고유 번호
	`ocl_detail`  VARCHAR(500) NULL,     -- 수정 사항
	`ocl_admin`   VARCHAR(45)  NULL,     -- 수정자
	`ocl_reason`  VARCHAR(500) NULL,     -- 수정된 이유
	`ocl_regdate` TIMESTAMP    NULL     DEFAULT NOW() -- 수정일
);

-- 주문서 수정
ALTER TABLE `orders_change_log`
	ADD CONSTRAINT `PK_orders_change_log` -- 주문서 수정 기본키
		PRIMARY KEY (
			`ocl_pk` -- 주문서수정 고유번호
		);

ALTER TABLE `orders_change_log`
	MODIFY COLUMN `ocl_pk` INT NOT NULL AUTO_INCREMENT;

-- 옵션매칭
CREATE TABLE `option_matching` (
	`om_pk`                     INT          NOT NULL, -- 옵션매칭 고유번호
	`option_fk`                 INT          NULL,     -- 옵션 고유 번호
	`om_store_option_name`      VARCHAR(300) NULL,     -- 옵션매칭명
	`om_option_amount`          INT          NULL     DEFAULT 1, -- 옵션 개수
	`om_option_multiple_flag`   TINYINT(1)   NULL     DEFAULT 1, -- 배수 추가 여부
	`om_option_multiple_each`   INT          NULL     DEFAULT 1, -- 배수당 갯수
	`om_option_multiple_amount` INT          NULL     DEFAULT 1, -- 해당 배수 추가 개수
	`om_combine_flag`           TINYINT(1)   NULL     DEFAULT 0, -- 옵션상품 합치기 여부
	`om_regdate`                DATETIME     NULL     DEFAULT NOW() -- 매칭 등록일
);

-- 옵션매칭
ALTER TABLE `option_matching`
	ADD CONSTRAINT `PK_option_matching` -- 옵션매칭 기본키
		PRIMARY KEY (
			`om_pk` -- 옵션매칭 고유번호
		);

ALTER TABLE `option_matching`
	MODIFY COLUMN `om_pk` INT NOT NULL AUTO_INCREMENT;

-- 자재 변동 사항
CREATE TABLE `resource_change_log` (
	`rcl_pk`                INT          NOT NULL, -- 자재 변동 고유번호
	`res_fk`                INT          NOT NULL, -- 자재 고유 번호
	`rcl_admin`             VARCHAR(45)  NULL,     -- 자재 수정자
	`rcl_name`              VARCHAR(200) NULL,     -- 자재명
	`rcl_older_name`        VARCHAR(200) NULL,     -- 전 자재명
	`rcl_cost`              INT          NULL,     -- 자재원가
	`rcl_older_cost`        INT          NULL,     -- 자재 전 원가
	`rcl_stock_amount`      INT          NULL,     -- 자재 입고 개수
	`rcl_oler_stock_amount` INT          NULL,     -- 자재 입고 전 개수
	`rcl_change_date`       TIMESTAMP    NULL     DEFAULT NOW() -- 자재 변동일
);

-- 자재 변동 사항
ALTER TABLE `resource_change_log`
	ADD CONSTRAINT `PK_resource_change_log` -- 자재 변동 사항 기본키
		PRIMARY KEY (
			`rcl_pk` -- 자재 변동 고유번호
		);

ALTER TABLE `resource_change_log`
	MODIFY COLUMN `rcl_pk` INT NOT NULL AUTO_INCREMENT;

-- 합포 분류 코드
CREATE TABLE `packing_combine_code` (
	`pcc_pk`   INT(3)      NOT NULL, -- 합포 분류 고유 번호
	`pcc_code` INT(4)      NOT NULL, -- 분류 코드
	`pcc_type` VARCHAR(30) NOT NULL  -- 분류 이름
);

-- 합포 분류 코드
ALTER TABLE `packing_combine_code`
	ADD CONSTRAINT `PK_packing_combine_code` -- 합포 분류 코드 기본키
		PRIMARY KEY (
			`pcc_pk` -- 합포 분류 고유 번호
		);

ALTER TABLE `packing_combine_code`
	MODIFY COLUMN `pcc_pk` INT(3) NOT NULL AUTO_INCREMENT;

-- 원가 분류 코드
CREATE TABLE `cost_code` (
	`cc_pk`        INT         NOT NULL, -- 원가 분류 고유 번호
	`cc_code`      VARCHAR(12) NOT NULL, -- 원가 코드
	`cc_code_type` VARCHAR(40) NOT NULL  -- 원가 코드 타입
);

-- 원가 분류 코드
ALTER TABLE `cost_code`
	ADD CONSTRAINT `PK_cost_code` -- 원가 분류 코드 기본키
		PRIMARY KEY (
			`cc_pk` -- 원가 분류 고유 번호
		);

ALTER TABLE `cost_code`
	MODIFY COLUMN `cc_pk` INT NOT NULL AUTO_INCREMENT;

-- 옵션 원가 매칭
CREATE TABLE `options_costs_matching` (
	`ocm_pk`                INT        NOT NULL, -- 옵션원가매칭 고유 번호
	`cost_fk`               INT        NULL,     -- 원가 고유 번호
	`option_fk`             INT        NULL,     -- 옵션 고유 번호
	`ocm_gram_recal_flag`   TINYINT(1) NULL     DEFAULT 0, -- 합산 gram 플래그
	`ocm_gram`              INT        NULL     DEFAULT 1, -- 재 계산 gram
	`ocm_production_divide` INT        NULL     DEFAULT 1, -- 나누기
    `ocm_each`				INT		   NULL     DEFAULT 0
);

-- 옵션 원가 매칭
ALTER TABLE `options_costs_matching`
	ADD CONSTRAINT `PK_options_costs_matching` -- 옵션 원가 매칭 기본키
		PRIMARY KEY (
			`ocm_pk` -- 옵션원가매칭 고유 번호
		);

ALTER TABLE `options_costs_matching`
	MODIFY COLUMN `ocm_pk` INT NOT NULL AUTO_INCREMENT;

-- 관리자 출결
CREATE TABLE `admin_attendance` (
	`aa_pk`         INT      NOT NULL, -- 출결 고유 번호
	`admin_fk`      INT      NOT NULL, -- 관리자 고유 번호
	`aa_work_start` DATETIME NULL,     -- 출근시각
	`aa_work_end`   DATETIME NULL      -- 퇴근시각
);

-- 관리자 출결
ALTER TABLE `admin_attendance`
	ADD CONSTRAINT `PK_admin_attendance` -- 관리자 출결 기본키
		PRIMARY KEY (
			`aa_pk` -- 출결 고유 번호
		);

ALTER TABLE `admin_attendance`
	MODIFY COLUMN `aa_pk` INT NOT NULL AUTO_INCREMENT;
    
-- 상품
ALTER TABLE `products`
	ADD CONSTRAINT `FK_classification_TO_products` -- 상품 분류 -> 상품
		FOREIGN KEY (
			`cf_fk` -- 상품 분류 고유 번호
		)
		REFERENCES `classification` ( -- 상품 분류
			`cf_pk` -- 상품 분류 고유 번호
		);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `FK_excel_order_seq_TO_options` -- 엑셀주문순서 -> 옵션
		FOREIGN KEY (
			`eo_fk` -- 주문서 위치 고유 번호
		)
		REFERENCES `excel_order_seq` ( -- 엑셀주문순서
			`eos_pk` -- 주문서 위치 고유 번호
		);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `FK_resources_TO_options` -- 자재 -> 옵션
		FOREIGN KEY (
			`res_fk` -- 자재 고유 번호
		)
		REFERENCES `resources` ( -- 자재
			`res_pk` -- 자재 고유 번호
		);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `FK_events_TO_options` -- 이벤트 -> 옵션
		FOREIGN KEY (
			`event_fk` -- 이벤트 고유 번호
		)
		REFERENCES `events` ( -- 이벤트
			`event_pk` -- 이벤트 고유 번호
		);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `FK_packing_combine_code_TO_options` -- 합포 분류 코드 -> 옵션
		FOREIGN KEY (
			`pcc_fk` -- 합포 분류 고유 번호
		)
		REFERENCES `packing_combine_code` ( -- 합포 분류 코드
			`pcc_pk` -- 합포 분류 고유 번호
		);

-- 옵션
ALTER TABLE `options`
	ADD CONSTRAINT `FK_products_TO_options` -- 상품 -> 옵션
		FOREIGN KEY (
			`product_fk` -- 상품 고유 번호
		)
		REFERENCES `products` ( -- 상품
			`product_pk` -- 상품 고유 번호
		);

-- 이벤트
ALTER TABLE `events`
	ADD CONSTRAINT `FK_event_code_TO_events` -- 이벤트 분류 코드 -> 이벤트
		FOREIGN KEY (
			`ec_fk` -- 이벤트분류코드 고유번호
		)
		REFERENCES `event_code` ( -- 이벤트 분류 코드
			`ec_pk` -- 이벤트분류코드 고유번호
		);

-- 상품매칭
ALTER TABLE `product_matching`
	ADD CONSTRAINT `FK_products_TO_product_matching` -- 상품 -> 상품매칭
		FOREIGN KEY (
			`product_fk` -- 상품 고유 번호
		)
		REFERENCES `products` ( -- 상품
			`product_pk` -- 상품 고유 번호
		);

-- 상품매칭
ALTER TABLE `product_matching`
	ADD CONSTRAINT `FK_option_matching_TO_product_matching` -- 옵션매칭 -> 상품매칭
		FOREIGN KEY (
			`om_fk` -- 옵션매칭 고유번호
		)
		REFERENCES `option_matching` ( -- 옵션매칭
			`om_pk` -- 옵션매칭 고유번호
		);

-- 주문서
ALTER TABLE `orders`
	ADD CONSTRAINT `FK_product_matching_TO_orders` -- 상품매칭 -> 주문서
		FOREIGN KEY (
			`pm_fk` -- 매칭고유 번호
		)
		REFERENCES `product_matching` ( -- 상품매칭
			`pm_pk` -- 매칭고유 번호
		);

-- 원가
ALTER TABLE `costs`
	ADD CONSTRAINT `FK_cost_detail_TO_costs` -- 원가 세부사항 -> 원가
		FOREIGN KEY (
			`cd_fk` -- 원가 세부사항 고유 번호
		)
		REFERENCES `cost_detail` ( -- 원가 세부사항
			`cd_pk` -- 원가 세부사항 고유 번호
		);

-- 원가 세부사항
ALTER TABLE `cost_detail`
	ADD CONSTRAINT `FK_cost_code_TO_cost_detail` -- 원가 분류 코드 -> 원가 세부사항
		FOREIGN KEY (
			`cc_fk` -- 원가 분류 고유 번호
		)
		REFERENCES `cost_code` ( -- 원가 분류 코드
			`cc_pk` -- 원가 분류 고유 번호
		);

-- 자재
ALTER TABLE `resources`
	ADD CONSTRAINT `FK_resource_code_TO_resources` -- 자재 분류 코드 -> 자재
		FOREIGN KEY (
			`rc_fk` -- 분류코드 고유번호
		)
		REFERENCES `resource_code` ( -- 자재 분류 코드
			`rc_pk` -- 분류코드 고유번호
		);

-- 원가 변동 사항
ALTER TABLE `cost_change_log`
	ADD CONSTRAINT `FK_cost_detail_TO_cost_change_log` -- 원가 세부사항 -> 원가 변동 사항
		FOREIGN KEY (
			`cd_fk` -- 원가 세부사항 고유 번호
		)
		REFERENCES `cost_detail` ( -- 원가 세부사항
			`cd_pk` -- 원가 세부사항 고유 번호
		);

-- 종합 CS
ALTER TABLE `customer_satisfaction`
	ADD CONSTRAINT `FK_orders_TO_customer_satisfaction` -- 주문서 -> 종합 CS
		FOREIGN KEY (
			`or_fk` -- 주문서 고유 번호
		)
		REFERENCES `orders` ( -- 주문서
			`or_pk` -- 주문서 고유 번호
		);

-- 종합 CS
ALTER TABLE `customer_satisfaction`
	ADD CONSTRAINT `FK_customer_satisfaction_code_TO_customer_satisfaction` -- CS 코드 -> 종합 CS
		FOREIGN KEY (
			`csc_fk` -- CS코드 고유 번호
		)
		REFERENCES `customer_satisfaction_code` ( -- CS 코드
			`csc_pk` -- CS코드 고유 번호
		);

-- 주문서 수정
ALTER TABLE `orders_change_log`
	ADD CONSTRAINT `FK_orders_TO_orders_change_log` -- 주문서 -> 주문서 수정
		FOREIGN KEY (
			`or_fk` -- 주문서 고유 번호
		)
		REFERENCES `orders` ( -- 주문서
			`or_pk` -- 주문서 고유 번호
		);

-- 옵션매칭
ALTER TABLE `option_matching`
	ADD CONSTRAINT `FK_options_TO_option_matching` -- 옵션 -> 옵션매칭
		FOREIGN KEY (
			`option_fk` -- 옵션 고유 번호
		)
		REFERENCES `options` ( -- 옵션
			`option_pk` -- 옵션 고유 번호
		);

-- 자재 변동 사항
ALTER TABLE `resource_change_log`
	ADD CONSTRAINT `FK_resources_TO_resource_change_log` -- 자재 -> 자재 변동 사항
		FOREIGN KEY (
			`res_fk` -- 자재 고유 번호
		)
		REFERENCES `resources` ( -- 자재
			`res_pk` -- 자재 고유 번호
		);

-- 옵션 원가 매칭
ALTER TABLE `options_costs_matching`
	ADD CONSTRAINT `FK_costs_TO_options_costs_matching` -- 원가 -> 옵션 원가 매칭
		FOREIGN KEY (
			`cost_fk` -- 원가 고유 번호
		)
		REFERENCES `costs` ( -- 원가
			`cost_pk` -- 원가 고유 번호
		);

-- 옵션 원가 매칭
ALTER TABLE `options_costs_matching`
	ADD CONSTRAINT `FK_options_TO_options_costs_matching` -- 옵션 -> 옵션 원가 매칭
		FOREIGN KEY (
			`option_fk` -- 옵션 고유 번호
		)
		REFERENCES `options` ( -- 옵션
			`option_pk` -- 옵션 고유 번호
		);

-- 관리자 출결
ALTER TABLE `admin_attendance`
	ADD CONSTRAINT `FK_admin_TO_admin_attendance` -- 관리자 -> 관리자 출결
		FOREIGN KEY (
			`admin_fk` -- 관리자 고유 번호
		)
		REFERENCES `admin` ( -- 관리자
			`admin_pk` -- 관리자 고유 번호
		);
        
-- 업무
CREATE TABLE `job_code` (
	`jc_pk`                INT        PRIMARY KEY AUTO_INCREMENT NOT NULL, -- 옵션원가매칭 고유 번호
	`jc_type`              VARCHAR(30)        NOT NULL
);

ALTER TABLE admins ADD jc_fk INT;

-- 관리자 업무 
ALTER TABLE `admins`
	ADD CONSTRAINT `FK_jc_pk_TO_admin` -- 관리자 -> 관리자 출결
		FOREIGN KEY (
			`jc_fk` -- 업무 고유 번호
		)
		REFERENCES `job_code` ( --  업무
			`jc_pk` -- 업무 고유 번호
		);

-- 관리자 휴무
CREATE TABLE `admin_daysoff` (
	`ad_pk`      INT         AUTO_INCREMENT NOT NULL, -- 휴무 고유 번호
	`admin_fk`   INT         NOT NULL, -- 관리자 고유 번호
	`ad_title`   VARCHAR(50) NULL,     -- 휴가명
	`ad_flag`    TINYINT(1)  NULL,     -- 휴가 승인
	`ad_type`    TINYINT(1)  NOT NULL, -- 휴무 타입
	`ad_weeks`   TINYINT(1)  NULL,     -- 고정 휴무 요일
	`ad_start`   DATETIME    NULL,     -- 휴가 시작일
	`ad_end`     DATETIME    NULL,     -- 휴가 종료일
	`ad_regdate` DATETIME    NULL      -- 휴가 등록일
);

-- 관리자 휴무
ALTER TABLE `admin_daysoff`
	ADD CONSTRAINT `PK_admin_daysoff` -- 관리자 휴무 기본키
		PRIMARY KEY (
			`ad_pk` -- 휴무 고유 번호
		);

-- 관리자 휴무
ALTER TABLE `admin_daysoff`
	ADD CONSTRAINT `FK_admins_TO_admin_daysoff` -- 관리자 -> 관리자 휴무
		FOREIGN KEY (
			`admin_fk` -- 관리자 고유 번호
		)
		REFERENCES `admins` ( -- 관리자
			`admin_pk` -- 관리자 고유 번호
		);
        
        
CREATE TABLE dummy_calendar(
	dc_date DATETIME,
    dc_char VARCHAR(8)
);

CREATE TABLE T(n int);
INSERT INTO t values(1);
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;
INSERT INTO t select * from t;

INSERT INTO dummy_calendar
SELECT d, DATE_FORMAT(d, '%Y%m%d') FROM(
	SELECT @rnum:=@rnum+1 AS rownum, DATE(ADDDATE('2018-01-01', INTERVAL @rnum day)) AS d
    FROM (SELECT @rnum:=-1) r, t
) t
WHERE YEAR(d) < 2040;



-- 업무
CREATE TABLE `projects` (
	`pro_pk`             INT          NOT NULL, -- 업무 고유 번호
	`pro_title`          VARCHAR(200) NOT NULL, -- 업무명
	`pro_title_color`    VARCHAR(7)   NOT NULL, -- 업무명 색상
	`pro_detail`         VARCHAR(300) NULL,     -- 업무 사항
	`pro_alarm_date`     DATETIME     NULL,     -- 업무알람일
	`pro_alarm_type`     TINYINT      NULL,     -- 알람 타입
	`pro_repeat_day`     TINYINT      NULL,     -- 반복일
	`pro_repeat_week`    TINYINT      NULL,     -- 반복주
	`pro_left`           INT          NULL,     -- 왼쪽
	`pro_top`            INT          NULL,     -- 윗쪽
	`pro_zindex`         INT          NULL,     -- 보이기 우선
	`pro_sorting`        INT          NULL,     -- 정렬
	`pro_delete_flag`    TINYINT(1)   NULL,     -- 삭제 여부
	`pro_top_alarm_flag` TINYINT(1)   NULL,     -- 상단 알람 여부
	`pro_regdate`        DATETIME     NOT NULL DEFAULT NOW() -- 업무 등록일
);

-- 업무
ALTER TABLE `projects`
	ADD CONSTRAINT `PK_projects` -- 업무 기본키
		PRIMARY KEY (
			`pro_pk` -- 업무 고유 번호
		);

ALTER TABLE `projects`
	MODIFY COLUMN `pro_pk` INT NOT NULL AUTO_INCREMENT;

-- 업무 상세사항
CREATE TABLE `project_detail` (
	`pd_pk`           INT           NOT NULL, -- 업무사항 고유 번호
	`pro_fk`          INT           NOT NULL, -- 업무 고유 번호
	`pd_detail`       VARCHAR(1000) NOT NULL, -- 업무 완료 사항
	`pd_file1`        VARCHAR(50)   NULL,     -- 업무 첨부파일1
	`pd_file2`        VARCHAR(50)   NULL,     -- 업무 첨부파일2
	`pd_file3`        VARCHAR(50)   NULL,     -- 업무 첨부파일3
	`pd_file4`        VARCHAR(50)   NULL,     -- 업무 첨부파일4
	`pd_display_flag` TINYINT(1)    NULL,     -- 보이기 여부
	`pd_sorting`      INT           NULL,     -- 업무 정렬
	`pd_finish_time`  TIMESTAMP     NULL     DEFAULT NOW() -- 업무 완료일
);
ALTER TABLE project_detail ADD pd_important TINYINT(1);

-- 업무 상세사항
ALTER TABLE `project_detail`
	ADD CONSTRAINT `PK_project_detail` -- 업무 상세사항 기본키
		PRIMARY KEY (
			`pd_pk` -- 업무사항 고유 번호
		);

ALTER TABLE `project_detail`
	MODIFY COLUMN `pd_pk` INT NOT NULL AUTO_INCREMENT;


-- 업무 대상자
CREATE TABLE `project_target` (
	`pt_pk`           INT        NOT NULL, -- 업무 대상자 고유번호
	`pro_fk`          INT        NOT NULL, -- 업무 고유 번호
	`admin_fk`        INT        NOT NULL, -- 관리자 고유 번호
	`pt_display_flag` TINYINT(1) NOT NULL, -- 보이기 여부
	`pt_regdate`      DATETIME   NOT NULL DEFAULT NOW() -- 업무 대상자 등록일
);

ALTER TABLE project_target ADD pt_create_flag TINYINT(1);
ALTER TABLE project_target ADD pt_alarm_check_date DATETIME;

-- 업무 대상자
ALTER TABLE `project_target`
	ADD CONSTRAINT `PK_project_target` -- 업무 대상자 기본키
		PRIMARY KEY (
			`pt_pk` -- 업무 대상자 고유번호
		);

ALTER TABLE `project_target`
	MODIFY COLUMN `pt_pk` INT NOT NULL AUTO_INCREMENT;


-- 업무 댓글
CREATE TABLE `project_comment` (
	`pc_pk`      INT          NOT NULL, -- 새 컬럼
	`pro_fk`     INT          NOT NULL, -- 업무 고유 번호
	`admin_fk`   INT          NOT NULL, -- 관리자 고유 번호
	`pc_detail`  VARCHAR(250) NULL,     -- 업무 댓글 상세
	`pc_update`  TIMESTAMP    NULL,     -- 댓글 수정일
	`pc_regdate` DATETIME     NULL     DEFAULT NOW() -- 업무 댓글 등록일
);

-- 업무 댓글
ALTER TABLE `project_comment`
	ADD CONSTRAINT `PK_project_comment` -- 업무 댓글 기본키
		PRIMARY KEY (
			`pc_pk` -- 새 컬럼
		);

ALTER TABLE `project_comment`
	MODIFY COLUMN `pc_pk` INT NOT NULL AUTO_INCREMENT;

-- 태그
CREATE TABLE `project_tag` (
	`pt_pk`    INT         NOT NULL, -- 새 컬럼
	`pro_fk`   INT         NULL,     -- 업무 고유 번호
	`admin_fk` INT         NULL,     -- 관리자 고유 번호
	`pt_title` VARCHAR(30) NULL      -- 태그명
);

-- 태그
ALTER TABLE `project_tag`
	ADD CONSTRAINT `PK_project_tag` -- 태그 기본키
		PRIMARY KEY (
			`pt_pk` -- 새 컬럼
		);

ALTER TABLE `project_tag`
	MODIFY COLUMN `pt_pk` INT NOT NULL AUTO_INCREMENT;


-- 업무 상세사항
ALTER TABLE `project_detail`
	ADD CONSTRAINT `FK_projects_TO_project_detail` -- 업무 -> 업무 상세사항
		FOREIGN KEY (
			`pro_fk` -- 업무 고유 번호
		)
		REFERENCES `projects` ( -- 업무
			`pro_pk` -- 업무 고유 번호
		);


-- 업무 대상자
ALTER TABLE `project_target`
	ADD CONSTRAINT `FK_admins_TO_project_target` -- 관리자 -> 업무 대상자
		FOREIGN KEY (
			`admin_fk` -- 관리자 고유 번호
		)
		REFERENCES `admins` ( -- 관리자
			`admin_pk` -- 관리자 고유 번호
		);

-- 업무 대상자
ALTER TABLE `project_target`
	ADD CONSTRAINT `FK_projects_TO_project_target` -- 업무 -> 업무 대상자
		FOREIGN KEY (
			`pro_fk` -- 업무 고유 번호
		)
		REFERENCES `projects` ( -- 업무
			`pro_pk` -- 업무 고유 번호
		);

-- 업무 댓글
ALTER TABLE `project_comment`
	ADD CONSTRAINT `FK_projects_TO_project_comment` -- 업무 -> 업무 댓글
		FOREIGN KEY (
			`pro_fk` -- 업무 고유 번호
		)
		REFERENCES `projects` ( -- 업무
			`pro_pk` -- 업무 고유 번호
		);

-- 업무 댓글
ALTER TABLE `project_comment`
	ADD CONSTRAINT `FK_admins_TO_project_comment` -- 관리자 -> 업무 댓글
		FOREIGN KEY (
			`admin_fk` -- 관리자 고유 번호
		)
		REFERENCES `admins` ( -- 관리자
			`admin_pk` -- 관리자 고유 번호
		);

-- 업무 로그
ALTER TABLE `project_log`
	ADD CONSTRAINT `FK_projects_TO_project_log` -- 업무 -> 업무 로그
		FOREIGN KEY (
			`pro_fk` -- 업무 고유 번호
		)
		REFERENCES `projects` ( -- 업무
			`pro_pk` -- 업무 고유 번호
		);

-- 태그
ALTER TABLE `project_tag`
	ADD CONSTRAINT `FK_admins_TO_project_tag` -- 관리자 -> 태그
		FOREIGN KEY (
			`admin_fk` -- 관리자 고유 번호
		)
		REFERENCES `admins` ( -- 관리자
			`admin_pk` -- 관리자 고유 번호
		);

-- 태그
ALTER TABLE `project_tag`
	ADD CONSTRAINT `FK_projects_TO_project_tag` -- 업무 -> 태그
		FOREIGN KEY (
			`pro_fk` -- 업무 고유 번호
		)
		REFERENCES `projects` ( -- 업무
			`pro_pk` -- 업무 고유 번호
		);