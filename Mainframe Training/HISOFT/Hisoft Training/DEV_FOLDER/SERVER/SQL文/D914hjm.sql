DROP TABLE D914HJM_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D914HJM_TBL 
--

CREATE TABLE D914HJM_TBL(
    �_��ԍ�              CHAR(10)         NOT NULL,
    �_����              CHAR(3)          NOT NULL,
    �����ԍ�              NUMBER(4, 0)     NOT NULL,
    �����N��              CHAR(6)          NOT NULL,
    �ă��[�X��          NUMBER(2, 0)     NOT NULL,
    ��_��敪            CHAR(1)          NOT NULL,
    �_��`��              VARCHAR2(20)     NOT NULL,
    �ی���Ў��ʃR�[�h    CHAR(2)          NOT NULL,
    �ی���Ж�            VARCHAR2(40)     NOT NULL,
    "�����Q�����O�敪"    CHAR(1)          NOT NULL,
    "�����Q�����O"        VARCHAR2(12)     NOT NULL,
    ���[�U�[��            VARCHAR2(40)     NOT NULL,
    ��������              VARCHAR2(40)     NOT NULL,
    �t�ۓ�                CHAR(8)          NOT NULL,
    �w�����z              NUMBER(13, 0)    NOT NULL,
    �ی����i              NUMBER(13, 0)    NOT NULL,
    �ی���Ћ敪          CHAR(4)          NOT NULL,
    ����                  NUMBER(9, 7)     NOT NULL,
    �ی���                NUMBER(13, 0)    NOT NULL,
    �c���L                VARCHAR2(1)      NOT NULL,
    ���菈���R�[�h        CHAR(2)          NOT NULL,
    �V�K�p���敪          CHAR(1)          NOT NULL,
    �o�^�N����            CHAR(8)          NOT NULL,
    �o�^����              CHAR(8)          NOT NULL,
    �o�^��                CHAR(8)          NOT NULL,
    �X�V�N����            CHAR(8)          NOT NULL,
    �X�V����              CHAR(8)          NOT NULL,
    �X�V��                CHAR(8)          NOT NULL,
    ���͒S���҃R�[�h      CHAR(8)          NOT NULL,
    CONSTRAINT PK546 PRIMARY KEY (�_��ԍ�, �_����, �����ԍ�, �����N��, �ă��[�X��)
) 
;


COMMENT ON TABLE D914HJM_TBL IS '�ی����'
;
COMMENT ON COLUMN D914HJM_TBL.�_��ԍ� IS '�_��f�[�^���Ǘ����邽�߂̃R�[�h'
;
COMMENT ON COLUMN D914HJM_TBL.�_���� IS '�R�[�h�d�l���i��056�j�Q��'
;
COMMENT ON COLUMN D914HJM_TBL.�����ԍ� IS '�R�[�h�d�l���i��040�j�Q��'
;
COMMENT ON COLUMN D914HJM_TBL.�����N�� IS '�����N��'
;
COMMENT ON COLUMN D914HJM_TBL.�ă��[�X�� IS '�ă��[�X��'
;
COMMENT ON COLUMN D914HJM_TBL.��_��敪 IS '�R�[�h�d�l���i��038�j�Q��'
;
COMMENT ON COLUMN D914HJM_TBL.�_��`�� IS '�_��̎��'
;
COMMENT ON COLUMN D914HJM_TBL.�ی���Ў��ʃR�[�h IS '�ی���Ў��ʂ̂��߂̃R�[�h'
;
COMMENT ON COLUMN D914HJM_TBL.�ی���Ж� IS '�ی���Ж�'
;
COMMENT ON COLUMN D914HJM_TBL."�����E�����O�敪" IS '�O�F�����@�P�F�����O'
;
COMMENT ON COLUMN D914HJM_TBL."�����E�����O" IS '�O�F�������t�ہ@�P�F�����O���t��'
;
COMMENT ON COLUMN D914HJM_TBL.���[�U�[�� IS '���[�U�[�̖���'
;
COMMENT ON COLUMN D914HJM_TBL.�������� IS '�����̖���'
;
COMMENT ON COLUMN D914HJM_TBL.�t�ۓ� IS '���Y�����ی��̊J�n�N����'
;
COMMENT ON COLUMN D914HJM_TBL.�w�����z IS '�w�����z'
;
COMMENT ON COLUMN D914HJM_TBL.�ی����i IS '�ی����i'
;
COMMENT ON COLUMN D914HJM_TBL.�ی���Ћ敪 IS '���Y�����ی���Ћy�ї����敪�����ʂ���'
;
COMMENT ON COLUMN D914HJM_TBL.���� IS '�ی��̗���'
;
COMMENT ON COLUMN D914HJM_TBL.�ی��� IS '�ی���'
;
COMMENT ON COLUMN D914HJM_TBL.�c���L IS '�����̎c��������ꍇ�@�L'
;
COMMENT ON COLUMN D914HJM_TBL.���菈���R�[�h IS '���i����v�I�Ɏ��ʂ���R�[�h�@�P�O�F���[�X�y�ьp�����[�X�@�Q�O�F�ă��[�X�E�E�E'
;
COMMENT ON COLUMN D914HJM_TBL.�V�K�p���敪 IS '�P�F�V�K�@�Q�F�p��'
;
COMMENT ON COLUMN D914HJM_TBL.�o�^�N���� IS '�f�[�^���쐬�E�X�V�����N����'
;
COMMENT ON COLUMN D914HJM_TBL.�o�^���� IS '�f�[�^���쐬�E�X�V��������'
;
COMMENT ON COLUMN D914HJM_TBL.�o�^�� IS '�f�[�^���쐬�E�X�V�����S����'
;
COMMENT ON COLUMN D914HJM_TBL.�X�V�N���� IS '�f�[�^���쐬�E�X�V�����N����'
;
COMMENT ON COLUMN D914HJM_TBL.�X�V���� IS '�f�[�^���쐬�E�X�V��������'
;
COMMENT ON COLUMN D914HJM_TBL.�X�V�� IS '�f�[�^���쐬�E�X�V�����v���O����ID'
;
COMMENT ON COLUMN D914HJM_TBL.���͒S���҃R�[�h IS '�R�[�h�d�l��(No.126)���Q��'
;
