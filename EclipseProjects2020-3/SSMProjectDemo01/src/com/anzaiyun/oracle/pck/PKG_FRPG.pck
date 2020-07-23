create or replace package PKG_FRPG is
  /*===========================================================
  PKG_FRPG��������洢���̽ṹͼ
  -------------------------------------------------------------
    |
    |---pkgsp_rpg_ck(��ɫ�鿨)
    |---pkgsp_rpg_ckzb(װ���鿨)
  ============================================================*/

  procedure pkgsp_rpg_ck(a_l_userid   in  number,
                         a_l_number   in  number,
                         return_code  out number,
                         return_str   out varchar2);
  
  procedure pkgsp_rpg_ckzb(a_l_userid    in  number,
                           a_l_number   in  number,
                           return_code  out number,
                           return_str   out varchar2);
                           
  procedure pkgsp_rpg_ckgift(a_l_userid    in  number,
                             a_l_number   in  number,
                             return_code  out number,
                             return_str   out varchar2);
  
  procedure pkgsp_rpg_atk(a_l_userid   in  number,
                          a_l_roleid   in  number,
                          a_l_number   in  number,
                          a_vc_rare    in  varchar,
                          return_code  out number,
                          return_str   out varchar2);
  
  procedure pkgsp_rpg_updaterole(a_l_userid   in  number,
                                 a_l_roleid   in  number,
                                 a_l_exp      in  number,
                                 return_code  out number,
                                 return_str   out varchar2);
                                 
  procedure pkgsp_rpg_updatezb(a_l_userid   in  number,
                               a_l_roleid   in  number,
                               a_l_exp      in number,
                               return_code  out number,
                               return_str   out varchar2);
                               
  procedure pkgsp_rpg_updategift(a_l_userid   in  number,
                                 a_l_roleid   in  number,
                                 a_l_exp      in number,
                                 return_code  out number,
                                 return_str   out varchar2);
                                 
  procedure pkgsp_rpg_wpdrop(a_l_userid   in  number,
                             a_l_chance   in number,
                             return_code  out number,
                             return_str   out varchar2);
                             
  procedure pkgsp_rpg_byitem(a_l_userid   in  number,
                             a_l_itemid   in number,
                             a_l_number   in number,
                             return_code  out number,
                             return_str   out varchar2);
  
end PKG_FRPG;
/
create or replace package body PKG_FRPG is
/**********************************************************
  ��  �ƣ�PKG_FRPG����
  ��  �ܣ�
  ��  ����
  �����ߣ�
  ��  �ڣ�2020-1-7
***********************************************************/
  --v_vc_zzyc   varchar2(1);  --�����쳣

  procedure pkgsp_rpg_ck(a_l_userid    in  number,
                         a_l_number   in  number,
                         return_code  out number,
                         return_str   out varchar2
                         )
  is
  /**********************************************************
    ��  �ܣ��鿨��ɫ
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_count          number;
    v_l_rare           number;
    v_l_hp             number;
    v_l_mp             number;
    v_l_atk            number;
    v_l_def            number;
    v_vc_rare          varchar2(4); 
  begin
    v_vc_ycbz := 'N';
    
    --��Ҫ���жϱ����Ƿ�����û���Ϣ����Ȼ����
    select nvl(sum(t.l_count),0) into v_l_count 
    from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '1';
            
    if nvl(v_l_count,0) < a_l_number then  --
       return_code := 0;
       return_str := '�鿨ȯ�������㣬��ǰ����'||nvl(v_l_count,0);
       v_vc_ycbz := 'H';
       return;
    else
      update tuserbag t
      set t.l_count = t.l_count - a_l_number
      where t.l_uid = a_l_userid and t.VC_ITEMID = '1';
    end if;
    
    v_l_count := 0;
    v_vc_rare := 'N';
    
    while v_l_count <  a_l_number loop
      v_l_rare := ABS(MOD(DBMS_RANDOM.RANDOM,1000));
      
      if v_l_rare >=990 then
        v_vc_rare := 'SSS';
        v_l_hp := 100+ABS(MOD(DBMS_RANDOM.RANDOM,60));
        v_l_mp := 50+ABS(MOD(DBMS_RANDOM.RANDOM,30));
        v_l_atk := 10+ABS(MOD(DBMS_RANDOM.RANDOM,6));
        v_l_def := 10+ABS(MOD(DBMS_RANDOM.RANDOM,6));
      elsif v_l_rare >=970 then
        v_vc_rare := 'SS';
        v_l_hp := 90+ABS(MOD(DBMS_RANDOM.RANDOM,50));
        v_l_mp := 45+ABS(MOD(DBMS_RANDOM.RANDOM,25));
        v_l_atk := 9+ABS(MOD(DBMS_RANDOM.RANDOM,5));
        v_l_def := 9+ABS(MOD(DBMS_RANDOM.RANDOM,5));
      elsif v_l_rare >=940 then
        v_vc_rare := 'S';
        v_l_hp := 80+ABS(MOD(DBMS_RANDOM.RANDOM,40));
        v_l_mp := 40+ABS(MOD(DBMS_RANDOM.RANDOM,20));
        v_l_atk := 8+ABS(MOD(DBMS_RANDOM.RANDOM,4));
        v_l_def := 8+ABS(MOD(DBMS_RANDOM.RANDOM,4));
      elsif v_l_rare >= 850 then
        v_vc_rare := 'A';
        v_l_hp := 70+ABS(MOD(DBMS_RANDOM.RANDOM,30));
        v_l_mp := 35+ABS(MOD(DBMS_RANDOM.RANDOM,15));
        v_l_atk := 7+ABS(MOD(DBMS_RANDOM.RANDOM,3));
        v_l_def := 7+ABS(MOD(DBMS_RANDOM.RANDOM,3));
      elsif v_l_rare >= 700 then
        v_vc_rare := 'B';
        v_l_hp := 60+ABS(MOD(DBMS_RANDOM.RANDOM,20));
        v_l_mp := 30+ABS(MOD(DBMS_RANDOM.RANDOM,10));
        v_l_atk := 6+ABS(MOD(DBMS_RANDOM.RANDOM,2));
        v_l_def := 6+ABS(MOD(DBMS_RANDOM.RANDOM,2));
      elsif v_l_rare >= 500 then
        v_vc_rare := 'C';
        v_l_hp := 50+ABS(MOD(DBMS_RANDOM.RANDOM,10));
        v_l_mp := 25+ABS(MOD(DBMS_RANDOM.RANDOM,5));
        v_l_atk := 5+1;
        v_l_def := 5+1;
      elsif v_l_rare >= 200 then
        v_vc_rare := 'D';
        v_l_hp := 40;
        v_l_mp := 20;
        v_l_atk := 4;
        v_l_def := 4;
      end if;
      
      --when ck end, by hp add gold(vc_itemid=3)
      update tuserbag t
      set t.l_count = t.l_count + nvl(v_l_hp,0)
      where t.l_uid = a_l_userid and
            t.vc_itemid = '3';
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ck]�����ɫ����Ϣ[1]ʱ����,����ϵϵͳ����Ա';
      insert into trole(l_rid,l_uid,vc_name,l_level,l_expnow,l_exptop,vc_rare,l_hp,
                  l_mp,l_atk,l_def,l_hp_g,l_mp_g,l_atk_g,l_def_g)
      select seq_trole_id.nextval,a_l_userid,'��ɫ',1,0,100,v_vc_rare,v_l_hp,
             v_l_mp,v_l_atk,v_l_def,t.l_hp,t.l_hp/2,t.l_atk,t.l_def
        from TRoleSx t 
       where t.l_id = 1
             and t.vc_rare = v_vc_rare;
      v_vc_ycbz := 'Y'; 
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ck]�����ɫ����Ϣ[2]ʱ����,����ϵϵͳ����Ա';
      insert into trolefull(l_rid,l_uid,vc_name,l_level,vc_rare,l_hp,l_mp,l_atk,l_def,l_zbid1,l_zbid2)
      select t.l_rid, a_l_userid,t.vc_name,t.l_level,t.vc_rare,t.l_hp,t.l_mp,t.l_atk,t.l_def,'',''
        from trole t 
       where t.l_uid = a_l_userid and
             not exists (select 1 from trolefull a 
                          where t.l_uid = a_l_userid and t.l_rid = a.l_rid);
      v_vc_ycbz := 'Y'; 
      
      v_l_count := v_l_count+1;
    end loop;

    commit;
    return_code :=0;
    return_str := '��ɫ�鿨���̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_ckzb]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_ck;

  procedure pkgsp_rpg_ckzb(a_l_userid    in  number,
                           a_l_number   in  number,
                           return_code  out number,
                           return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ��鿨װ��
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_count          number;
    v_l_rare           number;
    v_l_hp             number;
    v_l_mp             number;
    v_l_atk            number;
    v_l_def            number;
    v_vc_rare          varchar2(4); 
  begin
    v_vc_ycbz := 'N';
    
    --��Ҫ���ж��ǲ��Ǳ����Ƿ�����û���Ϣ����Ȼ����
    select nvl(sum(t.l_count),0) into v_l_count 
    from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '2';
            
    if nvl(v_l_count,0) < a_l_number then  --
       return_code := 0;
       return_str := '�鿨ȯ�������㣬��ǰ����'||nvl(v_l_count,0);
       v_vc_ycbz := 'H';
       return;
    else
      update tuserbag t
      set t.l_count = t.l_count - a_l_number
      where t.l_uid = a_l_userid and t.vc_itemid = '2';
    end if;
    
    v_l_count := 0;
    v_vc_rare := 'N';
    
    while v_l_count <  a_l_number loop
      v_l_rare := ABS(MOD(DBMS_RANDOM.RANDOM,1000));
      
      if v_l_rare >=990 then
        v_vc_rare := 'SSS';
        v_l_hp := 80;
        v_l_mp := 20;
        v_l_atk := 20;
        v_l_def := 10;
      elsif v_l_rare >=970 then
        v_vc_rare := 'SS';
        v_l_hp := 40;
        v_l_mp := 10;
        v_l_atk := 16;
        v_l_def := 8;
      elsif v_l_rare >=940 then
        v_vc_rare := 'S';
        v_l_hp := 20;
        v_l_mp := 5;
        v_l_atk := 10;
        v_l_def := 5;
      elsif v_l_rare >= 850 then
        v_vc_rare := 'A';
        v_l_hp := 16;
        v_l_mp := 4;
        v_l_atk := 8;
        v_l_def := 4;
      elsif v_l_rare >= 700 then
        v_vc_rare := 'B';
        v_l_hp := 8;
        v_l_mp := 2;
        v_l_atk := 4;
        v_l_def := 2;
      elsif v_l_rare >= 500 then
        v_vc_rare := 'C';
        v_l_hp := 4;
        v_l_mp := 1;
        v_l_atk := 2;
        v_l_def := 1;
      elsif v_l_rare >= 200 then
        v_vc_rare := 'D';
        v_l_hp := 2;
        v_l_mp := 0;
        v_l_atk := 1;
        v_l_def := 1;
      end if;
      
      --when ck end, by hp add gold(vc_itemid=3)
      update tuserbag t
      set t.l_count = t.l_count + nvl(v_l_hp,0)
      where t.l_uid = a_l_userid and
            t.vc_itemid = '3';
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ckzb]����װ������Ϣ[1]ʱ����,����ϵϵͳ����Ա';
      insert into TZb(l_zbid, l_uid,vc_name,l_level,l_expnow,l_exptop,vc_rare,l_hp,l_mp,l_atk,l_def,
                      l_hp_g,l_mp_g,l_atk_g,l_def_g)
      select seq_tzb_id.nextval, a_l_userid,'װ��', 1,0,100,v_vc_rare,v_l_hp,v_l_mp,v_l_atk,v_l_def,
             t.l_hp,t.l_hp/2,t.l_atk,t.l_def
        from TRoleSx t 
       where t.l_id = 2
             and t.vc_rare = v_vc_rare;
      v_vc_ycbz := 'Y'; 
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ck]����װ������Ϣ[2]ʱ����,����ϵϵͳ����Ա';
      insert into tzbfull(l_zbid, l_uid,vc_name,l_level,vc_rare,l_hp,l_mp,l_atk,l_def,l_sfsy)
      select t.l_zbid, t.l_uid,t.vc_name,t.l_level,t.vc_rare,t.l_hp,t.l_mp,t.l_atk,t.l_def,0
        from TZb t 
       where t.l_uid = a_l_userid and
             not exists (select 1 from tzbfull a 
                          where t.l_uid = a_l_userid and t.l_zbid = a.l_zbid);
      v_vc_ycbz := 'Y'; 
      
      v_l_count := v_l_count+1;
    end loop;

    commit;
    return_code :=0;
    return_str := 'װ���鿨���̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_ckzb]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_ckzb;
  
  procedure pkgsp_rpg_ckgift(a_l_userid   in  number,
                             a_l_number   in  number,
                             return_code  out number,
                             return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ��鿨�츳
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_vc_rare          varchar2(4);             --ϡ�еȼ�
    v_l_lb             number;                  --�츳�����ֵ/�ٷֱȣ�
    v_l_lbmx           number;                  --�츳�����ϸ��hp/mp/atk/def��
    v_l_chance         number;                  --���ʱ���
    v_l_number         number;                  --��ǰ�ѳ�ȡ��Ƭ����
    v_l_sx             number(10,4);
    v_l_giftid         number;
    v_l_count          number;                  --��������
  begin
    v_vc_ycbz := 'N';
    v_l_number := 0;
    
    --��Ҫ���жϱ����Ƿ�����û���Ϣ����Ȼ����
    select nvl(sum(t.l_count),0) into v_l_count 
    from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '5';
            
    if nvl(v_l_count,0) < a_l_number then  --
       return_code := 0;
       return_str := '�鿨ȯ�������㣬��ǰ����'||nvl(v_l_count,0);
       v_vc_ycbz := 'H';
       return;
    else
      update tuserbag t
      set t.l_count = t.l_count - a_l_number
      where t.l_uid = a_l_userid and t.VC_ITEMID = '5';
    end if;
    
    while v_l_number<a_l_number loop
      --1����������츳��ֵ����Ϊ4����ֵ�� 5���ٷֱ��� ����8:2
      v_l_chance := ABS(MOD(DBMS_RANDOM.RANDOM,10));
      if v_l_chance > 2 then
        v_l_lb := 4; --�����ֵ�4 ��ֵ��
      else
        v_l_lb := 5; --�����ֵ�5 �ٷֱ���
      end if;
      
      --2���������ӵ����� hp-3 mp-3 atk-2 def-2 
      v_l_chance := ABS(MOD(DBMS_RANDOM.RANDOM,100));
      if v_l_chance >=80 then
        v_l_lbmx := 1;
      elsif v_l_chance >=60 then
        v_l_lbmx := 2;
      elsif v_l_chance >=30 then
        v_l_lbmx := 3;
      else
        v_l_lbmx := 4;
      end if;
       
      --3������ϡ�����
      v_l_chance := ABS(MOD(DBMS_RANDOM.RANDOM,1000));
      if v_l_chance >=990 then
        v_vc_rare := 'SSS';
      elsif v_l_chance >=970 then
        v_vc_rare := 'SS';
      elsif v_l_chance >=940 then
        v_vc_rare := 'S';
      elsif v_l_chance >= 850 then
        v_vc_rare := 'A';
      elsif v_l_chance >= 700 then
        v_vc_rare := 'B';
      elsif v_l_chance >= 500 then
        v_vc_rare := 'C';
      else
        v_vc_rare := 'D';
      end if;
      
      --when ck end, by hp add gold(vc_itemid=3)
      update tuserbag t
      set t.l_count = t.l_count + nvl(v_l_chance,0)
      where t.l_uid = a_l_userid and
            t.vc_itemid = '3';
      
      --4�������츳����츳�����ϸ��ϡ�жȻ�ȡ����ֵ
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ckgift]��ȡ�츳����ʱ����,����ϵϵͳ����Ա';
      select t.l_sm +decode(v_l_lb,4,decode(v_l_lbmx,1, ABS(MOD(DBMS_RANDOM.RANDOM,2000)),
                                                       2, ABS(MOD(DBMS_RANDOM.RANDOM,1000)),
                                                       3, ABS(MOD(DBMS_RANDOM.RANDOM,50)),
                                                       4, ABS(MOD(DBMS_RANDOM.RANDOM,50))),
                                   5,decode(v_l_lbmx,1, ABS(MOD(DBMS_RANDOM.RANDOM,400)),
                                                     2, ABS(MOD(DBMS_RANDOM.RANDOM,200)),
                                                     3, ABS(MOD(DBMS_RANDOM.RANDOM,200)),
                                                     4, ABS(MOD(DBMS_RANDOM.RANDOM,200)))/100)
             into v_l_sx
        from tdictionaries t 
       where t.l_dictionary_no = v_l_lb and 
             t.vc_item_name = decode(v_l_lbmx,1,'HP',2,'MP',3,'ATK',4,'DEF') and
             t.vc_sm = v_vc_rare;
      v_vc_ycbz := 'N';
      
      --5����������
      select seq_tgift_id.nextval into v_l_giftid from dual;
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ckgift]�����츳��Ϣʱ����,����ϵϵͳ����Ա';
      insert into TGift(l_giftid, l_uid, vc_name, l_level, 
                  l_expnow, l_exptop, vc_rare, l_lb, l_lbmx1)
      select v_l_giftid, a_l_userid, '�츳', 1,
             0, 100, v_vc_rare, v_l_lb, v_l_lbmx
        from dual; 
      v_vc_ycbz := 'N';
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_ckgift]�����츳������Ϣʱʱ����,����ϵϵͳ����Ա';  
      insert into TGiftSX(l_giftid, L_LB, L_LBMX1, L_SX)
      select v_l_giftid, v_l_lb, v_l_lbmx, v_l_sx
        from dual; 
      v_vc_ycbz := 'N';
        
      v_l_number := v_l_number+1;
    end loop;

    commit;
    return_code :=0;
    return_str := '�츳�鿨���̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_ckgift]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_ckgift;

  procedure pkgsp_rpg_atk(a_l_userid   in  number,
                          a_l_roleid   in  number,
                          a_l_number   in  number,
                          a_vc_rare    in  varchar,
                          return_code  out number,
                          return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ�����
    ��  �Σ�a_l_userid       �û�id
            a_l_roleid       ��ɫid
            a_l_number       ս������
            a_vc_rare        ϡ�еȼ�,
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_count          number;
    v_l_hp             number;
    v_l_hp1            number;
    v_l_atk            number;
    v_l_atkce1           number;
    v_l_atkce2           number;
    v_l_def            number;
    v_l_exp            number;
    v_l_expall         number;        --�ܾ���
    v_l_number         number;
    v_vc_rare          varchar2(4); 
    v_vc_rare1         varchar2(4); 
  begin
    v_vc_ycbz := 'N';
    v_l_expall := 0;
    v_vc_rare := a_vc_rare;
    v_l_number := 1;
    
    while v_l_number<=a_l_number loop
      
      if v_vc_rare = 'SS' then
        v_l_hp := 10000+100*(ABS(MOD(DBMS_RANDOM.RANDOM,200))+10);
        v_l_atk := 100+100*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_def := 100+100*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_exp := 20;    
      elsif v_vc_rare = 'S' then
        v_l_hp := 8000+80*(ABS(MOD(DBMS_RANDOM.RANDOM,200))+10);
        v_l_atk := 80+80*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_def := 80+80*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_exp := 12;
      elsif v_vc_rare = 'A' then
        v_l_hp := 3200+32*(ABS(MOD(DBMS_RANDOM.RANDOM,200))+10);
        v_l_atk := 32+32*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_def := 32+32*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+5);
        v_l_exp := 10;
      elsif v_vc_rare = 'B' then
        v_l_hp := 2400+24*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+10);
        v_l_atk := 24+24*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_def := 24+24*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_exp := 8;
      elsif v_vc_rare = 'C' then
        v_l_hp := 1600+16*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+10);
        v_l_atk := 16+16*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_def := 16+16*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_exp := 6;
      elsif v_vc_rare = 'D' then
        v_l_hp := 1200+12*(ABS(MOD(DBMS_RANDOM.RANDOM,100))+10);
        v_l_atk := 12+12*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_def := 12+12*(ABS(MOD(DBMS_RANDOM.RANDOM,50))+5);
        v_l_exp := 4;
      elsif v_vc_rare = 'E' then
        v_l_hp := 800+8*(ABS(MOD(DBMS_RANDOM.RANDOM,10))+100);
        v_l_atk := 8+8*(ABS(MOD(DBMS_RANDOM.RANDOM,5))+5);
        v_l_def := 8+8*(ABS(MOD(DBMS_RANDOM.RANDOM,5))+5);
        v_l_exp := 2;
      else
        v_l_hp := 800+8*(ABS(MOD(DBMS_RANDOM.RANDOM,10))+10);
        v_l_atk := 2;
        v_l_def := 2;
        v_l_exp := 1;
      end if;
      
      --���µ��Ľ��
      update tuserbag t
      set t.l_count = t.l_count - floor(v_l_exp/2)-2
      where t.l_uid = a_l_userid and
            t.vc_itemid = '3';
      
      v_vc_ycbz := 'Y';
      return_code := -102;
      return_str :='[pkg_frpg.pkgsp_rpg_atk]��ȡATK���ʱ����,����ϵϵͳ����Ա';
      select t.l_atk-v_l_def,v_l_atk-t.l_def,t.vc_rare
        into v_l_atkce1,v_l_atkce2,v_vc_rare1
        from trolefull t 
       where t.l_uid = a_l_userid and t.l_rid = a_l_roleid;
      v_vc_ycbz := 'N'; 
      
      --���С��0��˵��δ�Ʒ���ս��ʧ�� 
      if v_l_atkce1<=0 then
        v_vc_ycbz := 'Y';
        return_code := -102;
        return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[5]ʱ����,����ϵϵͳ����Ա';
        insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE, l_result)
        select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,0,-99,'���˻�ɱ����,��δ�Ե�������˺�',sysdate,
               2
        from dual;
        v_vc_ycbz := 'N';
        
        v_l_number:=v_l_number+1;
        continue;
      end if;
      
      if v_l_atkce2>0 then
        select t.l_hp into v_l_hp1 from trolefull t where t.l_uid = a_l_userid and t.l_rid = a_l_roleid;
        --ս���ִ�
        v_l_count:=1;
        while v_l_hp1>0 and v_l_hp>0 loop
          --�ҷ����ܹ���
          v_l_hp1:=v_l_hp1-v_l_atkce2;
          --�Է����ܹ���
          v_l_hp:=v_l_hp-v_l_atkce1;
          
          v_vc_ycbz := 'Y';
          return_code := -102;
          return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[1]ʱ����,����ϵϵͳ����Ա';
          insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE,
                      l_result)
          select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,1,v_l_count,'��Ե�������� '||to_char(v_l_atkce1)||' ���˺���',sysdate,
                 0
          from dual;
          v_vc_ycbz := 'N';
          
          v_vc_ycbz := 'Y';
          return_code := -102;
          return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[2]ʱ����,����ϵϵͳ����Ա';
          insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE,
                      l_result)
          select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,-1,v_l_count,'���˶�������� '||to_char(v_l_atkce2)||' ���˺���',sysdate,
                 0
          from dual;
          v_vc_ycbz := 'N';
          
          --�Է�Hp�Ƿ��0
          if v_l_hp<=0 then
            v_vc_ycbz := 'Y';
            return_code := -102;
            return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[3]ʱ����,����ϵϵͳ����Ա';
            insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE,
                        l_result)
            select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,0,v_l_count,'��սʤ�˵���',sysdate,
                   1
            from dual;
            v_vc_ycbz := 'N';
            
            v_vc_ycbz := 'Y';
            return_code := -101;
            return_str :='[pkg_frpg.pkgsp_rpg_wpdrop]��Ʒ����ʱ����,����ϵϵͳ����Ա';
            pkg_frpg.pkgsp_rpg_wpdrop(a_l_userid,v_l_exp,return_code,return_str);
            v_vc_ycbz := 'N';
            
            v_l_expall:=v_l_expall+v_l_exp;
          end if;
          
          if v_l_hp1<0 and v_l_hp >0 then
            v_vc_ycbz := 'Y';
            return_code := -102;
            return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[4]ʱ����,����ϵϵͳ����Ա';
            insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE,
                        l_result)
            select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,0,v_l_count,'���˻�ɱ����',sysdate,
                   2
            from dual;
            v_vc_ycbz := 'N';
          end if;
          
          v_l_count := v_l_count+1;
          
        end loop;
      else
        v_vc_ycbz := 'Y';
        return_code := -102;
        return_str :='[pkg_frpg.pkgsp_rpg_atk]����ս����־[6]ʱ����,����ϵϵͳ����Ա';
        insert into TFightLog(L_ID,L_USERID,L_ROLEID,l_drid,L_FX,L_ZDLC,VC_LOG,D_DATE,
                    l_Result)
        select SEQ_tFightLog_ID.Nextval,a_l_userid,a_l_roleid,v_l_number,0,-99,'���ɱ�˵���,����δ��������˺�',sysdate,
               1
        from dual;
        v_vc_ycbz := 'N';
        
        v_vc_ycbz := 'Y';
        return_code := -101;
        return_str :='[pkg_frpg.pkgsp_rpg_wpdrop]��Ʒ����ʱ����,����ϵϵͳ����Ա';
        pkg_frpg.pkgsp_rpg_wpdrop(a_l_userid,v_l_exp,return_code,return_str);
        v_vc_ycbz := 'N';
        
        v_l_expall:=v_l_expall+v_l_exp;
      end if;
      
      v_l_number:=v_l_number+1;
    
    end loop;
    
    --���½�ɫ���츳��Ϣ
    v_vc_ycbz := 'Y';
    return_code := -102;
    return_str :='[pkg_frpg.pkgsp_rpg_atk]���½�ɫ���츳��Ϣʱ����,����ϵϵͳ����Ա'; 
    pkg_frpg.pkgsp_rpg_updategift(a_l_userid, a_l_roleid, v_l_expall, return_code, return_str);
    v_vc_ycbz := 'N'; 
    
    --���½�ɫװ���ĵȼ�����Ϣ
    --װ���ĸ���Ҫ�ڽ�ɫ�ĸ���֮ǰ����ɫ������=��ɫ����+װ��
    v_vc_ycbz := 'Y';
    return_code := -102;
    return_str :='[pkg_frpg.pkgsp_rpg_atk]����װ���ĵȼ�����Ϣʱ����,����ϵϵͳ����Ա'; 
    pkg_frpg.pkgsp_rpg_updatezb(a_l_userid,a_l_roleid,v_l_expall,return_code,return_str);
    v_vc_ycbz := 'N'; 
    
    --���½�ɫ�ĵȼ�����Ϣ
    v_vc_ycbz := 'Y';
    return_code := -102;
    return_str :='[pkg_frpg.pkgsp_rpg_atk]���½�ɫ�ĵȼ�����Ϣʱ����,����ϵϵͳ����Ա'; 
    pkg_frpg.pkgsp_rpg_updaterole(a_l_userid, a_l_roleid, v_l_expall, return_code, return_str);
    v_vc_ycbz := 'N'; 
  
    commit;
    return_code :=0;
    return_str := '���׹������̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_atk]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_atk;

  procedure pkgsp_rpg_updaterole(a_l_userid    in  number,
                                 a_l_roleid    in  number,
                                 a_l_exp       in  number,
                                 return_code   out number,
                                 return_str    out varchar2)
  is
  /**********************************************************
    ��  �ܣ����½�ɫ�ȼ�����Ϣ
    ��  �Σ�a_l_userid       �û�id
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
    �����ߣ�
    ��  ����
    ��  �ڣ�2020-1-14
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_expce          number;                  --������
    v_l_level          number;                  --�����ȼ�
  begin
    v_vc_ycbz := 'N';
    v_l_level := 0;
    
    update trole t
       set t.l_expnow = t.l_expnow + a_l_exp
     where t.l_uid = a_l_userid and 
           t.l_rid = a_l_roleid;
    
    select t.l_expnow - t.l_exptop into v_l_expce
      from trole t
     where t.l_uid = a_l_userid and 
           t.l_rid = a_l_roleid;      
          
    while v_l_expce >= 0 loop
      --���¾���
      update trole t
         set t.l_level = t.l_level + 1,
             t.l_expnow = v_l_expce,
             t.l_exptop = (select a.l_sm 
                             from tdictionaries a 
                            where a.l_dictionary_no = 2 and 
                                  a.c_lemma_item = to_char(t.l_level+1))
       where t.l_uid = a_l_userid and 
             t.l_rid = a_l_roleid; 
      
      --�ȼ�+1
      v_l_level := v_l_level + 1;
      
      --���²��
      select t.l_expnow - t.l_exptop into v_l_expce
        from trole t
       where t.l_uid = a_l_userid and 
             t.l_rid = a_l_roleid;    
      
    end loop;
    
    --���½�ɫ����
    if v_l_level >0 then
      update trole t
         set t.l_hp = t.l_hp + t.l_hp_g * v_l_level,
             t.l_mp = t.l_mp + t.l_mp_g * v_l_level,
             t.l_atk = t.l_atk + t.l_atk_g * v_l_level,
             t.l_def = t.l_def + t.l_def_g * v_l_level
       where t.l_uid = a_l_userid and 
             t.l_rid = a_l_roleid; 
      
      update trolefull t
         set (t.l_hp, t.l_mp, t.l_atk, t.l_def, t.l_level) = 
             (select a.l_hp, a.l_mp, a.l_atk, a.l_def, a.l_level 
                from trole a 
               where a.l_uid = a_l_userid and a.l_rid = a_l_roleid)
       where t.l_uid = a_l_userid and 
             t.l_rid = a_l_roleid;   
             
      for cur_zbid in (select t.l_zbid from trolezb t where t.l_uid = a_l_userid and t.l_rid = a_l_roleid)loop
        --��������ȫ��������װ����
        update trolefull t
           set (t.l_hp, t.l_mp, t.l_atk, t.l_def) = 
               (select t.l_hp+a.l_hp, t.l_mp+a.l_mp, t.l_atk+a.l_atk, t.l_def+a.l_def 
                  from tzbfull a
                 where a.l_uid = a_l_userid and a.l_zbid = cur_zbid.l_zbid)
         where t.l_uid = a_l_userid and 
               t.l_rid = a_l_roleid;   
      end loop;
      
      --��������ȫ���������츳���츳�İٷֱȼӳɰ���װ����λ���������£�
      for cur_giftinfo in (select t1.l_giftid,t1.l_lb,t1.l_lbmx1,sum(t1.l_sx) l_sx
                             from tgiftsx t1,trolegift t2
                            where t1.l_giftid = t2.l_giftid and
                                  t2.l_uid = a_l_userid and
                                  t2.l_rid = a_l_roleid
                            group by t1.l_giftid,t1.l_lb,t1.l_lbmx1
                            order by t1.l_lb,t1.l_lbmx1 desc  )loop
      
        if cur_giftinfo.l_lb = 4 then
          --���½�ɫ���츳������ֵ--��ֵ������
          update trolefull t
          set (t.l_hp, t.l_mp, t.l_atk, t.l_def) = 
              (select a.l_hp + decode(cur_giftinfo.l_lbmx1,1,cur_giftinfo.l_sx,0),
                      a.l_mp + decode(cur_giftinfo.l_lbmx1,2,cur_giftinfo.l_sx,0),
                      a.l_atk + decode(cur_giftinfo.l_lbmx1,3,cur_giftinfo.l_sx,0),
                      a.l_def + decode(cur_giftinfo.l_lbmx1,4,cur_giftinfo.l_sx,0)
                 from trolefull a
                where a.l_uid = a_l_userid and
                      a.l_rid = a_l_roleid )
          where t.l_uid = a_l_userid and
                t.l_rid = a_l_roleid;
        else
          --���½�ɫ���츳������ֵ--�ٷֱ�������
          update trolefull t
          set (t.l_hp, t.l_mp, t.l_atk, t.l_def) = 
              (select a.l_hp * (decode(cur_giftinfo.l_lbmx1,1,cur_giftinfo.l_sx,0)/100+1),
                      a.l_mp * (decode(cur_giftinfo.l_lbmx1,2,cur_giftinfo.l_sx,0)/100+1),
                      a.l_atk * (decode(cur_giftinfo.l_lbmx1,3,cur_giftinfo.l_sx,0)/100+1),
                      a.l_def * (decode(cur_giftinfo.l_lbmx1,4,cur_giftinfo.l_sx,0)/100+1)
                 from trolefull a
                where a.l_uid = a_l_userid and
                      a.l_rid = a_l_roleid )
          where t.l_uid = a_l_userid and
                t.l_rid = a_l_roleid;
        end if;
      
      end loop;

               
    end if;

    commit;
    return_code :=0;
    return_str := '��ɫ���Ը��³ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_updaterole]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_updaterole;
  
  procedure pkgsp_rpg_updatezb(a_l_userid   in  number,
                               a_l_roleid   in  number,
                               a_l_exp   in number,
                               return_code  out number,
                               return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ�װ������
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
    �����ߣ�
    ��  ����
    ��  �ڣ�2020-7-17
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_expce          number;                  --������
    v_l_level          number;                  --�����ȼ�
  begin
    v_vc_ycbz := 'N';
    
    --һ����ɫ���ж��װ���������Ҫѭ������
    for cur_zbid in (select t.l_zbid from trolezb t where t.l_uid = a_l_userid and t.l_rid = a_l_roleid) loop
      v_l_level := 0;
      
      --�Ȱ��ܾ���ӵ�װ����ǰ������
      update tzb t
         set t.l_expnow = t.l_expnow + a_l_exp
       where t.l_uid = a_l_userid and 
             t.l_zbid = cur_zbid.l_zbid;
      
      select t.l_expnow - t.l_exptop into v_l_expce
        from tzb t
       where t.l_uid = a_l_userid and 
             t.l_zbid = cur_zbid.l_zbid;      
            
      while v_l_expce >= 0 loop
        --���¾���
        update tzb t
           set t.l_level = t.l_level + 1,
               t.l_expnow = v_l_expce,
               t.l_exptop = (select a.l_sm 
                               from tdictionaries a 
                              where a.l_dictionary_no = 2 and --װ����ʱʹ�úͽ�ɫ����ͬ�ľ�����ϵ
                                    a.c_lemma_item = to_char(t.l_level+1))
         where t.l_uid = a_l_userid and 
               t.l_zbid = cur_zbid.l_zbid; 
        
        --�ȼ�+1
        v_l_level := v_l_level + 1;
        
        --���²��
        select t.l_expnow - t.l_exptop into v_l_expce
          from tzb t
         where t.l_uid = a_l_userid and 
               t.l_zbid = cur_zbid.l_zbid;  
        
      end loop;
      
      --����װ��������������
      if v_l_level >0 then
        update tzb t
           set t.l_hp = t.l_hp + t.l_hp_g * v_l_level,
               t.l_mp = t.l_mp + t.l_mp_g * v_l_level,
               t.l_atk = t.l_atk + t.l_atk_g * v_l_level,
               t.l_def = t.l_def + t.l_def_g * v_l_level
         where t.l_uid = a_l_userid and 
               t.l_zbid = cur_zbid.l_zbid;  
        
        update tzbfull t
           set (t.l_hp, t.l_mp, t.l_atk, t.l_def, t.l_level) = 
               (select a.l_hp, a.l_mp, a.l_atk, a.l_def, a.l_level 
                  from tzb a 
                 where a.l_uid = a_l_userid and t.l_zbid = cur_zbid.l_zbid)
         where t.l_uid = a_l_userid and 
               t.l_zbid = cur_zbid.l_zbid;   
                 
      end if;
    end loop;
    
    commit;
    return_code :=0;
    return_str := '��ɫװ���������';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_updatezb]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_updatezb;
  
  procedure pkgsp_rpg_updategift(a_l_userid   in  number,
                                 a_l_roleid   in number,
                                 a_l_exp      in number,
                                 return_code  out number,
                                 return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ���Ʒ����
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
    �����ߣ�
    ��  ����
    ��  �ڣ�2020-1-14
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_expce          number;                  --������
    v_l_sxcount        number;                  --��ǰ�츳������
    v_l_chance         number;                  --���ʱ���
    v_l_lb             number;                  --�츳�����ֵ/�ٷֱȣ�
    v_l_lbmx           number;                  --�츳�����ϸ��hp/mp/atk/def��
    v_l_count          number;
    v_l_sx             number(10,4);
  begin
    --һ����ɫ��ǰ�ݶ�һ���츳��Ϊ�������䷽��Ŀǰ����ѭ������
    for cur_giftid in (select t.l_giftid from trolegift t where t.l_uid = a_l_userid and t.l_rid = a_l_roleid) loop
      
      --�Ȱ��ܾ���ӵ�װ����ǰ������
      update tgift t
         set t.l_expnow = t.l_expnow + a_l_exp
       where t.l_uid = a_l_userid and 
             t.l_giftid = cur_giftid.l_giftid;
       
      --��ȡ������
      select t.l_expnow - t.l_exptop into v_l_expce
        from tgift t
       where t.l_uid = a_l_userid and 
             t.l_giftid = cur_giftid.l_giftid; 
      
      while v_l_expce >= 0 loop
        --���¾���
        update tgift t
           set t.l_level = t.l_level + 1,
               t.l_expnow = v_l_expce,
               t.l_exptop = (select a.l_sm 
                               from tdictionaries a 
                              where a.l_dictionary_no = 2 and --�츳����ʱʹ�úͽ�ɫ����ͬ�ľ�����ϵ
                                    a.c_lemma_item = to_char(t.l_level+1))
         where t.l_uid = a_l_userid and 
               t.l_giftid = cur_giftid.l_giftid;
        
        --���²��
        select t.l_expnow - t.l_exptop into v_l_expce
          from tgift t
         where t.l_uid = a_l_userid and 
               t.l_giftid = cur_giftid.l_giftid;  
        
      end loop;
      
      --��ȡ��Ҫ���ӵ�������
      select count(1) into v_l_sxcount from tgiftsx t where t.l_giftid = cur_giftid.l_giftid ;
      
      --��ȡ��Ҫ���ӵ��츳����ÿ20������һ��,����20��Ҳ��һ����
      select ceil(t.l_level/20) - v_l_sxcount into v_l_sxcount
        from tgift t
       where t.l_uid = a_l_userid and t.l_giftid = cur_giftid.l_giftid ;
      
      v_l_count := 0;
      while v_l_count < v_l_sxcount loop
        --1����������츳��ֵ����Ϊ4����ֵ�� 5���ٷֱ��� ����8:2
        v_l_chance := ABS(MOD(DBMS_RANDOM.RANDOM,10));
        if v_l_chance > 2 then
          v_l_lb := 4; --�����ֵ�4 ��ֵ��
        else
          v_l_lb := 5; --�����ֵ�5 �ٷֱ���
        end if;
        
        --2���������ӵ����� hp-3 mp-3 atk-2 def-2 
        v_l_chance := ABS(MOD(DBMS_RANDOM.RANDOM,100));
        if v_l_chance >=80 then
          v_l_lbmx := 1;
        elsif v_l_chance >=60 then
          v_l_lbmx := 2;
        elsif v_l_chance >=30 then
          v_l_lbmx := 3;
        else
          v_l_lbmx := 4;
        end if;
        
        --4�������츳����츳�����ϸ��ϡ�жȻ�ȡ����ֵ
        v_vc_ycbz := 'Y';
        return_code := -102;
        return_str :='[pkg_frpg.pkgsp_rpg_updategift]��ȡ�츳����ʱ����,����ϵϵͳ����Ա';
        select t.l_sm +decode(v_l_lb,4,decode(v_l_lbmx,1, ABS(MOD(DBMS_RANDOM.RANDOM,2000)),
                                                         2, ABS(MOD(DBMS_RANDOM.RANDOM,1000)),
                                                         3, ABS(MOD(DBMS_RANDOM.RANDOM,50)),
                                                         4, ABS(MOD(DBMS_RANDOM.RANDOM,50))),
                                     5,decode(v_l_lbmx,1, ABS(MOD(DBMS_RANDOM.RANDOM,400)),
                                                       2, ABS(MOD(DBMS_RANDOM.RANDOM,200)),
                                                       3, ABS(MOD(DBMS_RANDOM.RANDOM,200)),
                                                       4, ABS(MOD(DBMS_RANDOM.RANDOM,200)))/100)
               into v_l_sx
          from tdictionaries t 
         where t.l_dictionary_no = v_l_lb and 
               t.vc_item_name = decode(v_l_lbmx,1,'HP',2,'MP',3,'ATK',4,'DEF') and
               t.vc_sm = (select a.vc_rare from tgift a where a.l_uid = a_l_userid and a.l_giftid = cur_giftid.l_giftid);
        v_vc_ycbz := 'N';
        
        --5����������
        v_vc_ycbz := 'Y';
        return_code := -102;
        return_str :='[pkg_frpg.pkgsp_rpg_updategift]�����츳������Ϣʱʱ����,����ϵϵͳ����Ա';  
        insert into TGiftSX(l_giftid, L_LB, L_LBMX1, L_SX)
        select cur_giftid.l_giftid, v_l_lb, v_l_lbmx, v_l_sx
          from dual; 
        v_vc_ycbz := 'N';
      
        v_l_count := v_l_count+1;
      end loop;
    end loop;
      
    commit;
    return_code :=0;
    return_str := '��ɫ�츳�������';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_updategift]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_updategift;

  procedure pkgsp_rpg_wpdrop(a_l_userid   in  number,
                             a_l_chance   in number,
                             return_code  out number,
                             return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ���Ʒ����
    ��  �Σ�a_l_userid       �û�id
            a_l_chance       ����ս����ɫ��ϡ�жȲ�ͬ��������Ʒ����ĸ���
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
    �����ߣ�
    ��  ����
    ��  �ڣ�2020-1-14
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_number         number;
    v_l_itnumber       number;
    v_l_chance_role    number;                  --rolechance paper
    v_l_chance_zb      number;                  --zbchance paper
    v_l_chance_gift    number;                  --gift paper
    v_l_gold           number;                  --gold
  begin
    v_l_chance_role := 0;
    v_l_chance_zb := 0;
    v_l_gold := 0;

    v_l_number := ABS(MOD(DBMS_RANDOM.RANDOM,10000));
    if v_l_number <= 10+a_l_chance  then v_l_chance_gift :=1;   end if;
    if v_l_number <= 50+a_l_chance then v_l_chance_role := 1;  end if; 
    if v_l_number <= 100+a_l_chance then v_l_chance_zb := 1;    end if; 
    --�����ң�ʵ����ս����ʼʱ�Ѿ������һ�Σ��˴β����൱��ս��ʤ������ҵ�����ࣨ�м��ʣ�
    if v_l_number <= 1000+a_l_chance*10 then v_l_gold := 1;     end if; 
    
    --rolechance paper
    if v_l_chance_gift = 1 then 
      select count(1) into v_l_itnumber 
      from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '5';
            
      if v_l_itnumber = 0 then
        insert into tuserbag(l_uid,vc_itemid,vc_wplb,L_COUNT,VC_NAME,VC_SM)
        select a_l_userid,to_number(t.c_lemma_item),'2',1,t.vc_item_name,t.vc_sm
        from tdictionaries t where t.l_dictionary_no = 1 and t.c_lemma_item = '5';
      else
        update tuserbag t
        set t.l_count = t.l_count + 1
        where t.l_uid = a_l_userid and t.vc_itemid = '5';
      end if;
    end if; 
        
    --rolechance paper
    if v_l_chance_role = 1 then 
      select count(1) into v_l_itnumber 
      from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '1';
            
      if v_l_itnumber = 0 then
        insert into tuserbag(l_uid,vc_itemid,vc_wplb,L_COUNT,VC_NAME,VC_SM)
        select a_l_userid,to_number(t.c_lemma_item),'2',1,t.vc_item_name,t.vc_sm
        from tdictionaries t where t.l_dictionary_no = 1 and t.c_lemma_item = '1';
      else
        update tuserbag t
        set t.l_count = t.l_count + 1
        where t.l_uid = a_l_userid and t.vc_itemid = '1';
      end if;
    end if; 
    
    --zbchance paper
    if v_l_chance_zb = 1 then 
      select count(1) into v_l_itnumber 
      from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '2';
            
      if v_l_itnumber = 0 then
        insert into tuserbag(l_uid,vc_itemid,vc_wplb,L_COUNT,VC_NAME,VC_SM)
        select a_l_userid,to_number(t.c_lemma_item),'2',1,t.vc_item_name,t.vc_sm
        from tdictionaries t where t.l_dictionary_no = 1 and t.c_lemma_item = '2';
      else
        update tuserbag t
        set t.l_count = t.l_count + 1
        where t.l_uid = a_l_userid and t.vc_itemid = '2';
      end if;
    end if; 
    
    --gold
    if v_l_gold = 1 then 
      select count(1) into v_l_itnumber 
      from tuserbag t where t.l_uid = a_l_userid and t.vc_itemid = '3';
            
      if v_l_itnumber = 0 then
        insert into tuserbag(l_uid,vc_itemid,vc_wplb,L_COUNT,VC_NAME,VC_SM)
        select a_l_userid,to_number(t.c_lemma_item),'1',mod(v_l_number,60),t.vc_item_name,t.vc_sm
        from tdictionaries t where t.l_dictionary_no = 1 and t.c_lemma_item = '3';
      else
        update tuserbag t
        set t.l_count = t.l_count + mod(v_l_number,60)
        where t.l_uid = a_l_userid and t.vc_itemid = '3';
      end if;
    end if; 
      

    commit;
    return_code :=0;
    return_str := '��Ʒ������̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_wpdrop]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_wpdrop;
  
  procedure pkgsp_rpg_byitem(a_l_userid   in  number,
                             a_l_itemid   in number,
                             a_l_number   in number,
                             return_code  out number,
                             return_str   out varchar2)
  is
  /**********************************************************
    ��  �ܣ���Ʒ����
    ��  �Σ�a_l_userid       �û�id
            a_l_number       �鿨����
    ��  �Σ�return_code      ���ش���
            return_Str       ������Ϣ
    �����ߣ�
    ��  ����
    ��  �ڣ�2020-1-14
  ***********************************************************/
    v_vc_ycbz          varchar2(1);             --�쳣��־
    v_l_price          number;
  begin
    /*select t.l_price*a_l_number into v_l_price from Tstore t where t.l_itemid = a_l_itemid;
    
    select t.l_count - v_l_price into v_l_price 
    from tuserbag t where t.l_userid = a_l_userid and t.l_itemid = 1 ;
    
    if v_l_price<0 then
      return_code := 0;
      return_str := 'dont have enough gold��need account'||nvl(v_l_price,0);
      v_vc_ycbz := 'H';
      return;
    end if; 
    
    update tuserbag t
    set t.l_count = t.l_count + a_l_number
    where t.l_userid = a_l_userid and t.l_itemid = a_l_itemid;
    
    update tuserbag t
    set t.l_count = v_l_price
    where t.l_userid = a_l_userid and t.l_itemid = 1;*/
      

    commit;
    return_code :=0;
    return_str := '��Ʒ������̴���ɹ�';
  exception when others then
    --ϵͳ�Զ��쳣��׽
    if v_vc_ycbz = 'N' then
      return_code:=-1;
      return_str := '[pkg_frpg.pkgsp_rpg_byitem]���쳣����:'||chr(13)||sqlerrm;
    end if;
    --��Ϊ����ϵͳ�쳣
    if v_vc_ycbz = 'Y' then
      return_str := return_str||chr(13)||sqlerrm;
    end if;
    --��Ϊ���������쳣
    if v_vc_ycbz = 'H' then
      return_str := return_str;
    end if;
  end pkgsp_rpg_byitem;

end PKG_FRPG;
/
