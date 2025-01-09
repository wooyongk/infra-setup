CREATE TABLE IF NOT EXISTS holiday
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    country_code          VARCHAR(10)        NOT NULL COMMENT '기준 통화 (예: KR)',
    date                  DATE               NOT NULL COMMENT '날짜',
    wday                  VARCHAR(10)        NOT NULL COMMENT '요일(01:일 02:월 03:화 04:수 05:목 06:금 07:토)',
    open_yn               VARCHAR(10)        NOT NULL COMMENT '휴장일 여부(Y/N)',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_currency_date (country_code, date)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '휴장일 정보 테이블';
