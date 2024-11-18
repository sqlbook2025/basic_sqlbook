----------------------------------------------------   
-- [Part3] 테이블 및 데이터 생성
-----------------------------------------------------  
use sample_db;

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

-- 고객 테이블 데이터 생성
INSERT INTO 고객 (고객ID, 고객명, 나이, 지역) VALUES
('U1', '앨리스', 21, '논현동'),
('U2', '제니', 30, '서초동'),
('U3', '제임스', 42, '신사동'),
('U4', '제인', 35, '양재동'),
('U5', '캐서린', 25, '내곡동'),
('U6', '다니엘', 23, '양재동'),
('U7', '자스민', 27, '논현동');

-- 메뉴 테이블 데이터 생성
INSERT INTO 메뉴 (메뉴명, 추천구분) VALUES
('두툼버거', '신메뉴'),
('몬스터와퍼 세트', '인기'),
('오리저널 아보카드 잭', NULL),
('오리지널 아보카도 잭 더블 세트', NULL),
('와퍼세트', '인기'),
('콰트로치즈 비프라구 와퍼', '신메뉴'),
('콰트로치즈와퍼 세트', '인기'),
('통새우와퍼 세트', '인기');

-- 주문 테이블 데이터 생성
INSERT INTO 주문 (주문번호, 고객ID, 매장명, 메뉴명, 주문일자, 주문금액, 배송비, 결제ID) VALUES
(1, 'U1', '신논현점', '콰트로치즈와퍼세트', '2024-08-01', 25000, 2000, 'P3'),
(2, 'U2', '신논현점', '통새우와퍼세트', '2024-08-01', 54000, 2500, 'P3'),
(3, 'U1', '신논현점', '몬스터와퍼세트', '2024-08-02', 48000, 3000, 'P1'),
(4, 'U4', '양재점', '콰트로치즈와퍼세트', '2024-08-01', 20000, 4000, 'P3'),
(5, 'U4', '양재점', '몬스터와퍼세트', '2024-08-02', 18000, 2000, 'P2'),
(6, 'U5', '양재점', '두툼버거', '2024-08-01', 35000, 1000, 'P2'),
(7, 'U9', '양재점', '두툼버거', '2024-08-01', 0, 0, NULL);

-- 매장 테이블 데이터 생성
INSERT INTO 매장 (매장명, 별점) VALUES
('강남대로점', 4.70),
('강남도곡점', 4.10),
('선릉역점', 4.40),
('신논현점', 4.60),
('양재점', 4.00),
('차병원사거리점', NULL);

-- 결제 테이블 데이터 생성
INSERT INTO 결제 (결제ID, 결제방법) VALUES
('P1', '카카오페이'),
('P2', '네이버페이'),
('P3', '신용카드'),
('P4', '계좌이체'),
('P5', '휴대폰결제'),
('P6', '직접결제');

COMMIT;
