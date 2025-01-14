CREATE TABLE IF NOT EXISTS stock_basic_daily_price
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    date                  DATE               NOT NULL COMMENT '날짜',
    code                  VARCHAR(255)       NOT NULL COMMENT '단축 코드',
    currency              VARCHAR(10)        NOT NULL COMMENT '통화',
    open                  DECIMAL(12, 6)     NOT NULL COMMENT '시작가',
    high                  DECIMAL(12, 6)     NOT NULL COMMENT '최고가',
    low                   DECIMAL(12, 6)     NOT NULL COMMENT '최저가',
    close                 DECIMAL(12, 6)     NOT NULL COMMENT '종가',
    volume                BIGINT             NOT NULL COMMENT '거래량',
    amount                BIGINT             NOT NULL COMMENT '거래대금',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_code_date (code, date)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '주식 기본 시세 테이블';

