alter table stock_basic_daily_price modify high decimal(14, 6) not null comment '최고가';
alter table stock_basic_daily_price modify low decimal(14, 6) not null comment '최저가';
alter table stock_basic_daily_price modify close decimal(14, 6) not null comment '종가';

alter table stock add delisting_date date default null comment '상장폐지일자' after listing_date;
alter table stock add standard_industry varchar(255) default null comment '표준산업분류코드명' after company_eg_name;
alter table stock add index_industry_section varchar(255) default null comment '지수업종대분류코드명' after standard_industry;
alter table stock add index_industry_division varchar(255) default null comment '지수업종중분류코드명' after index_industry_section;
alter table stock add index_industry_group varchar(255) default null comment '지수업종소분류코드명' after index_industry_division;
alter table stock add trading_stop_yn varchar(1) default null comment '거래정지여부' after index_industry_group;

