create table TGift
(
  l_giftid NUMBER(8) not null,
  l_uid    NUMBER(8) not null,
  vc_name  VARCHAR2(10),
  l_level  NUMBER(5),
  l_expnow number(10),
  l_exptop number(10),
  vc_rare  VARCHAR2(10),
  l_lb     NUMBER(4),
  l_lbmx1  NUMBER(4),
  l_sfsy   number(2) default 0
);

create table TGiftSX
(
  l_giftid NUMBER(8) not null,
  l_lb     NUMBER(4),
  l_lbmx1  number(4),
  l_sx     number(10,2)
);

create table TRoleGift
(
  l_uid    NUMBER(8),
  l_rid    NUMBER(8),
  l_giftid NUMBER(8)
);

-- Create sequence 
create sequence SEQ_TGift_ID
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;
