CREATE TABLE IF NOT EXISTS stock
(
    standard_code         VARCHAR(255) NOT NULL COMMENT '표준 코드',
    code                  VARCHAR(255) NOT NULL COMMENT '단축 코드',
    market                VARCHAR(255) NOT NULL COMMENT '시장 구분',
    listing_date          DATE         NOT NULL COMMENT '상장일',
    company_kr_name       VARCHAR(255) NOT NULL COMMENT '한글 종목명',
    company_kr_short_name VARCHAR(255) NOT NULL COMMENT '한글 종목 약명',
    company_eg_name       VARCHAR(255) NOT NULL COMMENT '영문 종목명',
    create_date           DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (code),
    UNIQUE KEY (standard_code)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='주식 기본 정보'