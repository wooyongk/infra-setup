CREATE TABLE IF NOT EXISTS exchange_rate
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    currency_pair         VARCHAR(255)       NOT NULL COMMENT '통화 쌍 (예: USD/KRW)',
    base_currency         VARCHAR(10)        NOT NULL COMMENT '기준 통화 (예: USD)',
    quote_currency        VARCHAR(10)        NOT NULL COMMENT '상대 통화 (예: KRW)',
    exchange_date         DATE               NOT NULL COMMENT '환율 적용 날짜',
    open_rate             DECIMAL(15, 6)     NOT NULL COMMENT '개장가',
    close_rate            DECIMAL(15, 6)     NOT NULL COMMENT '종가',
    high_rate             DECIMAL(15, 6)     NOT NULL COMMENT '최고가',
    low_rate              DECIMAL(15, 6)     NOT NULL COMMENT '최저가',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_currency_date (currency_pair, exchange_date)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '환율 정보 테이블';