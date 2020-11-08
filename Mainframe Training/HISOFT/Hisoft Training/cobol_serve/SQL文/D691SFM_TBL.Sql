prompt PL/SQL Developer import file
prompt Created on 2004”N8Œ27“ú by ren_dali
set feedback off
set define off
prompt Dropping D691SFM_TBL...
drop table D691SFM_TBL cascade constraints;
prompt Creating D691SFM_TBL...
create table D691SFM_TBL
(
  ‚a‚n‚s‚kŒ_–ñ”Ô†     CHAR(10) not null,
  ‚a‚n‚s‚k•¨Œ”Ô†     NUMBER(4) not null,
  ÄƒŠ[ƒX‰ñ”         NUMBER(2) not null,
  ƒŠ[ƒXI—¹“ú         CHAR(8) not null,
  ”—ÊQ‰ğ–ñ‘O         NUMBER(4) not null,
  ”—ÊQ‰ğ–ñŒã         NUMBER(4) not null,
  ŒÂ•ÊƒŠ[ƒX—¿Q‰ğ–ñ‘O NUMBER(13) not null,
  w“ü‹àŠzQ‰ğ–ñ‘O     NUMBER(13) not null,
  ‘Yˆ•ªƒR[ƒh       NUMBER(1) not null
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );
comment on table D691SFM_TBL
  is 'O—mU•ªƒe[ƒuƒ‹i–—¹ƒf[ƒ^j';
comment on column D691SFM_TBL.‚a‚n‚s‚kŒ_–ñ”Ô†
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì‚a‚n‚s‚kŒ_–ñ”Ô†';
comment on column D691SFM_TBL.‚a‚n‚s‚k•¨Œ”Ô†
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì‚a‚n‚s‚k•¨Œ”Ô†';
comment on column D691SFM_TBL.ÄƒŠ[ƒX‰ñ”
  is '•¨Œ‚ÌÄƒŠ[ƒX‰ñ”';
comment on column D691SFM_TBL.ƒŠ[ƒXI—¹“ú
  is 'Œ_–ñ“à—e‚ÌŒ_–ñI—¹“ú';
comment on column D691SFM_TBL.”—ÊQ‰ğ–ñ‘O
  is '•¨Œ‚Ì”—Ê';
comment on column D691SFM_TBL.”—ÊQ‰ğ–ñŒã
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì”—Ê';
comment on column D691SFM_TBL.ŒÂ•ÊƒŠ[ƒX—¿Q‰ğ–ñ‘O
  is '•¨Œ‚Ì•¨ŒƒŠ[ƒX—¿';
comment on column D691SFM_TBL.w“ü‹àŠzQ‰ğ–ñ‘O
  is '•¨Œ‚Ì©Ğw“üŠz';
comment on column D691SFM_TBL.‘Yˆ•ªƒR[ƒh
  is '‘Yˆ•ªƒR[ƒh';
alter table D691SFM_TBL
  add constraint PK594 primary key (‚a‚n‚s‚kŒ_–ñ”Ô†,‚a‚n‚s‚k•¨Œ”Ô†,ÄƒŠ[ƒX‰ñ”)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );

prompt Disabling triggers for D691SFM_TBL...
alter table D691SFM_TBL disable all triggers;
prompt Loading D691SFM_TBL...
prompt Table is empty
prompt Enabling triggers for D691SFM_TBL...
alter table D691SFM_TBL enable all triggers;
set feedback on
set define on
prompt Done.
