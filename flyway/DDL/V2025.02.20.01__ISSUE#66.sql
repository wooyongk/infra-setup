CREATE TABLE IF NOT EXISTS dev_data.flight_departures
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    fid                   VARCHAR(40)        NOT NULL COMMENT '항공편 고유 식별자',
    airline               VARCHAR(20)            NULL COMMENT '항공사 한글명',
    flight_id             VARCHAR(10)        NOT NULL COMMENT '항공 편명',
    schedule_datetime     DATETIME           NOT NULL COMMENT '출발예정시간',
    estimated_datetime    DATETIME           NOT NULL COMMENT '출발변경시간',
    arrival_airport       VARCHAR(20)            NULL COMMENT '도착지공항 한글명',
    checkin_counter       VARCHAR(10)            NULL COMMENT '체크인카운터',
    gate_number           VARCHAR(10)            NULL COMMENT '탑승구 번호',
    status                VARCHAR(10)            NULL COMMENT '운항상태 (출발, 결항, 지연, 회항, 탑승중, 마감예정, 탑승마감, 탑승준비, 체크인오픈, 체크인마감)',
    terminal_id           VARCHAR(10)            NULL COMMENT '터미널 (P01: 제1 터미널, P02: 탑승동, P03: 제2 터미널)',
    elapse_time           VARCHAR(4)             NULL COMMENT '운항소요시간(HHMM)',
    aircraft_register_no  VARCHAR(20)            NULL COMMENT '항공기 등록 번호',
    aircraft_subtype      VARCHAR(20)            NULL COMMENT '항공기 하위 유형',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_code_date (fid, flight_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT='인천공항 출발 항공편 정보';


CREATE TABLE IF NOT EXISTS passenger_traffic_forecast
(
    nkey                  INT AUTO_INCREMENT NOT NULL COMMENT '고유 식별자',
    date                  DATE               NOT NULL COMMENT '날짜',
    time                  VARCHAR(20)        NOT NULL COMMENT '시간대(HH_HH)-1시간 간격',
    terminal_id           VARCHAR(10)        NOT NULL COMMENT '터미널 (P01: 제1 터미널, P02: 탑승동, P03: 제2 터미널)',
    arrival_departure     VARCHAR(10)        NOT NULL COMMENT '입국장/출국장',
    gate_number           VARCHAR(10)        NOT NULL COMMENT '게이트 번호',
    expected_passengers   INT                NOT NULL COMMENT '예상 승객수',
    create_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
    update_date           DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY (nkey),
    UNIQUE KEY unique_code_date (date, time, terminal_id, arrival_departure, gate_number)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT='출입국별 승객 예고 정보';

