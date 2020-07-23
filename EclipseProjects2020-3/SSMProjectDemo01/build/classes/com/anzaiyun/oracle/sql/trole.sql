--用户角色表
drop table trole;

create table trole(
l_rid number(8) primary key,
l_uid number(8) not null,
vc_name varchar2(10),
l_level number(5),
l_expnow number(10) default 0,
l_exptop number(10) default 0,
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

create sequence SEQ_TROLE_ID
minvalue 1
maxvalue 99999999
start with 1
increment by 1
cache 20;

--用户角色表（含装备及升级的数据）
drop table troleFull;

create table troleFull(
l_rid number(8) primary key,
l_uid number(8) not null,
vc_name varchar2(10),
l_level number(5),
vc_rare varchar2(10),
l_hp number(19,2),
l_mp number(19,2),
l_atk number(19,2),
l_def number(19,2),
l_zbid1 number(8),
l_zbid2 number(8),
l_giftid1 number(8)
);

insert into troleFull select t.*,'','' from trole t;
