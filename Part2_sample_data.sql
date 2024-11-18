----------------------------------------------------   
-- [Part2] 테이블 및 데이터 생성
-----------------------------------------------------  
use sample_db;

-- 사용자정보 테이블
CREATE TABLE User (
    user_id   CHAR(8)          NOT NULL  PRIMARY KEY,  -- 사용자 ID
    user_nm   VARCHAR(255)     NOT NULL,               -- 이름
    age       SMALLINT ,                               -- 나이
    email     VARCHAR(255)     UNIQUE,                 -- 이메일 주소
    phone     VARCHAR(50),                             -- 전화번호
    addr      VARCHAR(20),                             --  주소 (서울, 부산등 도시만 입력)
    join_date DATE                                     -- 가입 날짜
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

INSERT INTO USER VALUES ('KSJ01', '김수진', 24, 'ksj01@example.com', '010-1234-5678', '서울', '2022-01-15');
INSERT INTO USER VALUES ('LHM02', '이현민', 26, 'lhm02@example.com', '010-2345-6789', '부산', '2022-02-20');
INSERT INTO USER VALUES ('PJS03', '박재성', 28, 'pjs03@example.com', '010-3456-7890', '세종', '2022-03-25');
INSERT INTO USER VALUES ('CHO04', '최현오', 31, 'cho04@example.com', '010-4567-8910', '강릉', '2022-04-30');
INSERT INTO USER VALUES ('KYH05', '김예희', 23, 'kyh05@example.com', '010-5678-1234', '경주', '2022-05-05');
INSERT INTO USER VALUES ('LJH06', '이지혜', 35, 'ljh06@example.com', '010-6789-2345', '여수', '2022-06-10');
INSERT INTO USER VALUES ('SHK07', '손희경', 27, 'shk07@example.com', '010-7890-3456', '서울', '2022-07-15');
INSERT INTO USER VALUES ('YJS08', '유정수', 29, 'yjs08@example.com', '010-8901-4567', '부산', '2022-08-20');
INSERT INTO USER VALUES ('HJW09', '황준원', 33, 'hjw09@example.com', '010-9012-5678', '세종', '2022-09-25');
INSERT INTO USER VALUES ('KDH10', '김다혜', 37, 'kdh10@example.com', '010-1122-5789', '강릉', '2022-10-30');
INSERT INTO USER VALUES ('LCH11', '이창호', 22, 'lch11@example.com', '010-2233-6789', '경주', '2022-11-04');
INSERT INTO USER VALUES ('PJY12', '박진영', 34, 'pjy12@example.com', '010-3344-7890', '여수', '2022-12-09');
INSERT INTO USER VALUES ('KMS13', '김민수', 20, 'kms13@example.com', '010-4455-8910', '서울', '2023-01-14');
INSERT INTO USER VALUES ('LSY14', '이수연', 42, 'lsy14@example.com', '010-5566-1234', '부산', '2023-02-18');
INSERT INTO USER VALUES ('NMB21', '비회원', 31, NULL, NULL, '서울', NULL);
INSERT INTO USER VALUES ('PCH15', '박찬호', 38, 'pch15@example.com', '010-6677-2345', '세종', '2023-03-24');
INSERT INTO USER VALUES ('HYJ16', '홍예진', 21, 'hyj16@example.com', '010-7788-3456', '강릉', '2023-04-29');
INSERT INTO USER VALUES ('LHK17', '이현경', 39, 'lhk17@example.com', '010-8899-4567', '경주', '2023-05-03');
INSERT INTO USER VALUES ('SJK18', '손지훈', 25, 'sjk18@example.com', '010-9900-5678', '여수', '2023-06-08');
INSERT INTO USER VALUES ('YJH19', '윤지혜', 36, 'yjh19@example.com', '010-1357-6789', '서울', '2023-07-13');
INSERT INTO USER VALUES ('KTH20', '김태현', 40, 'kth20@example.com', '010-2468-7890', '부산', '2023-08-17');
INSERT INTO USER VALUES ('PSW22', '박순원', 44, 'psw21@example.com', NULL, '광주', '2024-06-17');
INSERT INTO USER VALUES ('STK21', '손태구', 44, NULL, NULL, '인천', '2024-05-09');



INSERT INTO STAY VALUES ('S001', '제주 바닷가 빌라', '제주', 4, 250000, '빌라', 2, '제주의 아름다운 해안가에 위치, 프라이빗한 바다 전망을 즐길 수 있는 빌라입니다.');
INSERT INTO STAY VALUES ('S002', '강릉 해변가 콘도', '강릉', 3, 200000, '콘도', 1, '강릉 해변가에 위치해 아름다운 해변을 바로 앞에서 즐길 수 있는 콘도입니다.');
INSERT INTO STAY VALUES ('S003', '부산 광안리 오션뷰 호텔', '부산', 2, 220000, '호텔', 1, '부산 광안리 해변을 마주보는 오션뷰 호텔로, 멋진 바다 전망과 함께 휴식을 제공합니다.');
INSERT INTO STAY VALUES ('S004', '경주 역사지구 전통한옥', '경주', 5, 180000, '한옥', 2, '경주의 역사적인 지역에 위치한 전통 한옥에서 고즈넉한 휴식을 즐길 수 있습니다.');
INSERT INTO STAY VALUES ('S005', '제주 서귀포 해변가 펜션', '제주', 4, 150000, '펜션', 2, '서귀포 해변가에 위치해 아름다운 바다 전망과 함께 편안한 휴식을 제공하는 펜션입니다.');
INSERT INTO STAY VALUES ('S006', '강릉 중앙시장 근처 게스트하우스', '강릉', 3, 85000, '게스트하우스', 1, '강릉 중앙시장과 가깝고 접근성이 좋은 위치에 있는 아늑한 게스트하우스입니다.');
INSERT INTO STAY VALUES ('S007', '부산 해운대 비치프런트 레지던스', '부산', 2, 240000, '레지던스', 1, '해운대 해변 바로 앞에 위치한 레지던스로, 최고의 바다 전망을 자랑합니다.');
INSERT INTO STAY VALUES ('S008', '경주 불국사 인근 가족호텔', '경주', 4, 200000, '호텔', 2, '불국사와 가까운 가족 여행에 적합한 호텔로, 편안하고 넓은 객실을 제공합니다.');
INSERT INTO STAY VALUES ('S009', '제주동부해안가리조트', '제주', 5, 300000, '리조트', 3, '제주 동부 해안가에 위치한 리조트로, 다양한 레저 활동과 함께 휴식을 즐길 수 있습니다.');
INSERT INTO STAY VALUES ('S010', '강릉 소나무 숲 캠핑장', '강릉', 4, 120000, '캠핑', 2, '강릉 소나무 숲 내에 위치한 캠핑장으로, 자연 속에서의 특별한 경험을 제공합니다.');
INSERT INTO STAY VALUES ('S011', '부산 태종대 근처 가족 빌라', '부산', 6, 160000, '빌라', 3, '부산 태종대 근처에 위치한 가족 단위 여행에 적합한 넓은 빌라입니다.');
INSERT INTO STAY VALUES ('S012', '경주 안압지 인근 전통펜션', '경주', 3, 140000, '펜션', 2, '경주 안압지 인근의 전통적인 분위기를 자랑하는 펜션으로, 조용한 휴식을 제공합니다.');
INSERT INTO STAY VALUES ('S013', '제주 중문 관광단지 내 스파 리조트', '제주', 2, 260000, '리조트', 1, '제주 중문 관광단지 내에 위치한 스파 리조트로, 최상의 휴식과 함께 스파를 즐길 수 있습니다.');
INSERT INTO STAY VALUES ('S014', '강릉 경포대 해변 아파트', '강릉', 3, 170000, '아파트', 2, '경포대 해변에 위치한 아파트로, 아름다운 해변과 가까운 거리에 있습니다.');
INSERT INTO STAY VALUES ('S015', '부산 송도 해안 산책로 스튜디오', '부산', 2, 95000, '스튜디오', 1, '부산 송도 해안 산책로에 위치한 스튜디오로, 멋진 해안 경치를 감상할 수 있습니다.');
INSERT INTO STAY VALUES ('S016', '경주 황리단길 근처 게스트하우스', '경주', 4, 110000, '게스트하우스', 2, '경주 황리단길 근처에 위치한 게스트하우스로, 경주의 전통과 현대가 어우러진 독특한 숙소입니다.');
INSERT INTO STAY VALUES ('S017', '제주 애월 해안가 럭셔리 빌라', '제주', 4, 280000, '빌라', 3, '제주 애월 해안가에 위치한 럭셔리 빌라로, 고급스러운 시설과 서비스를 제공합니다.');
INSERT INTO STAY VALUES ('S018', '강릉 주문진 어촌 마을 숙박', '강릉', 3, 80000, '민박', 1, '강릉 주문진 어촌 마을 내에 위치한 전통 민박으로, 어촌 생활을 경험할 수 있습니다.');
INSERT INTO STAY VALUES ('S019', '부산 서면 패션 스트리트 인근 호텔', '부산', 2, 130000, '호텔', 1, '부산 서면 패션 스트리트 인근에 위치한 호텔로, 쇼핑과 문화 생활을 즐길 수 있는 최적의 위치입니다.');
INSERT INTO STAY VALUES ('S020', '경주 보문호 인근 전망 좋은 콘도', '경주', 5, 210000, '콘도', 2, '경주 보문호를 한눈에 볼 수 있는 콘도로, 아름다운 전망과 함께 편안한 휴식을 즐길 수 있습니다.');


INSERT INTO RESERVATIONS VALUES (1, 'S001', 'KSJ01', '2024-04-01', 25000, '예약신청');
INSERT INTO RESERVATIONS VALUES (2, 'S002', 'LHM02', '2024-04-02', 20000, '예약신청');
INSERT INTO RESERVATIONS VALUES (3, 'S003', 'PJS03', '2024-04-03', 22000, '예약중');
INSERT INTO RESERVATIONS VALUES (4, 'S004', 'CHO04', '2024-04-04', 18000, '예약중');
INSERT INTO RESERVATIONS VALUES (5, 'S005', 'KYH05', '2024-03-20', 15000, '예약완료');
INSERT INTO RESERVATIONS VALUES (6, 'S006', 'LJH06', '2024-03-20', 8500, '예약완료');
INSERT INTO RESERVATIONS VALUES (7, 'S007', 'SHK07', '2024-03-20', 24000, '예약완료');
INSERT INTO RESERVATIONS VALUES (8, 'S008', 'YJS08', '2024-03-21', 20000, '예약완료');
INSERT INTO RESERVATIONS VALUES (9, 'S009', 'HJW09', '2024-03-25', 30000, '예약완료');
INSERT INTO RESERVATIONS VALUES (10, 'S010', 'KDH10', '2024-04-25', 12000, '예약완료');
INSERT INTO RESERVATIONS VALUES (11, 'S003', 'PJS03', NULL, 21000, NULL);
INSERT INTO RESERVATIONS VALUES (12, 'S006', 'LJH06', NULL, 8000, '예약완료');

