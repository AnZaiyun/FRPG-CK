--½ÇÉ«±³°ü±í
drop table tUserBag;
create table tUserBag(
l_uid number(8) not null,
vc_itemid varchar2(20),
vc_wplb varchar2(6),
vc_name varchar2(100),
l_count number(8),
vc_sm varchar2(2000)
); 

create table tUserBag_bak as select * from tUserBag;
insert into tUserBag(l_uid, vc_itemid, vc_name, l_count, vc_sm)
select t.l_uid, t.vc_itemid, t.vc_name, t.l_count, t.vc_sm from tUserBag_bak t;
drop table tUserBag_bak;
