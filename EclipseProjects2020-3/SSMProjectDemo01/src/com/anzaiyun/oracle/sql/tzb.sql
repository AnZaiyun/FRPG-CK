--用户装备表
drop table tzb;
create table tzb(
l_zbid number(8) primary key,
l_uid number(8) not null,
vc_name varchar2(10),
l_level number(5),
l_expnow number(10),
l_exptop number(10),
vc_rare varchar2(10),
l_hp number(19,2),
l_mp number(19,2),
l_atk number(19,2),
l_def number(19,2),
l_hp_g number(19,2),
l_mp_g number(19,2),
l_atk_g number(19,2),
l_def_g number(19,2)
); 

create sequence SEQ_TZB_ID
minvalue 1
maxvalue 99999999
start with 1
increment by 1
cache 20;

--用户装备表(升级后完整数据)
drop table tzbFull;
insert into tzbFull select * from tzb;
create table tzbFull(
l_zbid number(8) primary key,
l_uid number(8) not null,
vc_name varchar2(10),
l_level number(5),
vc_rare varchar2(10),
l_hp number(19,2),
l_mp number(19,2),
l_atk number(19,2),
l_def number(19,2),
l_sfsy number(2) default 0
); 
