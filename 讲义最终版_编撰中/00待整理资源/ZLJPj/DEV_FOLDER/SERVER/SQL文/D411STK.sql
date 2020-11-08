DROP TABLE D411STK_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D411STK_TBL 
--

CREATE TABLE D411STK_TBL(
    �_��ԍ�              CHAR(10)         NOT NULL,
    �ă��[�X��          NUMBER(2, 0)     NOT NULL,
    �_����              CHAR(3)          NOT NULL,
    �A��                  NUMBER(3, 0)     NOT NULL,
    ����ŗ�              NUMBER(10, 8)    NOT NULL,
    ����ŗ��敪          CHAR(2)          NOT NULL,
    ����N��              CHAR(6)          NOT NULL,
    ����z                NUMBER(13, 0)    NOT NULL,
    ��������            NUMBER(13, 0)    NOT NULL,
    �������ŕ␳�z      NUMBER(13, 0)    NOT NULL,
    �����R�[�h          CHAR(9)          NOT NULL,
    ������R�[�h          CHAR(5)          NOT NULL,
    �����N����            CHAR(8)          NOT NULL,
    �����z                NUMBER(13, 0)    NOT NULL,
    ���������            NUMBER(13, 0)    NOT NULL,
    ��������ŕ␳�z      NUMBER(13, 0)    NOT NULL,
    ����\���            CHAR(8)          NOT NULL,
    ����N����            CHAR(8)          NOT NULL,
    ����z                NUMBER(13, 0)    NOT NULL,
    ����z�����          NUMBER(13, 0)    NOT NULL,
    ���������s�σt���O    CHAR(1)          NOT NULL,
    �X�V�N����            CHAR(8)          NOT NULL,
    �X�V����              CHAR(8)          NOT NULL,
    �X�V��                CHAR(8)          NOT NULL,
    ���������s��          CHAR(8)          NOT NULL,
    �������ԍ�            NUMBER(7, 0)     NOT NULL,
    ������z              NUMBER(13, 0)    NOT NULL,
    �ϑ��ێ�敪          CHAR(1)          NOT NULL,
    �ϑ��ێ痿            NUMBER(13, 0)    NOT NULL,
    �ϑ��ێ�����        NUMBER(13, 0)    NOT NULL,
    �����_��ԍ�          CHAR(15)         NOT NULL,
    ������@              CHAR(1)          NOT NULL,
    ���͒S���҃R�[�h      CHAR(8)          NOT NULL,
    ��`���t���O        CHAR(1)          NOT NULL,
    ���Љ���z            NUMBER(13, 0)    NOT NULL,
    ���Љ���z�����      NUMBER(13, 0)    NOT NULL,
    ���А����z            NUMBER(13, 0)    NOT NULL,
    ���А��������        NUMBER(13, 0)    NOT NULL,
    ��������R�[�h        CHAR(3)          NOT NULL,
    ������������R�[�h    CHAR(3)          NOT NULL,
    �����ʔ�              CHAR(11)         NOT NULL,
    ����A��              NUMBER(2, 0)     NOT NULL,
    ������c            NUMBER(13, 0)    NOT NULL,
    ������c����        NUMBER(13, 0)    NOT NULL,
    �������c            NUMBER(13, 0)    NOT NULL,
    �������c����        NUMBER(13, 0)    NOT NULL,
    ���А������c        NUMBER(13, 0)    NOT NULL,
    ���А������c����    NUMBER(13, 0)    NOT NULL,
    �������{              NUMBER(13, 0)    NOT NULL,
    ��������              NUMBER(13, 0)    NOT NULL,
    �������{�c��          NUMBER(13, 0)    NOT NULL,
    ���{����z            NUMBER(13, 0)    NOT NULL,
    ��������z            NUMBER(13, 0)    NOT NULL,
    ���ЌŒ莑�Y��        NUMBER(13, 0)    NOT NULL,
    ���Г����ی���        NUMBER(13, 0)    NOT NULL,
    ���Јϑ��ێ痿        NUMBER(13, 0)    NOT NULL,
    ���Д��㌳�{          NUMBER(13, 0)    NOT NULL,
    ���Д��㗘��          NUMBER(13, 0)    NOT NULL,
    ���Д��㌳�{�c��      NUMBER(13, 0)    NOT NULL,
    ���v�W�J�����        NUMBER(10, 8)    NOT NULL,
    ���Д��㌳�{����      NUMBER(13, 0)    NOT NULL,
    ���Е��x�������K�p    NUMBER(13, 0)    NOT NULL,
    ���Е��x���������    NUMBER(13, 0)    NOT NULL,
    ����                  NUMBER(10, 8)    NOT NULL,
    �ԍϔN����            CHAR(8)          NOT NULL,
    ���Ԍ���              NUMBER(3, 0)     NOT NULL,
    ���ԓ���              NUMBER(3, 0)     NOT NULL,
    �����v�Z�J�n��        CHAR(8)          NOT NULL,
    �����v�Z�I����        CHAR(8)          NOT NULL,
    ���Љ���z            NUMBER(13, 0)    NOT NULL,
    ���Љ�������        NUMBER(13, 0)    NOT NULL,
    �o�^�N����            CHAR(8)          NOT NULL,
    �o�^����              CHAR(8)          NOT NULL,
    �o�^�S����            CHAR(8)          NOT NULL,
    ���������            CHAR(8)          NOT NULL,
    �O���[���敪          CHAR(1)          NOT NULL,
    ������                NUMBER(3, 0)     NOT NULL,
    �����N����            CHAR(8)          NOT NULL,
    ���А����z            NUMBER(13, 0)    NOT NULL,
    ���А����z�����      NUMBER(13, 0)    NOT NULL,
    ���Ђ��̑�����p      NUMBER(13, 0)    NOT NULL,
    CONSTRAINT PK13_8 PRIMARY KEY (�_��ԍ�, �ă��[�X��, �_����, �A��)
) 
;


COMMENT ON TABLE D411STK_TBL IS '���W�J'
;
COMMENT ON COLUMN D411STK_TBL.�_��ԍ� IS '�R�[�h�d�l���iNo.056�j'
;
COMMENT ON COLUMN D411STK_TBL.�ă��[�X�� IS '�_��̍ă��[�X��'
;
COMMENT ON COLUMN D411STK_TBL.�_���� IS '�R�[�h�d�l���iNo.040�j'
;
COMMENT ON COLUMN D411STK_TBL.�A�� IS '�����̘A��'
;
COMMENT ON COLUMN D411STK_TBL.����ŗ� IS '�������̏���ł̐ŗ�  Ex) �T���̎� 0.05���'
;
COMMENT ON COLUMN D411STK_TBL.����ŗ��敪 IS '�����z�̏���ŋ敪'
;
COMMENT ON COLUMN D411STK_TBL.����N�� IS '�_��̔���N��'
;
COMMENT ON COLUMN D411STK_TBL.����z IS '�_��̔���z    �����̎��A�S�̔���z�@'
;
COMMENT ON COLUMN D411STK_TBL.�������� IS '����z�̏����'
;
COMMENT ON COLUMN D411STK_TBL.�������ŕ␳�z IS '����z�̏���ł�␳����z'
;
COMMENT ON COLUMN D411STK_TBL.�����R�[�h IS '�R�[�h�d�l���iNo.001�j'
;
COMMENT ON COLUMN D411STK_TBL.������R�[�h IS '�R�[�h�d�l���iNo.012�j'
;
COMMENT ON COLUMN D411STK_TBL.�����N���� IS '�_��̐����N����    �i�����\����j'
;
COMMENT ON COLUMN D411STK_TBL.�����z IS '�_��̐����z      �����̎��A�S�̂̐����z'
;
COMMENT ON COLUMN D411STK_TBL.��������� IS '�����z�̏����'
;
COMMENT ON COLUMN D411STK_TBL.��������ŕ␳�z IS '�����z�̏���ł�␳����z'
;
COMMENT ON COLUMN D411STK_TBL.����\��� IS '�_��̉���\���'
;
COMMENT ON COLUMN D411STK_TBL.����N���� IS '�������ꂽ���i�������j�B������̓������������ꍇ�ɂ͓��t���V���������ݒ肳���B'
;
COMMENT ON COLUMN D411STK_TBL.����z IS '�_��̉���z'
;
COMMENT ON COLUMN D411STK_TBL.����z����� IS '�_��̉���z�̏����'
;
COMMENT ON COLUMN D411STK_TBL.���������s�σt���O IS '�R�[�h�d�l���iNo.951�j'
;
COMMENT ON COLUMN D411STK_TBL.�X�V�N���� IS '�f�[�^���쐬�A�X�V�����N����'
;
COMMENT ON COLUMN D411STK_TBL.�X�V���� IS '�f�[�^���쐬�A�X�V��������'
;
COMMENT ON COLUMN D411STK_TBL.�X�V�� IS '�f�[�^���쐬�A�X�V�����v���O�����h�c'
;
COMMENT ON COLUMN D411STK_TBL.���������s�� IS '�������𔭍s�����N����'
;
COMMENT ON COLUMN D411STK_TBL.�������ԍ� IS '�������ԍ�'
;
COMMENT ON COLUMN D411STK_TBL.������z IS '�����z�ɑ΂���ŐV�̖�����z�@'
;
COMMENT ON COLUMN D411STK_TBL.�ϑ��ێ�敪 IS '�R�[�h�d�l��(No.830)'
;
COMMENT ON COLUMN D411STK_TBL.�ϑ��ێ痿 IS '���P�ʂ̈ϑ��ێ痿'
;
COMMENT ON COLUMN D411STK_TBL.�ϑ��ێ����� IS '���P�ʂ̈ϑ��ێ�����'
;
COMMENT ON COLUMN D411STK_TBL.�����_��ԍ� IS '�_��ԍ�'
;
COMMENT ON COLUMN D411STK_TBL.������@ IS '�R�[�h�d�l��(No.017)'
;
COMMENT ON COLUMN D411STK_TBL.���͒S���҃R�[�h IS '�R�[�h�d�l��(No.126)'
;
COMMENT ON COLUMN D411STK_TBL.��`���t���O IS '������@����`�̎��̂݁@�R�[�h�d�l��(No.964)'
;
COMMENT ON COLUMN D411STK_TBL.���Љ���z IS '����(����)�̏ꍇ�A���Д���ɑ΂������z�B(���Ё����Ђ̏��ɉ������)'
;
COMMENT ON COLUMN D411STK_TBL.���Љ���z����� IS '����(����)�̏ꍇ�A���Д���ɑ΂������z�����'
;
COMMENT ON COLUMN D411STK_TBL.���А����z IS '����(����)�̏ꍇ�A�����z�i�S�́j�̓��̎��Ў����i���z�@�|�@�񊲎����j�@'
;
COMMENT ON COLUMN D411STK_TBL.���А�������� IS '����(����)�̏ꍇ�A��������Łi�S�́j�̓��̎��Ў����i���z�@�|�@�񊲎����j�i�␳���܂ށj�@'
;
COMMENT ON COLUMN D411STK_TBL.��������R�[�h IS '�������̓��e�Ŏ����d��Ɋ֘A����Ή��Ȗڂ����ʂ���B'
;
COMMENT ON COLUMN D411STK_TBL.������������R�[�h IS '�������̐�������R�[�h�B�i�ݕt���̂ݐݒ�j'
;
COMMENT ON COLUMN D411STK_TBL.�����ʔ� IS '�����������s�����ۂɃZ�b�g�����ŐV�̏����ʔ�'
;
COMMENT ON COLUMN D411STK_TBL.����A�� IS '�ă��[�X�G���g���ł̗���A�Ԃ�ݒ肷��B'
;
COMMENT ON COLUMN D411STK_TBL.������c IS '����̍��c�@���z'
;
COMMENT ON COLUMN D411STK_TBL.������c���� IS '��񓙂ɂ�铖��������c�̕ϓ��z�B'
;
COMMENT ON COLUMN D411STK_TBL.�������c IS '�����z�̌������c��'
;
COMMENT ON COLUMN D411STK_TBL.�������c���� IS '���A���X�P���ɂ�铖���������c���̕ϓ��z�i������c�͒����ς݂̋��z�j�@�ʏ��͂O'
;
COMMENT ON COLUMN D411STK_TBL.���А������c IS '���А����z�̌������c��'
;
COMMENT ON COLUMN D411STK_TBL.���А������c���� IS '���A���X�P���ɂ�铖�����А������c���̕ϓ��z�i������c�͒����ς݂̋��z�j�@�ʏ��͂O'
;
COMMENT ON COLUMN D411STK_TBL.�������{ IS '�������{�@�i�������L�ځj�@�ݕt���̂ݐݒ�'
;
COMMENT ON COLUMN D411STK_TBL.�������� IS '���������@�i�������L�ځj�@�ݕt���̂ݐݒ�'
;
COMMENT ON COLUMN D411STK_TBL.�������{�c�� IS '�������{����O�̌��{�c���i��茎�����{�c�j�@�ݕt���̂ݐݒ�'
;
COMMENT ON COLUMN D411STK_TBL.���{����z IS '���{�̉�����с@�ݕt���̂ݐݒ�'
;
COMMENT ON COLUMN D411STK_TBL.��������z IS '�����̉�����с@�ݕt���̂ݐݒ�'
;
COMMENT ON COLUMN D411STK_TBL.���ЌŒ莑�Y�� IS '����p�Œ莑�Y���@���Е��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Г����ی��� IS '����p�����ی������@���Е��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Јϑ��ێ痿 IS '����p�ϑ��ێ痿���@���Е��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Д��㌳�{ IS '���Д���z�x�[�X�ɑ΂��錳�{�����z�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Д��㗘�� IS '���Д���z�x�[�X�ɑ΂��闘������z�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Д��㌳�{�c�� IS '���Д���z�x�[�X�ɑ΂��錳�{�c���@�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���v�W�J����� IS '���񎩎Д��㗘���̌v�Z�ɗp���������'
;
COMMENT ON COLUMN D411STK_TBL.���Д��㌳�{���� IS '��񓙂Ŕ����������񎩎Д��㌳�{�c���̒����z�i���㌳�{�c���ɂ͒����ς݂̒l��ݒ�j'
;
COMMENT ON COLUMN D411STK_TBL.���Е��x�������K�p IS '�������{�ɑ΂���K�p�Г������ɂ��x���������z  ���Е��@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
COMMENT ON COLUMN D411STK_TBL.���Е��x��������� IS '�������{�ɑ΂����ʎГ������ɂ��x���������z�@���Е��@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A��ʋ���'
;
COMMENT ON COLUMN D411STK_TBL.���� IS '���������v�Z�Ɏg�p���������i��{�����j�i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.�ԍϔN���� IS '�ԍϓ��i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.���Ԍ��� IS '�����v�Z���Ԃ̌����i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.���ԓ��� IS '�����v�Z���Ԃ̓����i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.�����v�Z�J�n�� IS '�����v�Z�̊J�n���@�i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.�����v�Z�I���� IS '�����v�Z�̏I�����@�i�ݕt�p�j'
;
COMMENT ON COLUMN D411STK_TBL.���Љ���z IS '����(����)�̏ꍇ�A����z�i�S�́j�̓��̎��Ў����i���z�@�|�@�񊲎����j�@'
;
COMMENT ON COLUMN D411STK_TBL.���Љ������� IS '����(����)�̏ꍇ�A�������Łi�S�́j�̓��̎��Ў����i���z�@�|�@�񊲎����j�i�␳���܂ށj�@'
;
COMMENT ON COLUMN D411STK_TBL.�o�^�N���� IS '�����o�^���s�����N����'
;
COMMENT ON COLUMN D411STK_TBL.�o�^���� IS '�����o�^���s��������'
;
COMMENT ON COLUMN D411STK_TBL.�o�^�S���� IS '�����o�^���s�������͎҂̒S���҃R�[�h'
;
COMMENT ON COLUMN D411STK_TBL.��������� IS '�����ɑ΂��čŏ��ɓ������ꂽ�N�����B�����̓������������ꍇ�ł��ŏ��̓�����������'
;
COMMENT ON COLUMN D411STK_TBL.�O���[���敪 IS '�O�����ŏ[���i����Ŋ܂ށj����񂩔ۂ��������B�O�F�[���Ȃ��i�ʏ�j�@�P�F�O���[����'
;
COMMENT ON COLUMN D411STK_TBL.������ IS '�����z���O�łȂ���̐擪����̘A�ԁB�����z���O�̉�ɂ�"�O�h��ݒ�B'
;
COMMENT ON COLUMN D411STK_TBL.�����N���� IS '�����������s�����N�����B'
;
COMMENT ON COLUMN D411STK_TBL.���А����z IS '�����z�̂������Е��@�i���������̏ꍇ�͐ݒ肹���j'
;
COMMENT ON COLUMN D411STK_TBL.���А����z����� IS '�����z����ł̂������Е��@�i���������̏ꍇ�͐ݒ肹���j'
;
COMMENT ON COLUMN D411STK_TBL.���Ђ��̑�����p IS '���̑�����p�@���Е��@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����z�Ή��A���Е��A�K�p����'
;
