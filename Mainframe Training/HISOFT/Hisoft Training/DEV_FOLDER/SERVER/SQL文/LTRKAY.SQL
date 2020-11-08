CREATE TABLE  LTRKAY  (
       事業所                             CHAR(4)           NOT NULL,
       管販費コード                       CHAR(3)           NOT NULL,
       ダミー００１                       CHAR(6)           NOT NULL,
       登録削除                           CHAR(1)           NOT NULL,
       ダミー００２                       CHAR(4)           NOT NULL,
       前期分期首                         NUMBER(15,0)      NOT NULL,
       前期分修正                         NUMBER(15,0)      NOT NULL,
       当期累計                           NUMBER(15,0)      NOT NULL,
       当期分期首                         NUMBER(15,0)      NOT NULL,
       当期分修正                         NUMBER(15,0)      NOT NULL,
       当期分前月分                       NUMBER(15,0)      NOT NULL,
       当期分当月分                       NUMBER(15,0)      NOT NULL,
       ダミー００３                       CHAR(41)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRKAY  PRIMARY KEY (
       事業所,
       管販費コード,
       ダミー００１));
