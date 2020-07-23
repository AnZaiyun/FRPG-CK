-- Create table
create table TFIGHTLOG
(
  l_id     NUMBER(10) not null,
  l_userid NUMBER(10) not null,
  l_roleid NUMBER(10) not null,
  l_drid   NUMBER(10),
  l_fx     NUMBER(2),
  l_zdlc   NUMBER(10),
  l_result NUMBER(2),
  vc_log   VARCHAR2(2000),
  d_date   DATE
)

-- Add comments to the table 
comment on table TFIGHTLOG
  is '战斗日志';
-- Add comments to the columns 
comment on column TFIGHTLOG.l_fx
  is '战斗方向（0战斗结果，1攻击，2受伤）';
comment on column TFIGHTLOG.l_zdlc
  is '战斗轮次（-99一击必杀）';
comment on column TFIGHTLOG.l_result
  is '战斗结果（1胜利，2失败,0战斗中）';
  
  
-- Create sequence 
create sequence SEQ_TFIGHTLOG_ID
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;

