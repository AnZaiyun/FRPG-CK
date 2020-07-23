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
  is 'ս����־';
-- Add comments to the columns 
comment on column TFIGHTLOG.l_fx
  is 'ս������0ս�������1������2���ˣ�';
comment on column TFIGHTLOG.l_zdlc
  is 'ս���ִΣ�-99һ����ɱ��';
comment on column TFIGHTLOG.l_result
  is 'ս�������1ʤ����2ʧ��,0ս���У�';
  
  
-- Create sequence 
create sequence SEQ_TFIGHTLOG_ID
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;

