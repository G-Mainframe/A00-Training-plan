DROP   TABLE  IKOTBL010   ;
CREATE TABLE  IKOTBL010  (
       �_��ԍ�                           CHAR(10)          NOT NULL,
       �����ԍ�                           NUMBER(4,0)       NOT NULL,
       ����                             CHAR(7)           NOT NULL,
       �������                         CHAR(8)           NOT NULL,
       �V�����ԍ�                         NUMBER(4,0)       NOT NULL,
       �h�m�敪                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL010  PRIMARY KEY (
       �_��ԍ�,
       �����ԍ�,
       ����));

COMMENT ON TABLE IKOTBL010 IS '�V�����ԍ��̔ԃe�[�u��';
