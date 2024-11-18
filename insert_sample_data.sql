----------------------------------------------------   
-- 전체 실습용 데이터 생성
-----------------------------------------------------  

use sample_db;

-- 모든 테이블의 데이터 지우기
TRUNCATE TABLE user;
TRUNCATE TABLE reservations;
TRUNCATE TABLE stay;
TRUNCATE TABLE 메뉴;
TRUNCATE TABLE 매장;
TRUNCATE TABLE 고객;
TRUNCATE TABLE 주문;
TRUNCATE TABLE 결제;
TRUNCATE TABLE category;
TRUNCATE TABLE customer;
TRUNCATE TABLE orderitem;
TRUNCATE TABLE product;
TRUNCATE TABLE orderitem;
TRUNCATE TABLE product;

----------------------------------------------------   
-- [Part2] 테이블 및 데이터 생성
-----------------------------------------------------  
-- 사용자 테이블 데이터 생성
INSERT INTO user VALUES 
('KSJ01', '김수진', 24, 'ksj01@example.com', '010-1234-5678', '서울', '2022-01-15'),
('LHM02', '이현민', 26, 'lhm02@example.com', '010-2345-6789', '부산', '2022-02-20'),
('PJS03', '박재성', 28, 'pjs03@example.com', '010-3456-7890', '세종', '2022-03-25'),
('CHO04', '최현오', 31, 'cho04@example.com', '010-4567-8910', '강릉', '2022-04-30'),
('KYH05', '김예희', 23, 'kyh05@example.com', '010-5678-1234', '경주', '2022-05-05'),
('LJH06', '이지혜', 35, 'ljh06@example.com', '010-6789-2345', '여수', '2022-06-10'),
('SHK07', '손희경', 27, 'shk07@example.com', '010-7890-3456', '서울', '2022-07-15'),
('YJS08', '유정수', 29, 'yjs08@example.com', '010-8901-4567', '부산', '2022-08-20'),
('HJW09', '황준원', 33, 'hjw09@example.com', '010-9012-5678', '세종', '2022-09-25'),
('KDH10', '김다혜', 37, 'kdh10@example.com', '010-1122-5789', '강릉', '2022-10-30'),
('LCH11', '이창호', 22, 'lch11@example.com', '010-2233-6789', '경주', '2022-11-04'),
('PJY12', '박진영', 34, 'pjy12@example.com', '010-3344-7890', '여수', '2022-12-09'),
('KMS13', '김민수', 20, 'kms13@example.com', '010-4455-8910', '서울', '2023-01-14'),
('LSY14', '이수연', 42, 'lsy14@example.com', '010-5566-1234', '부산', '2023-02-18'),
('NMB21', '비회원', 31, NULL, NULL, '서울', NULL),
('PCH15', '박찬호', 38, 'pch15@example.com', '010-6677-2345', '세종', '2023-03-24'),
('HYJ16', '홍예진', 21, 'hyj16@example.com', '010-7788-3456', '강릉', '2023-04-29'),
('LHK17', '이현경', 39, 'lhk17@example.com', '010-8899-4567', '경주', '2023-05-03'),
('SJK18', '손지훈', 25, 'sjk18@example.com', '010-9900-5678', '여수', '2023-06-08'),
('YJH19', '윤지혜', 36, 'yjh19@example.com', '010-1357-6789', '서울', '2023-07-13'),
('KTH20', '김태현', 40, 'kth20@example.com', '010-2468-7890', '부산', '2023-08-17'),
 ('PSW22', '박순원', 44, 'psw21@example.com', NULL, '광주', '2024-06-17'),
 ('STK21', '손태구', 44, NULL, NULL, '인천', '2024-05-09');


-- 숙소 테이블 데이터 생성
INSERT INTO stay VALUES 
('S001', '제주 바닷가 빌라', '제주', 4, 250000, '빌라', 2, '제주의 아름다운 해안가에 위치, 프라이빗한 바다 전망을 즐길 수 있는 빌라입니다.'),
('S002', '강릉 해변가 콘도', '강릉', 3, 200000, '콘도', 1, '강릉 해변가에 위치해 아름다운 해변을 바로 앞에서 즐길 수 있는 콘도입니다.'),
('S003', '부산 광안리 오션뷰 호텔', '부산', 2, 220000, '호텔', 1, '부산 광안리 해변을 마주보는 오션뷰 호텔로, 멋진 바다 전망과 함께 휴식을 제공합니다.'),
('S004', '경주 역사지구 전통한옥', '경주', 5, 180000, '한옥', 2, '경주의 역사적인 지역에 위치한 전통 한옥에서 고즈넉한 휴식을 즐길 수 있습니다.'),
('S005', '제주 서귀포 해변가 펜션', '제주', 4, 150000, '펜션', 2, '서귀포 해변가에 위치해 아름다운 바다 전망과 함께 편안한 휴식을 제공하는 펜션입니다.'),
('S006', '강릉 중앙시장 근처 게스트하우스', '강릉', 3, 85000, '게스트하우스', 1, '강릉 중앙시장과 가깝고 접근성이 좋은 위치에 있는 아늑한 게스트하우스입니다.'),
('S007', '부산 해운대 비치프런트 레지던스', '부산', 2, 240000, '레지던스', 1, '해운대 해변 바로 앞에 위치한 레지던스로, 최고의 바다 전망을 자랑합니다.'),
('S008', '경주 불국사 인근 가족호텔', '경주', 4, 200000, '호텔', 2, '불국사와 가까운 가족 여행에 적합한 호텔로, 편안하고 넓은 객실을 제공합니다.'),
('S009', '제주동부해안가리조트', '제주', 5, 300000, '리조트', 3, '제주 동부 해안가에 위치한 리조트로, 다양한 레저 활동과 함께 휴식을 즐길 수 있습니다.'),
('S010', '강릉 소나무 숲 캠핑장', '강릉', 4, 120000, '캠핑', 2, '강릉 소나무 숲 내에 위치한 캠핑장으로, 자연 속에서의 특별한 경험을 제공합니다.'),
('S011', '부산 태종대 근처 가족 빌라', '부산', 6, 160000, '빌라', 3, '부산 태종대 근처에 위치한 가족 단위 여행에 적합한 넓은 빌라입니다.'),
('S012', '경주 안압지 인근 전통펜션', '경주', 3, 140000, '펜션', 2, '경주 안압지 인근의 전통적인 분위기를 자랑하는 펜션으로, 조용한 휴식을 제공합니다.'),
('S013', '제주 중문 관광단지 내 스파 리조트', '제주', 2, 260000, '리조트', 1, '제주 중문 관광단지 내에 위치한 스파 리조트로, 최상의 휴식과 함께 스파를 즐길 수 있습니다.'),
('S014', '강릉 경포대 해변 아파트', '강릉', 3, 170000, '아파트', 2, '경포대 해변에 위치한 아파트로, 아름다운 해변과 가까운 거리에 있습니다.'),
('S015', '부산 송도 해안 산책로 스튜디오', '부산', 2, 95000, '스튜디오', 1, '부산 송도 해안 산책로에 위치한 스튜디오로, 멋진 해안 경치를 감상할 수 있습니다.'),
('S016', '경주 황리단길 근처 게스트하우스', '경주', 4, 110000, '게스트하우스', 2, '경주 황리단길 근처에 위치한 게스트하우스로, 경주의 전통과 현대가 어우러진 독특한 숙소입니다.'),
('S017', '제주 애월 해안가 럭셔리 빌라', '제주', 4, 280000, '빌라', 3, '제주 애월 해안가에 위치한 럭셔리 빌라로, 고급스러운 시설과 서비스를 제공합니다.'),
('S018', '강릉 주문진 어촌 마을 숙박', '강릉', 3, 80000, '민박', 1, '강릉 주문진 어촌 마을 내에 위치한 전통 민박으로, 어촌 생활을 경험할 수 있습니다.'),
('S019', '부산 서면 패션 스트리트 인근 호텔', '부산', 2, 130000, '호텔', 1, '부산 서면 패션 스트리트 인근에 위치한 호텔로, 쇼핑과 문화 생활을 즐길 수 있는 최적의 위치입니다.'),
('S020', '경주 보문호 인근 전망 좋은 콘도', '경주', 5, 210000, '콘도', 2, '경주 보문호를 한눈에 볼 수 있는 콘도로, 아름다운 전망과 함께 편안한 휴식을 즐길 수 있습니다.');

-- 예약 테이블 데이터 생성
INSERT INTO reservation VALUES 
(1, 'S001', 'KSJ01', '2024-04-01', 25000, '예약신청'),
(2, 'S002', 'LHM02', '2024-04-02', 20000, '예약신청'),
(3, 'S003', 'PJS03', '2024-04-03', 22000, '예약중'),
(4, 'S004', 'CHO04', '2024-04-04', 18000, '예약중'),
(5, 'S005', 'KYH05', '2024-03-20', 15000, '예약완료'),
(6, 'S006', 'LJH06', '2024-03-20', 8500, '예약완료'),
(7, 'S007', 'SHK07', '2024-03-20', 24000, '예약완료'),
(8, 'S008', 'YJS08', '2024-03-21', 20000, '예약완료'),
(9, 'S009', 'HJW09', '2024-03-25', 30000, '예약완료'),
(10, 'S010', 'KDH10', '2024-04-25', 12000, '예약완료'),
(11, 'S003', 'PJS03', NULL, 21000, NULL),
(12, 'S006', 'LJH06', NULL, 8000, '예약완료');

----------------------------------------------------   
-- [Part3] 테이블 및 데이터 생성
-----------------------------------------------------  
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


----------------------------------------------------   
-- [Part4] 테이블 및 데이터 생성
-----------------------------------------------------  
-- 제품 테이블 데이터 생성
INSERT INTO Product (product_id, product_name, category_id, price, brand, stock_qty, rating, reviews ) VALUES
('P001','무선 블루투스 헤드폰','C001',80000,'오디오테크',120,4.5,234),
('P002','스마트 피트니스 시계','C002',130000,'핏라이프',75,4.7,150),
('P003','유기농 녹차','C003',16000,'자연의 선물',300,4.8,98),
('P004','4K 울트라 HD TV','C001',500000,'비전프로',50,4.6,180),
('P005','인체 공학적 사무용 의자','C004',200000,'컴포트플러스',40,4.4,75),
('P006','스테인리스 스틸 물병','C005',25000,'하이드로맥스',200,4.9,210),
('P007','게이밍 노트북','C006',1300000,'게이머프로',30,4.8,95),
('P008','전동 칫솔','C007',60000,'스마일브라이트',150,4.3,110),
('P009','요가 매트','C008',30000,'젠플렉스',100,4.7,140),
('P010','소음 제거 이어폰','C001',100000,'사운드웨이브',90,4.5,130),
('P011','커피 메이커','C009',50000,'브루마스터',80,4.2,88),
('P012','휴대용 외장 하드 드라이브','C006',80000,'데이터볼트',120,4.6,150),
('P013','러닝화','C010',90000,'런핏',60,4.7,110),
('P014','무선 마우스','C006',20000,'테크기어',200,4.4,95),
('P015','디지털 카메라','C001',300000,'스냅샷',45,4.8,120),
('P016','블루투스 스피커','C001',40000,'사운드맥스',100,4.5,150),
('P017','공기 청정기','C009',150000,'퓨어에어',70,4.6,85),
('P018','전기 주전자','C009',30000,'퀵보일',90,4.7,70),
('P019','스마트 전구','C009',20000,'브라이트홈',200,4.3,95),
('P020','즉석냄비','C009',90000,'쿡이지',50,4.8,130);
 

---------------------------------------------------------------------------
-- 상품분류 테이블 데이터 생성
---------------------------------------------------------------------------
INSERT INTO Category (category_id, category_name, description) VALUES
('C001','전자제품','전화기, 노트북, 텔레비전과 같은 장치 및 가젯.'),
('C002','웨어러블','스마트워치 및 피트니스 트래커와 같은 웨어러블 기술.'),
('C003','음료','차, 커피, 청량 음료 등의 음료.'),
('C004','가구','의자, 테이블, 소파와 같은 가정 및 사무용 가구.'),
('C005','액세서리','가방, 벨트, 보석류와 같은 액세서리.'),
('C006','컴퓨터','마우스, 키보드와 같은 컴퓨터 및 관련 액세서리.'),
('C007','개인 관리','위생 용품을 포함한 개인 관리 제품.'),
('C008','피트니스','운동 및 워크아웃을 위한 피트니스 장비 및 액세서리.'),
('C009','가전제품','커피 메이커, 블렌더, 전자레인지 등의 가정용 가전제품.'),
('C010','신발','신발, 샌들 및 기타 유형의 신발.'),
('C011','야외','캠핑, 하이킹 및 모험을 위한 야외 장비 및 장비.'),
('C012','도서','다양한 장르의 인쇄 및 디지털 도서.'),
('C013','장난감','모든 연령대의 어린이를 위한 장난감 및 게임.'),
('C014','의류','남성, 여성 및 어린이를 위한 의류.'),
('C015','자동차용품','차량용 자동차 부품 및 액세서리.');



 
-----------------------------------------------------   
-- 고객 테이블 데이터 생성
-----------------------------------------------------   
INSERT INTO Customer (CUST_NO, CUST_name, birthday, gender, regdate, status , area, email ) VALUES
('U001','김종인', '1990-01-15', '남성', '2023-01-01', '유지', '서울', 'U001@TechMart.com'),
('U002','이대휘', '1984-03-22', '여성', '2023-02-15', '유지', '대전', 'U002@TechMart.com'),
('U003','박지민', '1992-07-08', '남성', '2023-03-10', '유지', '부산', 'U003@TechMart.com'),
('U004','손채영', '1988-11-30', '여성', '2023-04-05', '휴면', '인천', 'U004@TechMart.com'),
('U005','김남준', '1995-05-14', '남성', '2023-05-20', '유지', '서울', 'U005@TechMart.com'),
('U006','민윤기', '1993-09-19', '여성', '2023-06-25', '휴면', '서울', 'U006@TechMart.com'),
('U007','정의윤', '1987-12-25', '남성', '2023-07-15', '유지', '대전', 'U007@TechMart.com'),
('U008','김지현', '1991-04-10', '여성', '2023-08-10', '휴면', '대구', 'U008@TechMart.com'),
('U009','이종석', '1996-06-06', '남성', '2023-09-20', '유지', '서울', 'U009@TechMart.com'),
('U010','박보영', '1989-02-18', '여성', '2023-09-25', '유지', '부산', 'U010@TechMart.com'),
('U011','김태영', '1996-06-06', '남성', '2023-09-22', '유지', '서울', 'U011@TechMart.com'),
('U012','박진만', '1989-02-18', '여성', '2023-09-30', '유지', '인천', 'U012@TechMart.com');

 
----------------------------------------------------- 
-- 주문 테이블 데이터 생성
-----------------------------------------------------   
INSERT INTO OrderItem (order_id, CUST_NO, product_id, order_date, order_qty, total_amount, order_status) VALUES
(1,'P001','U001','2024-01-01',2,160000,'배송중'),
(2,'P002','U002','2024-01-02',1,130000,'처리중'),
(3,'P003','U003','2024-01-13',3,48000,'배송완료'),
(4,'P004','U004','2024-01-14',1,500000,'취소'),
(5,'P005','U005','2024-01-25',1,200000,'배송중'),
(6,'P006','U006','2024-01-26',4,100000,'배송완료'),
(7,'P007','U007','2024-01-28',1,1300000,'처리중'),
(8,'P008','U008','2024-02-08',2,120000,'배송완료'),
(9,'P009','U009','2024-02-09',1,30000,'배송중'),
(10,'P010','U010','2024-02-11',1,100000,'취소'),
(11,'P011','U001','2024-02-13',1,50000,'배송중'),
(12,'P012','U002','2024-02-17',2,160000,'처리중'),
(13,'P013','U003','2024-02-22',1,90000,'배송완료'),
(14,'P014','U009','2024-02-25',3,60000,'취소'),
(15,'P015','U005','2024-03-15',2,600000,'배송중'),
(16,'P016','U006','2024-03-16',1,40000,'배송완료'),
(17,'P017','U007','2024-03-17',2,300000,'처리중'),
(18,'P018','U008','2024-03-28',1,150000,'배송완료'),
(19,'P019','U008','2024-03-29',3,60000,'배송중'),
(20,'P020','U010','2024-04-10',1,90000,'취소'),
(21,'P001','U001','2024-04-21',1,80000,'취소'),
(22,'P002','U003','2024-04-22',1,130000,'처리중'),
(23,'P003','U003','2024-04-23',2,32000,'배송완료'),
(24,'P004','U004','2024-04-24',2,1000000,'취소'),
(25,'P005','U005','2024-04-25',1,200000,'배송중'),
(26,'P006','U006','2024-05-16',1,25000,'배송완료'),
(27,'P007','U007','2024-05-17',1,1300000,'처리중'),
(28,'P008','U007','2024-05-28',2,120000,'배송완료'),
(29,'P009','U009','2024-05-29',3,90000,'배송중'),
(30,'P010','U010','2024-05-30',1,100000,'취소'),
(31,'P011','U001','2024-06-01',3,150000,'배송중'),
(32,'P012','U002','2024-06-02',1,80000,'처리중'),
(33,'P020','U003','2024-06-13',1,90000,'배송완료'),
(34,'P014','U007','2024-06-22',2,40000,'취소'),
(35,'P015','U005','2024-06-24',1,300000,'배송중'),
(36,'P016','U006','2024-06-26',1,40000,'배송완료'),
(37,'P017','U007','2024-07-07',2,600000,'처리중'),
(38,'P018','U008','2024-07-18',2,300000,'배송완료'),
(39,'P019','U009','2024-07-29',3,60000,'배송중'),
(40,'P020','U001','2024-07-30',1,90000,'취소');
 

COMMIT  ;

 
