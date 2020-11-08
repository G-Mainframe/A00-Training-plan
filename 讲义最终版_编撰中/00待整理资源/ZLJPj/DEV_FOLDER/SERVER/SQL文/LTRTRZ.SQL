CREATE TABLE  LTRTRZ  (
       取引先コード                       CHAR(8)           NOT NULL,
       事業所コード                       NUMBER(4,0)       NOT NULL,
       債権残高情報リース                 NUMBER(13,0)      NOT NULL,
       債権残高情報割賦                   NUMBER(13,0)      NOT NULL,
       債権残高情報金消                   NUMBER(13,0)      NOT NULL,
       債権残高情報ファクタリング         NUMBER(13,0)      NOT NULL,
       債権残高情報支払保証               NUMBER(13,0)      NOT NULL,
       債権残高情報斡旋                   NUMBER(13,0)      NOT NULL,
       債権残高情報手数料                 NUMBER(13,0)      NOT NULL,
       債権残高情報再リース               NUMBER(13,0)      NOT NULL,
       債権残高情報合計額                 NUMBER(13,0)      NOT NULL,
       ダミー００１                       CHAR(33)          NOT NULL,
CONSTRAINT  PK_LTRTRZ  PRIMARY KEY (
       取引先コード,
       事業所コード));
