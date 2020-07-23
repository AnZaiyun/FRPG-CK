--”√ªß±Ì
drop table tuser;

create table tuser(
l_uid number(8) primary key,
vc_name varchar2(10) not null,
vc_password varchar2(100)
);

-- Create sequence 
create sequence SEQ_TUSER_ID
minvalue 1
maxvalue 99999999
start with 1
increment by 1
cache 20;


create or replace trigger tuser_uid
  before insert
  on tuser  for each row
declare

begin
  select SEQ_TUSER_ID.nextval into :new.l_uid from dual;
end tuser_uid;
