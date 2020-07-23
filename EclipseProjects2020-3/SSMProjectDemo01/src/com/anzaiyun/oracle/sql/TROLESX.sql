--属性表
create table TROLESX
(
  l_id    NUMBER(10) not null,
  vc_role VARCHAR2(10),
  vc_rare VARCHAR2(4),
  l_hp    NUMBER(6),
  l_atk   NUMBER(6),
  l_def   NUMBER(6)
);



/*delete from trolesx;

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'D', 10, 1, 0);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'C', 20, 2, 1);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'B', 40, 4, 2);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'A', 60, 6, 3);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'S', 100, 10, 5);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'SS', 120, 12, 6);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (1, '角色卡', 'SSS', 140, 14, 7);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'D', 2, 1, 0);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'C', 4, 2, 1);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'B', 8, 4, 2);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'A', 16, 8, 4);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'S', 24, 12, 6);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'SS', 32, 16, 8);

insert into trolesx (L_ID, VC_ROLE, VC_RARE, L_HP, L_ATK, L_DEF)
values (2, '装备卡', 'SSS', 40, 20, 10);

commit;*/
