DROP   TABLE  D353SKT_TBL
;
CREATE TABLE D353SKT_TBL(
    �_��ԍ�            CHAR(10)         NOT NULL,
    �ă��[�X��        NUMBER(2, 0)     NOT NULL,
    �_����            CHAR(3)          NOT NULL,
    �A��                NUMBER(3, 0)     NOT NULL,
    �����R�[�h        CHAR(9)          NOT NULL,
    �x����R�[�h        CHAR(5)          NOT NULL,
    ����N��            CHAR(6)          NOT NULL,
    �x���N����          CHAR(8)          NOT NULL,
    �x�����z            NUMBER(13, 0)    NOT NULL,
    ��������            NUMBER(3, 2)     NOT NULL,
    ���{                NUMBER(13, 0)    NOT NULL,
    ����                NUMBER(13, 0)    NOT NULL,
    ����p              NUMBER(13, 0)    NOT NULL,
    ��������            NUMBER(13, 0)    NOT NULL,
    �x�����            CHAR(2)          NOT NULL,
    ���{�c��            NUMBER(13, 0)    NOT NULL,
    �W�J����            NUMBER(10, 8)    NOT NULL,
    �ύX���{�c������    NUMBER(13, 0)    NOT NULL,
    �X�V�N����          CHAR(8)          NOT NULL,
    �X�V����            CHAR(8)          NOT NULL,
    �X�V��              CHAR(8)          NOT NULL,
    �o�^�N����          CHAR(8)          NOT NULL,
    �o�^����            CHAR(8)          NOT NULL,
    �o�^�S����          CHAR(8)          NOT NULL,
    ���͒S���҃R�[�h    CHAR(8)          NOT NULL,
    CONSTRAINT PK20_3 PRIMARY KEY (�_��ԍ�, �ă��[�X��, �_����, �A��, �����R�[�h, �x����R�[�h)
) 
;


COMMENT ON TABLE D353SKT_TBL IS '�������W�J'
;
COMMENT ON COLUMN D353SKT_TBL.�_��ԍ� IS '�_��ԍ�'
;
COMMENT ON COLUMN D353SKT_TBL.�ă��[�X�� IS '�_��̍ă��[�X��'
;
COMMENT ON COLUMN D353SKT_TBL.�_���� IS '���i���Ǘ�����R�[�h'
;
COMMENT ON COLUMN D353SKT_TBL.�A�� IS '�_����̘A��'
;
COMMENT ON COLUMN D353SKT_TBL.�����R�[�h IS '�x����i�����񊲎���Ёj�̎����R�[�h'
;
COMMENT ON COLUMN D353SKT_TBL.�x����R�[�h IS '�x����i�����񊲎���Ёj�̎x����R�[�h'
;
COMMENT ON COLUMN D353SKT_TBL.����N�� IS '�_��J�n������̔N��'
;
COMMENT ON COLUMN D353SKT_TBL.�x���N���� IS '����\��N����'
;
COMMENT ON COLUMN D353SKT_TBL.�x�����z IS '�x�����z'
;
COMMENT ON COLUMN D353SKT_TBL.�������� IS '���񗘑����v�Z���錎���B���ɖ����Ȃ��[�������͏����_�ŕ\��'
;
COMMENT ON COLUMN D353SKT_TBL.���{ IS '���{'
;
COMMENT ON COLUMN D353SKT_TBL.���� IS '����'
;
COMMENT ON COLUMN D353SKT_TBL.����p IS '����p'
;
COMMENT ON COLUMN D353SKT_TBL.�������� IS '����N���̂ɑ΂��闘��(������v�Z)  ���u�����v�͑O��̖������獡��̖������̌��z����'
;
COMMENT ON COLUMN D353SKT_TBL.�x����� IS '�x�����e�̎�ށ@�@�R�[�h�d�l���iNo.832�j'
;
COMMENT ON COLUMN D353SKT_TBL.���{�c�� IS '�������{�c���i���񗘑��̌v�Z�Ώی��{�j'
;
COMMENT ON COLUMN D353SKT_TBL.�W�J���� IS '�����v�Z�ɗp���������@�x�����e�́u��{�����v��ݒ�@�i��񓙂ŕύX���ꂽ�ꍇ�ȍ~�ύX�����j'
;
COMMENT ON COLUMN D353SKT_TBL.�ύX���{�c������ IS '����̌��{�c�����ꕔ���ȂǂŕύX���ꂽ�ꍇ�ɂ��̒������z�i��񕪌��{�Ȃǁj��ێ��B���z�̓}�C�i�X'
;
COMMENT ON COLUMN D353SKT_TBL.�X�V�N���� IS '�X�V��'
;
COMMENT ON COLUMN D353SKT_TBL.�X�V���� IS '�X�V����'
;
COMMENT ON COLUMN D353SKT_TBL.�X�V�� IS '�X�VPG-ID'
;
COMMENT ON COLUMN D353SKT_TBL.�o�^�N���� IS '�f�[�^���쐬�E�X�V�����N����'
;
COMMENT ON COLUMN D353SKT_TBL.�o�^���� IS '�f�[�^���쐬�E�X�V��������'
;
COMMENT ON COLUMN D353SKT_TBL.�o�^�S���� IS '�f�[�^���쐬�E�X�V�����S����'
;
COMMENT ON COLUMN D353SKT_TBL.���͒S���҃R�[�h IS '�R�[�h�d�l��(No.126)���Q��'
;