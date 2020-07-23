drop table TSTORE;
create table TSTORE
(
  l_sdid   number(4)  not null,
  l_itemid NUMBER(10) not null,
  vc_wplb  varchar(6) ,   
  vc_mc    VARCHAR2(100),
  l_price  NUMBER(10),
  l_count  NUMBER(10),
  vc_sm    VARCHAR2(2000)
);


/*insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (1, 1, '2', 'Role Paper', 2500, 9999, '³é¿¨È¯-½ÇÉ«');

insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (1, 2, '2', 'ZB Paper', 2000, 9999, '³é¿¨È¯-×°±¸');

insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (1, 5, '2', 'Gift Paper', 5000, 9999, '³é¿¨È¯-Ìì¸³');

insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (2, 1, '2', 'Role Paper', 25, 9999, '³é¿¨È¯-½ÇÉ«');

insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (2, 2, '2', 'ZB Paper', 20, 9999, '³é¿¨È¯-×°±¸');

insert into tstore (L_SDID, L_ITEMID, VC_WPLB, VC_MC, L_PRICE, L_COUNT, VC_SM)
values (2, 5, '2', 'Gift Paper', 50, 9999, '³é¿¨È¯-Ìì¸³');

*/
