prompt PL/SQL Developer import file
prompt Created on 2004”N8Œ27“ú by ren_dali
set feedback off
set define off
prompt Dropping D692SFS_TBL...
drop table D692SFS_TBL cascade constraints;
prompt Creating D692SFS_TBL...
create table D692SFS_TBL
(
  ‚a‚n‚s‚kŒ_–ñ”Ô†   CHAR(10) not null,
  ‚a‚n‚s‚k•¨Œ”Ô†   NUMBER(4) not null,
  ÄƒŠ[ƒX‰ñ”       NUMBER(2) not null,
  ¿‹‹àŠz‡Œv       NUMBER(13) not null,
  •¨Œ–¼             CHAR(30) not null,
  ƒŠƒtƒ@ƒŒƒ“ƒX‚m‚n‚P CHAR(10) not null,
  ƒŠ[ƒXI—¹“ú       CHAR(8) not null,
  ”—Ê               NUMBER(4) not null
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
comment on table D692SFS_TBL
  is 'O—mU•ªƒe[ƒuƒ‹iÄƒŠ[ƒXƒf[ƒ^j';
comment on column D692SFS_TBL.‚a‚n‚s‚kŒ_–ñ”Ô†
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì‚a‚n‚s‚kŒ_–ñ”Ô†';
comment on column D692SFS_TBL.‚a‚n‚s‚k•¨Œ”Ô†
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì‚a‚n‚s‚k•¨Œ”Ô†';
comment on column D692SFS_TBL.ÄƒŠ[ƒX‰ñ”
  is '•¨Œ‚ÌÄƒŠ[ƒX‰ñ”';
comment on column D692SFS_TBL.¿‹‹àŠz‡Œv
  is 'O—mˆÙ“®ƒf[ƒ^‚Ì¿‹‹àŠz‡Œv';
comment on column D692SFS_TBL.•¨Œ–¼
  is '•¨Œ‚Ì•¨Œ–¼ƒJƒi';
comment on column D692SFS_TBL.ƒŠƒtƒ@ƒŒƒ“ƒX‚m‚n‚P
  is '•¨Œ‚ÌƒŠƒtƒ@ƒŒƒ“ƒX‚m‚n‚P';
comment on column D692SFS_TBL.ƒŠ[ƒXI—¹“ú
  is 'Œ_–ñ“à—e‚ÌŒ_–ñI—¹“ú';
comment on column D692SFS_TBL.”—Ê
  is 'Œ_–ñ“à—e‚Ì”—Ê';
alter table D692SFS_TBL
  add constraint PK595 primary key (‚a‚n‚s‚kŒ_–ñ”Ô†,‚a‚n‚s‚k•¨Œ”Ô†,ÄƒŠ[ƒX‰ñ”)
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

prompt Disabling triggers for D692SFS_TBL...
alter table D692SFS_TBL disable all triggers;
prompt Loading D692SFS_TBL...
prompt Table is empty
prompt Enabling triggers for D692SFS_TBL...
alter table D692SFS_TBL enable all triggers;
set feedback on
set define on
prompt Done.
