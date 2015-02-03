-- 홉
CREATE TABLE `brewduck`.`HOPS` (
  `ID`            INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`          VARCHAR(800) NOT NULL COMMENT '이름', -- 이름
  `KOREAN_NAME`   VARCHAR(400) NULL     COMMENT '한글 이름', -- 한글 이름
  `VERSION`       INTEGER      NOT NULL COMMENT '버젼', -- 버젼
  `ORIGIN_CODE`   VARCHAR(2)   NULL     COMMENT '원산지코드', -- 원산지코드
  `NOTES`         TEXT         NULL     COMMENT '설명', -- 설명
  `KOREAN_NOTES`  TEXT         NULL     COMMENT '한글설명', -- 한글설명
  `TYPE_CODE`     VARCHAR(2)   NOT NULL COMMENT '종류코드', -- 종류코드
  `ALPHA`         DOUBLE       NOT NULL COMMENT '알파', -- 알파
  `BETA`          DOUBLE       NULL     COMMENT '베타', -- 베타
  `HSI`           DOUBLE       NULL     COMMENT 'HSI', -- HSI
  `HUMULENE`      DOUBLE       NULL     COMMENT 'HUMULENE', -- HUMULENE
  `CARYOPHYLLENE` DOUBLE       NULL     COMMENT 'CARYOPHYLLENE', -- CARYOPHYLLENE
  `COHUMULONE`    DOUBLE       NULL     COMMENT 'COHUMULONE', -- COHUMULONE
  `MYRCENE`       DOUBLE       NULL     COMMENT 'MYRCENE', -- MYRCENE
  `INSERT_ID`     VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`   DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`     VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`   DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`     VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`   DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '홉';

-- 홉
ALTER TABLE `brewduck`.`HOPS`
ADD CONSTRAINT `PK_HOPS` -- 홉 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 레시피
CREATE TABLE `brewduck`.`RECIPES` (
  `ID`                          INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `BREWER_ID`                   INTEGER      NOT NULL COMMENT '양조자일련번호', -- 양조자일련번호
  `STYLE_ID`                    INTEGER      NOT NULL COMMENT '스타일일련번호', -- 스타일일련번호
  `NAME`                        VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `VERSION`                     INTEGER      NULL     COMMENT '버젼', -- 버젼
  `TYPE_CODE`                   VARCHAR(2)   NULL     COMMENT '유형코드', -- 유형코드
  `EQUIPMENT_ID`                INTEGER      NULL     COMMENT '장비일련번호', -- 장비일련번호
  `ASST_BREWER_ID`              INTEGER      NULL     COMMENT '보조양조자일련번호', -- 보조양조자일련번호
  `BATCH_SIZE`                  INTEGER      NULL     COMMENT '배치용량', -- 배치용량
  `BOIL_SIZE`                   INTEGER      NULL     COMMENT '보일용량', -- 보일용량
  `BOIL_TIME`                   INTEGER      NULL     COMMENT '보일시간', -- 보일시간
  `EFFICIENCY`                  DOUBLE       NULL     COMMENT '효율', -- 효율
  `NOTES`                       TEXT         NULL     COMMENT '설명', -- 설명
  `TASTE_NOTES`                 TEXT         NULL     COMMENT '테이스팅설명', -- 테이스팅설명
  `TASTE_RATING`                DOUBLE       NULL     COMMENT '테이스팅점수', -- 테이스팅점수
  `OG`                          DOUBLE       NULL     COMMENT 'OG', -- OG
  `FG`                          DOUBLE       NULL     COMMENT 'FG', -- FG
  `FERMENTATION_STAGES`         INTEGER      NULL     COMMENT '발효단계', -- 발효단계
  `PRIMARY_FERMENTATION_TIME`   INTEGER      NULL     COMMENT '1차발효시간', -- 1차발효시간
  `PRIMARY_FERMENTATION_TEMP`   INTEGER      NULL     COMMENT '1차발효온도', -- 1차발효온도
  `SECONDARY_FERMENTATION_TIME` INTEGER      NULL     COMMENT '2차발효시간', -- 2차발효시간
  `SECONDARY_FERMENTATION_TEMP` INTEGER      NULL     COMMENT '2차발효온도', -- 2차발효온도
  `TERTIARY_FERMENTATION_TIME`  INTEGER      NULL     COMMENT '3차발효시간', -- 3차발효시간
  `TERTIARY_FERMENTATION_TEMP`  INTEGER      NULL     COMMENT '3차발효온도', -- 3차발효온도
  `AGE_TIME`                    INTEGER      NULL     COMMENT '숙성시간', -- 숙성시간
  `AGE_TEMP`                    INTEGER      NULL     COMMENT '숙성온도', -- 숙성온도
  `DATE`                        DATE         NULL     COMMENT '일자', -- 일자
  `STATUS`                      INTEGER      NULL     COMMENT '상태', -- 상태
  `ATCH_FILE_ID`                INTEGER      NULL     COMMENT '첨부파일일련번호', -- 첨부파일일련번호
  `INSERT_ID`                   VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`                 DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`                   VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`                 DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`                   VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`                 DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '레시피';

-- 레시피
ALTER TABLE `brewduck`.`RECIPES`
ADD CONSTRAINT `PK_RECIPES` -- 레시피 기본키
PRIMARY KEY (
    `ID`,        -- 일련번호
    `BREWER_ID`  -- 양조자일련번호
  );

-- 레시피_홉_맵핑
CREATE TABLE `brewduck`.`RECIPES_HOPS` (
  `ID`           INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `HOP_ID`       INTEGER      NULL     COMMENT '홉 일련번호', -- 홉 일련번호
  `RECIPE_ID`    INTEGER      NULL     COMMENT '레시피 일련번호', -- 레시피 일련번호
  `DISPLAY_NAME` VARCHAR(400) NULL     COMMENT '표시이름', -- 표시이름
  `RECIPE_ALPHA` DOUBLE       NULL     COMMENT '알파', -- 알파
  `AMOUNTS`      DOUBLE       NULL     COMMENT '수량', -- 수량
  `USE_CODE`     VARCHAR(2)   NULL     COMMENT '사용코드', -- 사용코드
  `TYPE_CODE`    VARCHAR(6)   NULL     COMMENT '형태코드', -- 형태코드
  `TIME`         INTEGER      NULL     COMMENT '시간', -- 시간
  `TIME_CODE`    VARCHAR(2)   NULL     COMMENT '시간코드', -- 시간코드
  `BREWER_ID`    INTEGER      NULL     COMMENT '양조자일련번호' -- 양조자일련번호
)
  COMMENT '레시피_홉_맵핑';

-- 레시피_홉_맵핑
ALTER TABLE `brewduck`.`RECIPES_HOPS`
ADD CONSTRAINT `PK_RECIPES_HOPS` -- 레시피_홉_맵핑 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 발효재료
CREATE TABLE `brewduck`.`FERMENTABLES` (
  `ID`               INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`             VARCHAR(800) NOT NULL COMMENT '이름', -- 이름
  `KOREAN_NAME`      VARCHAR(400) NULL     COMMENT '한국이름', -- 한국이름
  `VERSION`          INTEGER      NULL     COMMENT '버젼', -- 버젼
  `TYPE_CODE`        VARCHAR(2)   NULL     COMMENT '종류코드', -- 종류코드
  `YIELD`            DOUBLE       NULL     COMMENT '수율', -- 수율
  `COLOR`            DOUBLE       NOT NULL COMMENT '색상', -- 색상
  `COLOR_CODE`       VARCHAR(8)   NULL     COMMENT '색상코드', -- 색상코드
  `ADD_AFTER_BOIL`   BOOLEAN      NULL     COMMENT '보일링후추가여부', -- 보일링후추가여부
  `ORIGIN_CODE`      VARCHAR(2)   NULL     COMMENT '원산지코드', -- 원산지코드
  `SUPPLIER`         VARCHAR(500) NULL     COMMENT '공급업체', -- 공급업체
  `NOTES`            TEXT         NULL     COMMENT '설명', -- 설명
  `COARSE_FINE_DIFF` DOUBLE       NULL     COMMENT '입자비율', -- 입자비율
  `MOISTURE`         DOUBLE       NULL     COMMENT '습기', -- 습기
  `DIASTATIC_POWER`  DOUBLE       NULL     COMMENT '당화력', -- 당화력
  `PROTEIN`          DOUBLE       NULL     COMMENT '단백질', -- 단백질
  `MAX_IN_BATCH`     DOUBLE       NULL     COMMENT '권장배치율', -- 권장배치율
  `RECOMMEND_MASH`   DOUBLE       NULL     COMMENT '추천당화', -- 추천당화
  `SPECIFIC_GRAVITY` DOUBLE       NOT NULL COMMENT 'SG', -- SG
  `INSERT_ID`        VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`      DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`        VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`      DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`        VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`      DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '발효재료';

-- 발효재료
ALTER TABLE `brewduck`.`FERMENTABLES`
ADD CONSTRAINT `PK_FERMENTABLES` -- 발효재료 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 효모
CREATE TABLE `brewduck`.`YEASTS` (
  `ID`               INTEGER       NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`             VARCHAR(800)  NULL     COMMENT '이름', -- 이름
  `KOREAN_NAME`      VARCHAR(400)  NULL     COMMENT '한글이름', -- 한글이름
  `VERSION`          INTEGER       NULL     COMMENT '버젼', -- 버젼
  `TYPE_CODE`        VARCHAR(2)    NULL     COMMENT '종류코드', -- 종류코드
  `FORM_CODE`        VARCHAR(2)    NULL     COMMENT '유형코드', -- 유형코드
  `LABORATORY`       VARCHAR(100)  NULL     COMMENT '연구소', -- 연구소
  `PRODUCT_ID`       VARCHAR(100)  NULL     COMMENT '제품일련번호', -- 제품일련번호
  `MIN_TEMPERATURE`  DOUBLE        NULL     COMMENT '최소온도', -- 최소온도
  `MAX_TEMPERATURE`  DOUBLE        NULL     COMMENT '최대온도', -- 최대온도
  `FLOCCULATION`     VARCHAR(200)  NULL     COMMENT '응집력', -- 응집력
  `NOTES`            TEXT          NULL     COMMENT '설명', -- 설명
  `BEST_FOR`         VARCHAR(2000) NULL     COMMENT 'BEST방법', -- BEST방법
  `TIMES_CULTURED`   DOUBLE        NULL     COMMENT '효모배앙횟수', -- 효모배앙횟수
  `MAX_REUSE`        DOUBLE        NULL     COMMENT '최대재사용', -- 최대재사용
  `ADD_TO_SECONDARY` DOUBLE        NULL     COMMENT '2번째효모추가유무', -- 2번째효모추가유무
  `INSERT_ID`        VARCHAR(400)  NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`      DATETIME      NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`        VARCHAR(400)  NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`      DATETIME      NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`        VARCHAR(400)  NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`      DATETIME      NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '효모';

-- 효모
ALTER TABLE `brewduck`.`YEASTS`
ADD CONSTRAINT `PK_YEASTS` -- 효모 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 스타일
CREATE TABLE `brewduck`.`STYLES` (
  `ID`              INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`            VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `KOREAN_NAME`     VARCHAR(400) NULL     COMMENT '한글이름', -- 한글이름
  `CATEGORY`        VARCHAR(80)  NULL     COMMENT '카테고리', -- 카테고리
  `VERSION`         INTEGER      NULL     COMMENT '버젼', -- 버젼
  `CATEGORY_NUMBER` VARCHAR(3)   NULL     COMMENT '카테고리번호', -- 카테고리번호
  `STYLE_LETTER`    VARCHAR(2)   NULL     COMMENT '문자', -- 문자
  `STYLE_GUIDE`     VARCHAR(20)  NULL     COMMENT '가이드명', -- 가이드명
  `TYPE_CODE`       VARCHAR(2)   NULL     COMMENT '종류코드', -- 종류코드
  `OG_MIN`          DOUBLE       NULL     COMMENT 'OG, 최소값', -- OG, 최소값
  `OG_MAX`          DOUBLE       NULL     COMMENT 'OG, 최대값', -- OG, 최대값
  `FG_MIN`          DOUBLE       NULL     COMMENT 'FG, 최소값', -- FG, 최소값
  `FG_MAX`          DOUBLE       NULL     COMMENT 'FG, 최대값', -- FG, 최대값
  `IBU_MIN`         DOUBLE       NULL     COMMENT 'IBU, 최소값', -- IBU, 최소값
  `IBU_MAX`         DOUBLE       NULL     COMMENT 'IBU, 최대값', -- IBU, 최대값
  `COLOR_MIN`       DOUBLE       NULL     COMMENT 'SRM, 최소값', -- SRM, 최소값
  `COLOR_MAX`       DOUBLE       NULL     COMMENT 'SRM, 최대값', -- SRM, 최대값
  `CARB_MIN`        DOUBLE       NULL     COMMENT '탄산 함량, 최소값', -- 탄산 함량, 최소값
  `CARB_MAX`        DOUBLE       NULL     COMMENT '탄산 함량, 최대값', -- 탄산 함량, 최대값
  `ABV_MIN`         DOUBLE       NULL     COMMENT '알콜 함량, 최소값', -- 알콜 함량, 최소값
  `ABV_MAX`         DOUBLE       NULL     COMMENT '알콜 함량, 최대값', -- 알콜 함량, 최대값
  `NOTES`           TEXT         NULL     COMMENT '설명', -- 설명
  `PROFILE`         TEXT         NULL     COMMENT '프로필', -- 프로필
  `INGREDIENTS`     TEXT         NULL     COMMENT '추천 재료', -- 추천 재료
  `EXAMPLES`        TEXT         NULL     COMMENT '맥주 예제', -- 맥주 예제
  `LOOK`            TEXT         NULL     COMMENT '외관', -- 외관
  `SMELL`           TEXT         NULL     COMMENT '향', -- 향
  `TASTE`           TEXT         NULL     COMMENT '맛', -- 맛
  `MOUTHFEEL`       TEXT         NULL     COMMENT '마우스필', -- 마우스필
  `OVERALL`         TEXT         NULL     COMMENT '총평', -- 총평
  `COMMENT`         TEXT         NULL     COMMENT '코멘트', -- 코멘트
  `INSERT_ID`       VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`     DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`       VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`     DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`       VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`     DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '스타일';

-- 스타일
ALTER TABLE `brewduck`.`STYLES`
ADD CONSTRAINT `PK_STYLES` -- 스타일 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

ALTER TABLE `brewduck`.`STYLES`
MODIFY COLUMN `ID` INTEGER NOT NULL AUTO_INCREMENT COMMENT '일련번호';

-- 기타재료
CREATE TABLE `brewduck`.`MISCS` (
  `ID`          INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`        VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `VERSION`     INTEGER      NULL     COMMENT '버젼', -- 버젼
  `TYPE_CODE`   VARCHAR(2)   NULL     COMMENT '종류코드', -- 종류코드
  `USE_FOR`     VARCHAR(2)   NULL     COMMENT '사용방법', -- 사용방법
  `NOTES`       TEXT         NULL     COMMENT '설명', -- 설명
  `INSERT_ID`   VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE` DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`   VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE` DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`   VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE` DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '기타재료';

-- 기타재료
ALTER TABLE `brewduck`.`MISCS`
ADD CONSTRAINT `PK_MISCS` -- 기타재료 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 레시피_발효재료_맵핑
CREATE TABLE `brewduck`.`RECIPES_FERMENTABLES` (
  `ID`             INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `RECIPE_ID`      INTEGER      NULL     COMMENT '레시피 일련번호', -- 레시피 일련번호
  `FERMENTABLE_ID` INTEGER      NULL     COMMENT '발효재료 일련번호', -- 발효재료 일련번호
  `VERSION`        INTEGER      NULL     COMMENT '버젼', -- 버젼
  `DISPLAY_NAME`   INTEGER      NULL     COMMENT '표시이름', -- 표시이름
  `AMOUNTS`        DOUBLE       NULL     COMMENT '수량', -- 수량
  `WEIGHT_UNIT`    VARCHAR(2)   NULL     COMMENT '무게단위', -- 무게단위
  `TYPE_CODE`      VARCHAR(2)   NULL     COMMENT '종류코드', -- 종류코드
  `USE_CODE`       VARCHAR(2)   NULL     COMMENT '사용코드', -- 사용코드
  `INSERT_ID`      VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`    DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`      VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`    DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`      VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`    DATETIME     NULL     COMMENT '삭제일시', -- 삭제일시
  `BREWER_ID`      INTEGER      NULL     COMMENT '양조자일련번호' -- 양조자일련번호
)
  COMMENT '레시피_발효재료_맵핑';

-- 레시피_발효재료_맵핑
ALTER TABLE `brewduck`.`RECIPES_FERMENTABLES`
ADD CONSTRAINT `PK_RECIPES_FERMENTABLES` -- 레시피_발효재료_맵핑 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 레시피_효모_맵핑
CREATE TABLE `brewduck`.`RECIPES_YEASTS` (
  `ID`           INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `YEAST_ID`     INTEGER      NULL     COMMENT '효모일련번호', -- 효모일련번호
  `RECIPE_ID`    INTEGER      NULL     COMMENT '레시피일련번호', -- 레시피일련번호
  `DISPLAY_NAME` VARCHAR(400) NULL     COMMENT '표시이름', -- 표시이름
  `INSERT_ID`    VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`  DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`    VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`  DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`    VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`  DATETIME     NULL     COMMENT '삭제일시', -- 삭제일시
  `BREWER_ID`    INTEGER      NULL     COMMENT '양조자일련번호' -- 양조자일련번호
)
  COMMENT '레시피_효모_맵핑';

-- 레시피_효모_맵핑
ALTER TABLE `brewduck`.`RECIPES_YEASTS`
ADD CONSTRAINT `PK_RECIPES_YEASTS` -- 레시피_효모_맵핑 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 레시피_기타재료_맵핑
CREATE TABLE `brewduck`.`RECIPES_MISCS` (
  `ID`               INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `RECIPE_ID`        INTEGER      NULL     COMMENT '레시피일련번호', -- 레시피일련번호
  `MISC_ID`          INTEGER      NULL     COMMENT '기타재료 일련번호', -- 기타재료 일련번호
  `DISPLAY_NAME`     VARCHAR(400) NULL     COMMENT '표시이름', -- 표시이름
  `WEIGHT_UNIT_CODE` VARCHAR(2)   NULL     COMMENT '무게단위코드', -- 무게단위코드
  `WEIGHT`           DOUBLE       NULL     COMMENT '무게', -- 무게
  `TIME`             INTEGER      NULL     COMMENT '시간', -- 시간
  `TIME_UNIT_CODE`   VARCHAR(2)   NULL     COMMENT '시간단위코드', -- 시간단위코드
  `USE_CODE`         VARCHAR(2)   NULL     COMMENT '사용코드', -- 사용코드
  `INSERT_ID`        VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`      DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`        VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`      DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`        VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`      DATETIME     NULL     COMMENT '삭제일시', -- 삭제일시
  `BREWER_ID`        INTEGER      NULL     COMMENT '양조자일련번호' -- 양조자일련번호
)
  COMMENT '레시피_기타재료_맵핑';

-- 레시피_기타재료_맵핑
ALTER TABLE `brewduck`.`RECIPES_MISCS`
ADD CONSTRAINT `PK_RECIPES_MISCS` -- 레시피_기타재료_맵핑 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 홉 대체
CREATE TABLE `brewduck`.`HOPS_SUBSTITUTES` (
  `ID`             INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `HOP_ID`         INTEGER      NULL     COMMENT '홉 일련번호', -- 홉 일련번호
  `SUBSTITUTES_ID` INTEGER      NULL     COMMENT '대체품 일련번호', -- 대체품 일련번호
  `NAME`           VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `INSERT_ID`      VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`    DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`      VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`    DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`      VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`    DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '홉 대체';

-- 홉 대체
ALTER TABLE `brewduck`.`HOPS_SUBSTITUTES`
ADD CONSTRAINT `PK_HOPS_SUBSTITUTES` -- 홉 대체 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 게시판 마스터
CREATE TABLE `brewduck`.`BOARD_MASTER` (
  `ID`                 INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`               VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `KOREAN_NAME`        VARCHAR(400) NULL     COMMENT '한글이름', -- 한글이름
  `NOTES`              TEXT         NULL     COMMENT '설명', -- 설명
  `TYPE_CODE`          VARCHAR(6)   NULL     COMMENT '종류코드', -- 종류코드
  `ATTRB_CODE`         VARCHAR(6)   NULL     COMMENT '속성코드', -- 속성코드
  `REPLY_POSBL_YN`     VARCHAR(1)   NULL     COMMENT '리플가능여부', -- 리플가능여부
  `FILE_ATCH_POSBL_YN` VARCHAR(1)   NULL     COMMENT '파일첨부가능여부', -- 파일첨부가능여부
  `FILE_ATCH_CNT`      INTEGER      NULL     COMMENT '파일첨부수', -- 파일첨부수
  `FILE_ATCH_SIZE`     INTEGER      NULL     COMMENT '파일첨부용량', -- 파일첨부용량
  `USE_YN`             VARCHAR(1)   NULL     COMMENT '사용여부', -- 사용여부
  `TEMPLATE_ID`        INTEGER      NULL     COMMENT '템플렛아이디', -- 템플렛아이디
  `INSERT_ID`          VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`        DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`          VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`        DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`          VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`        DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '게시판 마스터';

-- 게시판 마스터
ALTER TABLE `brewduck`.`BOARD_MASTER`
ADD CONSTRAINT `PK_BOARD_MASTER` -- 게시판 마스터 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 게시판
CREATE TABLE `brewduck`.`BOARD` (
  `ID`            INTEGER       NOT NULL COMMENT '일련번호', -- 일련번호
  `MASTER_ID`     INTEGER       NULL     COMMENT '마스터일련번호', -- 마스터일련번호
  `NUM`           INTEGER       NULL     COMMENT '번호', -- 번호
  `SUBJECT`       VARCHAR(2000) NULL     COMMENT '제목', -- 제목
  `CONTENT`       TEXT          NULL     COMMENT '내용', -- 내용
  `ANSWER_YN`     VARCHAR(1)    NULL     COMMENT '답변여부', -- 답변여부
  `PARENT_NUM`    INTEGER       NULL     COMMENT '부모번호', -- 부모번호
  `SORT_ORDER`    INTEGER       NULL     COMMENT '정렬순서', -- 정렬순서
  `READ_CNT`      INTEGER       NULL     COMMENT '조회수', -- 조회수
  `USE_YN`        VARCHAR(1)    NULL     COMMENT '사용여부', -- 사용여부
  `ATCH_FILE_NUM` INTEGER       NULL     COMMENT '첨부파일번호', -- 첨부파일번호
  `INSERT_ID`     VARCHAR(400)  NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`   DATETIME      NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`     VARCHAR(400)  NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`   DATETIME      NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`     VARCHAR(400)  NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`   DATETIME      NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '게시판';

-- 게시판
ALTER TABLE `brewduck`.`BOARD`
ADD CONSTRAINT `PK_BOARD` -- 게시판 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 게시판 댓글
CREATE TABLE `brewduck`.`BOARD_COMMENT` (
  `ID`          INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `ID2`         INTEGER      NULL     COMMENT '게시판마스터일련번호', -- 게시판마스터일련번호
  `ID3`         INTEGER      NULL     COMMENT '게시판일련번호', -- 게시판일련번호
  `WRITER_NAME` VARCHAR(200) NULL     COMMENT '작성자이름', -- 작성자이름
  `CONTENT`     TEXT         NULL     COMMENT '내용', -- 내용
  `USE_YN`      VARCHAR(1)   NULL     COMMENT '사용여부', -- 사용여부
  `INSERT_ID`   VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE` DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`   VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE` DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`   VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE` DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '게시판 댓글';

-- 게시판 댓글
ALTER TABLE `brewduck`.`BOARD_COMMENT`
ADD CONSTRAINT `PK_BOARD_COMMENT` -- 게시판 댓글 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

ALTER TABLE `brewduck`.`BOARD_COMMENT`
MODIFY COLUMN `ID` INTEGER NOT NULL AUTO_INCREMENT COMMENT '일련번호';

-- 공통코드
CREATE TABLE `brewduck`.`COMMON_CODE` (
  `COMMON_SET`  VARCHAR(20)  NULL COMMENT '공통설정', -- 공통설정
  `COMMON_CODE` VARCHAR(20)  NULL COMMENT '공통코드', -- 공통코드
  `NOTES`       TEXT         NULL COMMENT '설명', -- 설명
  `NAME`        VARCHAR(800) NULL COMMENT '이름', -- 이름
  `INSERT_ID`   VARCHAR(400) NULL COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE` DATETIME     NULL COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`   VARCHAR(400) NULL COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE` DATETIME     NULL COMMENT '수정일시', -- 수정일시
  `DELETE_ID`   VARCHAR(400) NULL COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE` DATETIME     NULL COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '공통코드';

-- 파일정보
CREATE TABLE `brewduck`.`FILEINFO` (
  `ID`             INTEGER      NULL COMMENT '일련번호', -- 일련번호
  `FILE_NUM`       INTEGER      NULL COMMENT '파일번호', -- 파일번호
  `SIZE`           INTEGER      NULL COMMENT '용량', -- 용량
  `NAME`           VARCHAR(800) NULL COMMENT '이름', -- 이름
  `DELETE_YN`      VARCHAR(1)   NULL COMMENT '삭제여부', -- 삭제여부
  `REAL_FILE_NAME` VARCHAR(800) NULL COMMENT '실제파일이름', -- 실제파일이름
  `FILE_MIME`      VARCHAR(200) NULL COMMENT '파일MIME', -- 파일MIME
  `INSERT_ID`      VARCHAR(400) NULL COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE`    DATETIME     NULL COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`      VARCHAR(400) NULL COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE`    DATETIME     NULL COMMENT '수정일시', -- 수정일시
  `DELETE_ID`      VARCHAR(400) NULL COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE`    DATETIME     NULL COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '파일정보';

-- 홉 아로마
CREATE TABLE `brewduck`.`HOPS_AROMA` (
  `ID`          INTEGER      NOT NULL COMMENT '일련번호', -- 일련번호
  `HOP_ID`      INTEGER      NULL     COMMENT '홉 일련번호', -- 홉 일련번호
  `NAME`        VARCHAR(800) NULL     COMMENT '이름', -- 이름
  `AROMA_CODE`  VARCHAR(10)  NULL     COMMENT '아로마코드', -- 아로마코드
  `AROMA_NAME`  VARCHAR(800) NULL     COMMENT '아로마이름', -- 아로마이름
  `INSERT_ID`   VARCHAR(400) NULL     COMMENT '저장아이디', -- 저장아이디
  `INSERT_DATE` DATETIME     NULL     COMMENT '저장일시', -- 저장일시
  `UPDATE_ID`   VARCHAR(400) NULL     COMMENT '수정아이디', -- 수정아이디
  `UPDATE_DATE` DATETIME     NULL     COMMENT '수정일시', -- 수정일시
  `DELETE_ID`   VARCHAR(400) NULL     COMMENT '삭제아이디', -- 삭제아이디
  `DELETE_DATE` DATETIME     NULL     COMMENT '삭제일시' -- 삭제일시
)
  COMMENT '홉 아로마';

-- 홉 아로마
ALTER TABLE `brewduck`.`HOPS_AROMA`
ADD CONSTRAINT `PK_HOPS_AROMA` -- 홉 아로마 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

-- 계정
CREATE TABLE `brewduck`.`ACCOUNT` (
  `ID`          INTEGER       NOT NULL COMMENT '일련번호', -- 일련번호
  `NAME`        VARCHAR(800)  NOT NULL COMMENT '이름', -- 이름
  `EMAIL`       VARCHAR(1000) NOT NULL COMMENT '이메일', -- 이메일
  `PASSWORD`    VARCHAR(100)  NOT NULL COMMENT '비밀번호', -- 비밀번호
  `AUTHORITY`   VARCHAR(100)  NOT NULL COMMENT '권한', -- 권한
  `ACTIVATION`  VARCHAR(100)  NULL     COMMENT '활성화', -- 활성화
  `INSERT_DATE` DATETIME      NULL     COMMENT '저장일시' -- 저장일시
)
  COMMENT '계정';

-- 계정
ALTER TABLE `brewduck`.`ACCOUNT`
ADD CONSTRAINT `PK_ACCOUNT` -- 계정 기본키
PRIMARY KEY (
    `ID` -- 일련번호
  );

ALTER TABLE `brewduck`.`ACCOUNT`
MODIFY COLUMN `ID` INTEGER NOT NULL AUTO_INCREMENT COMMENT '일련번호';
