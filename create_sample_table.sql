----------------------------------------------------   
-- 전체 테이블 생성 
-- Part2, Part3, Part4 테이블 생성
----------------------------------------------------   

use sample_db;

----------------------------------------------------   
-- [Part2] 테이블 생성 
----------------------------------------------------   
CREATE TABLE User (
    user_id   CHAR(8)          NOT NULL  PRIMARY KEY,  -- 사용자 ID
    user_nm   VARCHAR(255)     NOT NULL,                 -- 이름
    age       SMALLINT ,                                            -- 나이
    email     VARCHAR(255)     UNIQUE,                     -- 이메일 주소
    phone     VARCHAR(50),                                      -- 전화번호
    addr      VARCHAR(20),                                       --  주소 (서울, 부산등 도시만 입력)
    join_date DATE                                                  -- 가입 날짜
) ;

-- 숙소 정보 테이블 
CREATE TABLE Stay (
    stay_id     CHAR(4) NOT NULL PRIMARY KEY,  -- 숙소 ID
    stay_title  VARCHAR(255), -- 숙소 제목
    location    VARCHAR(20),  -- 숙소 위치
    capacity    INT,          -- 수용 가능 인원
    price       INT,          -- 가격 
    type        VARCHAR(50),  -- 숙소 유형 
    room_cnt    INT,          -- 침실 수 
    description VARCHAR(512)  -- 숙소 설명
);

-- 예약정보테이블
CREATE TABLE Reservations (
    resv_id     INT AUTO_INCREMENT PRIMARY KEY,  -- 예약 ID
    stay_id     CHAR(4),    -- 숙소 ID
    user_id     CHAR(8),    -- 사용자ID
    resv_date   DATE ,      -- 예약 날짜
    resv_amt    INT,        -- 예약 금액
    resv_status VARCHAR(50) -- 예약 상태 
) ; 

----------------------------------------------------   
-- [Part3] 테이블 생성 
-----------------------------------------------------  

CREATE TABLE 메뉴 (
    메뉴명 VARCHAR(100) NOT NULL,
    추천구분 VARCHAR(10), 
    PRIMARY KEY (메뉴명)
);
CREATE TABLE 매장 (
    매장명 VARCHAR(100) NOT NULL,
    별점 DECIMAL(3,2), 
    PRIMARY KEY (매장명)
);
CREATE TABLE 고객 (
    고객ID VARCHAR(3) NOT NULL,
    고객명 VARCHAR(20) NOT NULL,
    나이  INT NOT NULL,
    지역  VARCHAR(30),
    PRIMARY KEY (고객ID)
);
CREATE TABLE 주문 (
    주문번호 INT AUTO_INCREMENT,
    고객ID VARCHAR(3) NOT NULL,
    매장명 VARCHAR(100) NOT NULL,
    메뉴명 VARCHAR(100) NOT NULL,
    주문일자 DATE NOT NULL,
    주문금액 INT NOT NULL,
    배송비 INT ,
    결제ID VARCHAR(2) ,           
    PRIMARY KEY (주문번호)
);

CREATE TABLE 결제 (
    결제ID VARCHAR(2)  NOT NULL,           
    결제방법 VARCHAR(45) NOT NULL,
    PRIMARY KEY (결제ID)
);


----------------------------------------------------   
-- [Part4] 테이블 생성 
-----------------------------------------------------  
CREATE TABLE product (
  product_id varchar(4) NOT NULL,
  product_name varchar(255) NOT NULL,
  category_id varchar(100) DEFAULT NULL,
  price int DEFAULT NULL,
  brand varchar(100) DEFAULT NULL,
  stock_qty int DEFAULT NULL,
  rating decimal(3,2) DEFAULT NULL,
  reviews int DEFAULT NULL,
  PRIMARY KEY (product_id)
) ; 

CREATE TABLE Category (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE customer (
  CUST_NO varchar(4) NOT NULL,
  CUST_name varchar(50) NOT NULL,
  birthday date DEFAULT NULL,
  gender varchar(10) DEFAULT NULL,
  regdate date DEFAULT NULL,
  status varchar(20) DEFAULT NULL,
  area varchar(20) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
  PRIMARY KEY (CUST_NO)
);

CREATE TABLE orderitem (
  order_id int NOT NULL AUTO_INCREMENT,
  product_id varchar(4) DEFAULT NULL,
  CUST_NO varchar(4) DEFAULT NULL,
  order_date date DEFAULT NULL,
  order_qty int DEFAULT NULL,
  total_amount int DEFAULT NULL,
  order_status varchar(50) DEFAULT NULL,
  PRIMARY KEY (order_id)
) ;   


COMMIT;
