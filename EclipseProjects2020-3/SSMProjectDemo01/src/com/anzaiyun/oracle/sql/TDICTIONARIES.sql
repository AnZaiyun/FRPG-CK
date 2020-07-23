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
  is '�����ֵ�';
-- Add comments to the columns 
comment on column TDICTIONARIES.l_dictionary_no
  is '��Ŀ���';
comment on column TDICTIONARIES.c_lemma_item
  is '��ϸ���';
comment on column TDICTIONARIES.vc_item_name
  is '��ϸ����';
comment on column TDICTIONARIES.vc_sm
  is '˵��';
comment on column TDICTIONARIES.l_sm
  is '˵��';*/

/*select a.l_dictionary_no, a.c_lemma_item, a.vc_item_name, a.vc_sm, a.l_sm 
  from (select t.l_dictionary_no, t.c_lemma_item, t.vc_item_name, t.vc_sm, t.l_sm ,
               decode(t.c_lemma_item , '!',-1,to_number(t.c_lemma_item)) l_item 
          from tdictionaries t) a
 order by a.l_dictionary_no,a.l_item;*/
delete from tdictionaries;

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '!', '��Ʒ', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '1', 'Role Paper', '���ڳ�ȡ��ɫ', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '2', 'ZB Paper', '���ڳ�ȡװ��', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '3', 'Gold', '���ڹ�����Ʒ����ң�', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '4', 'Diamond', '���ڹ�����Ʒ����ʯ��', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (1, '5', 'Gift Paper', '���ڳ�ȡ�츳', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '!', '��������', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '1', '��ɫ��', null, 100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '2', '��ɫ��', null, 200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '3', '��ɫ��', null, 300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '4', '��ɫ��', null, 400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '5', '��ɫ��', null, 500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '6', '��ɫ��', null, 600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '7', '��ɫ��', null, 700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '8', '��ɫ��', null, 800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '9', '��ɫ��', null, 900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '10', '��ɫ��', null, 1000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '11', '��ɫ��', null, 1200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '12', '��ɫ��', null, 1400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '13', '��ɫ��', null, 1600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '14', '��ɫ��', null, 1800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '15', '��ɫ��', null, 2000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '16', '��ɫ��', null, 2200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '17', '��ɫ��', null, 2400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '18', '��ɫ��', null, 2600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '19', '��ɫ��', null, 2800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '20', '��ɫ��', null, 3000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '21', '��ɫ��', null, 3300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '22', '��ɫ��', null, 3600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '23', '��ɫ��', null, 3900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '24', '��ɫ��', null, 4200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '25', '��ɫ��', null, 4500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '26', '��ɫ��', null, 4800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '27', '��ɫ��', null, 5100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '28', '��ɫ��', null, 6400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '29', '��ɫ��', null, 6700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '30', '��ɫ��', null, 7000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '31', '��ɫ��', null, 7400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '32', '��ɫ��', null, 7800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '33', '��ɫ��', null, 8200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '34', '��ɫ��', null, 8600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '35', '��ɫ��', null, 9000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '36', '��ɫ��', null, 9400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '37', '��ɫ��', null, 9800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '38', '��ɫ��', null, 10200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '39', '��ɫ��', null, 10600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '40', '��ɫ��', null, 11000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '41', '��ɫ��', null, 11500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '42', '��ɫ��', null, 12000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '43', '��ɫ��', null, 12500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '44', '��ɫ��', null, 13000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '45', '��ɫ��', null, 13500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '46', '��ɫ��', null, 14000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '47', '��ɫ��', null, 14500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '48', '��ɫ��', null, 15000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '49', '��ɫ��', null, 15500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '50', '��ɫ��', null, 16000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '51', '��ɫ��', null, 16600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '52', '��ɫ��', null, 17200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '53', '��ɫ��', null, 17800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '54', '��ɫ��', null, 18400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '55', '��ɫ��', null, 19000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '56', '��ɫ��', null, 19600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '57', '��ɫ��', null, 20200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '58', '��ɫ��', null, 20800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '59', '��ɫ��', null, 21400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '60', '��ɫ��', null, 22000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '61', '��ɫ��', null, 22700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '62', '��ɫ��', null, 23400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '63', '��ɫ��', null, 24100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '64', '��ɫ��', null, 24800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '65', '��ɫ��', null, 25500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '66', '��ɫ��', null, 26200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '67', '��ɫ��', null, 26900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '68', '��ɫ��', null, 27600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '69', '��ɫ��', null, 28300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '70', '��ɫ��', null, 29000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '71', '��ɫ��', null, 29800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '72', '��ɫ��', null, 30600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '73', '��ɫ��', null, 31400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '74', '��ɫ��', null, 32200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '75', '��ɫ��', null, 33000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '76', '��ɫ��', null, 33800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '77', '��ɫ��', null, 34600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '78', '��ɫ��', null, 35400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '79', '��ɫ��', null, 36200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '80', '��ɫ��', null, 37000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '81', '��ɫ��', null, 37900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '82', '��ɫ��', null, 38800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '83', '��ɫ��', null, 39700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '84', '��ɫ��', null, 40600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '85', '��ɫ��', null, 41500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '86', '��ɫ��', null, 42400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '87', '��ɫ��', null, 43300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '88', '��ɫ��', null, 44200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '89', '��ɫ��', null, 45100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '90', '��ɫ��', null, 46000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '91', '��ɫ��', null, 46900);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '92', '��ɫ��', null, 47800);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '93', '��ɫ��', null, 48700);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '94', '��ɫ��', null, 49600);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '95', '��ɫ��', null, 50500);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '96', '��ɫ��', null, 51400);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '97', '��ɫ��', null, 52300);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '98', '��ɫ��', null, 53200);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '99', '��ɫ��', null, 54100);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (2, '100', '��ɫ��', null, 55000);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '!', '��Ʒ����', '��1-��Ʒ���з���', null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '1', '����', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (3, '2', '�鿨ȯ', null, null);

insert into tdictionaries (L_DICTIONARY_NO, C_LEMMA_ITEM, VC_ITEM_NAME, VC_SM, L_SM)
values (4, '!', '��ֵ���츳����������ϡ�жȾ���������', 'ϡ�еȼ�', null);

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
values (5, '!', '�ٷֱ����츳����������ϡ�жȾ���������', 'ϡ�еȼ�', null);

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

