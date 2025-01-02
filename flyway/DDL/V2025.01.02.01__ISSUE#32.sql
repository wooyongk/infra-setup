alter table exchange_rate modify open_rate decimal(15, 6) null comment '개장가';
alter table exchange_rate modify close_rate decimal(15, 6) null comment '종가';
alter table exchange_rate modify high_rate decimal(15, 6) null comment '최고가';
alter table exchange_rate modify low_rate decimal(15, 6) null comment '최저가';
