CREATE TABLE IF NOT EXISTS stock_public_offering
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    date                  DATE               NOT NULL COMMENT '기준일',
    code                  VARCHAR(20)        NOT NULL COMMENT '종목 코드',
    name                  VARCHAR(40)        NOT NULL COMMENT '종목명',
    offering_price        INT                NOT NULL COMMENT '공모가',
    face_value            VARCHAR(20)        NOT NULL COMMENT '액면가',
    offering_period       VARCHAR(30)        NOT NULL COMMENT '공모 기간',
    pay_date              DATE               NOT NULL COMMENT '납입일',
    refund_date           DATE               NOT NULL COMMENT '환불일',
    listing_date          DATE                   NULL COMMENT '상장일',
    lead_manager          VARCHAR(50)        NOT NULL COMMENT '주간사',
    before_capital        INT                NOT NULL COMMENT '공모전 자본금',
    after_capital         INT                NOT NULL COMMENT '공모후 자본금',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_code_date (code, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT='공모주 청약';