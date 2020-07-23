/*-- Create table
create table TDICTIONARIES
(
  l_dictionary_no NUMBER(6) not null,
  c_lemma_item    VARCHAR2(100) not null,
  vc_item_name    VARCHAR2(200),
  vc_sm           VARCHAR2(200),
  l_sm            NUMBER
)

-- Add comments to the table 
comment on table TDICTIONARIES
  is '数据字典';
-- Add comments to the columns 
comment on column TDICTIONARIES.l_dictionary_no
  is '项目编号';
comment on column TDICTIONARIES.c_lemma_item
  is '明细编号';
comment on column TDICTIONARIES.vc_item_name
  is '明细名称';
comment on column TDICTIONARIES.vc_sm
  is '说明';
comment on column TDICTIONARIES.l_sm
  is '说明';*/

/*select a.l_dictionary_no, a.c_lemma_item, a.vc_item_name, a.vc_sm, a.l_sm 
  from (select t.l_dictionary_no, t.c_lemma_item, t.vc_item_name, t.vc_sm, t.l_sm ,
               decode(t.c_lemma_item , '!',-1,to_number(t.c_lemma_item)) l_item 
          from tdictionaries t) a
 order by a.l_dictionary_no,a.l_item;*/
delete from tdictionaries;

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '!', '物品', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '1', 'Role Paper', '用于抽取角色', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '2', 'ZB Paper', '用于抽取装备', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '3', 'Gold', '用于购买物品（金币）', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '4', 'Diamond', '用于购买物品（钻石）', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '5', 'Gift Paper', '用于抽取天赋', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '!', '经验上限', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '1', '角色卡', null, 100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '2', '角色卡', null, 200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '3', '角色卡', null, 300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '4', '角色卡', null, 400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '5', '角色卡', null, 500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '6', '角色卡', null, 600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '7', '角色卡', null, 700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '8', '角色卡', null, 800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '9', '角色卡', null, 900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '10', '角色卡', null, 1000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '11', '角色卡', null, 1200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '12', '角色卡', null, 1400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '13', '角色卡', null, 1600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '14', '角色卡', null, 1800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '15', '角色卡', null, 2000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '16', '角色卡', null, 2200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '17', '角色卡', null, 2400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '18', '角色卡', null, 2600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '19', '角色卡', null, 2800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '20', '角色卡', null, 3000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '21', '角色卡', null, 3300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '22', '角色卡', null, 3600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '23', '角色卡', null, 3900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '24', '角色卡', null, 4200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '25', '角色卡', null, 4500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '26', '角色卡', null, 4800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '27', '角色卡', null, 5100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '28', '角色卡', null, 6400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '29', '角色卡', null, 6700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '30', '角色卡', null, 7000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '31', '角色卡', null, 7400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '32', '角色卡', null, 7800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '33', '角色卡', null, 8200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '34', '角色卡', null, 8600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '35', '角色卡', null, 9000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '36', '角色卡', null, 9400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '37', '角色卡', null, 9800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '38', '角色卡', null, 10200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '39', '角色卡', null, 10600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '40', '角色卡', null, 11000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '41', '角色卡', null, 11500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '42', '角色卡', null, 12000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '43', '角色卡', null, 12500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '44', '角色卡', null, 13000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '45', '角色卡', null, 13500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '46', '角色卡', null, 14000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '47', '角色卡', null, 14500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '48', '角色卡', null, 15000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '49', '角色卡', null, 15500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '50', '角色卡', null, 16000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '51', '角色卡', null, 16600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '52', '角色卡', null, 17200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '53', '角色卡', null, 17800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '54', '角色卡', null, 18400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '55', '角色卡', null, 19000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '56', '角色卡', null, 19600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '57', '角色卡', null, 20200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '58', '角色卡', null, 20800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '59', '角色卡', null, 21400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '60', '角色卡', null, 22000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '61', '角色卡', null, 22700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '62', '角色卡', null, 23400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '63', '角色卡', null, 24100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '64', '角色卡', null, 24800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '65', '角色卡', null, 25500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '66', '角色卡', null, 26200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '67', '角色卡', null, 26900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '68', '角色卡', null, 27600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '69', '角色卡', null, 28300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '70', '角色卡', null, 29000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '71', '角色卡', null, 29800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '72', '角色卡', null, 30600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '73', '角色卡', null, 31400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '74', '角色卡', null, 32200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '75', '角色卡', null, 33000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '76', '角色卡', null, 33800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '77', '角色卡', null, 34600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '78', '角色卡', null, 35400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '79', '角色卡', null, 36200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '80', '角色卡', null, 37000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '81', '角色卡', null, 37900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '82', '角色卡', null, 38800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '83', '角色卡', null, 39700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '84', '角色卡', null, 40600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '85', '角色卡', null, 41500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '86', '角色卡', null, 42400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '87', '角色卡', null, 43300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '88', '角色卡', null, 44200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '89', '角色卡', null, 45100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '90', '角色卡', null, 46000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '91', '角色卡', null, 46900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '92', '角色卡', null, 47800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '93', '角色卡', null, 48700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '94', '角色卡', null, 49600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '95', '角色卡', null, 50500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '96', '角色卡', null, 51400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '97', '角色卡', null, 52300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '98', '角色卡', null, 53200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '99', '角色卡', null, 54100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '100', '角色卡', null, 55000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '!', '物品种类', '对1-物品进行分类', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '1', '货币', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '2', '抽卡券', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '!', '数值型天赋基数（根据稀有度决定基数）', '稀有等级', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '1', 'HP', 'SSS', 14000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '2', 'HP', 'SS', 12000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '3', 'HP', 'S', 10000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '4', 'HP', 'A', 8000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '5', 'HP', 'B', 6000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '6', 'HP', 'C', 4000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '7', 'HP', 'D', 2000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '1', 'MP', 'SSS', 7000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '2', 'MP', 'SS', 6000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '3', 'MP', 'S', 5000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '4', 'MP', 'A', 4000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '5', 'MP', 'B', 3000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '6', 'MP', 'C', 2000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '7', 'MP', 'D', 1000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '1', 'ATK', 'SSS', 140);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '2', 'ATK', 'SS', 120);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '3', 'ATK', 'S', 100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '4', 'ATK', 'A', 80);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '5', 'ATK', 'B', 60);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '6', 'ATK', 'C', 40);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '7', 'ATK', 'D', 20);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '1', 'DEF', 'SSS', 140);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '2', 'DEF', 'SS', 120);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '3', 'DEF', 'S', 100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '4', 'DEF', 'A', 80);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '5', 'DEF', 'B', 60);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '6', 'DEF', 'C', 40);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '7', 'DEF', 'D', 20);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '!', '百分比型天赋基数（根据稀有度决定基数）', '稀有等级', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '1', 'HP', 'SSS', 14);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '2', 'HP', 'SS', 12);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '3', 'HP', 'S', 10);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '4', 'HP', 'A', 8);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '5', 'HP', 'B', 6);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '6', 'HP', 'C', 4);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '7', 'HP', 'D', 2);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '1', 'MP', 'SSS', 7);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '2', 'MP', 'SS', 6);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '3', 'MP', 'S', 5);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '4', 'MP', 'A', 4);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '5', 'MP', 'B', 3);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '6', 'MP', 'C', 2);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '7', 'MP', 'D', 1);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '1', 'ATK', 'SSS', 7);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '2', 'ATK', 'SS', 6);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '3', 'ATK', 'S', 5);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '4', 'ATK', 'A', 4);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '5', 'ATK', 'B', 3);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '6', 'ATK', 'C', 2);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '7', 'ATK', 'D', 1);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '1', 'DEF', 'SSS', 7);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '2', 'DEF', 'SS', 6);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '3', 'DEF', 'S', 5);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '4', 'DEF', 'A', 4);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '5', 'DEF', 'B', 3);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '6', 'DEF', 'C', 2);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (5, '7', 'DEF', 'D', 1);

commit;

