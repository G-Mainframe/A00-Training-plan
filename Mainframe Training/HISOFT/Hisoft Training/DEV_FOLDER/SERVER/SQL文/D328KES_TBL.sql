DROP TABLE D328KES_TBL;
CREATE TABLE D328KES_TBL(
    �_��ԍ�              CHAR(10)        NOT NULL,
    �ă��[�X��          NUMBER(2, 0)    NOT NULL,
    ���َ��              CHAR(1)         NOT NULL,
    �\���A��              NUMBER(2, 0)    NOT NULL,
    ���َ�t�N����        CHAR(8)         NOT NULL,
    ���ك����N            CHAR(1)         NOT NULL,
    ���ٔN����            CHAR(8)         NOT NULL,
    ���َ҃R�[�h          CHAR(8)         NOT NULL,
    ���F�敪              CHAR(1)         NOT NULL,
    ���ُ����P            VARCHAR2(60)    NOT NULL,
    ���ُ����Q            VARCHAR2(60)    NOT NULL,
    ���ُ����R            VARCHAR2(60)    NOT NULL,
    ���ُ����S            VARCHAR2(60)    NOT NULL,
    ���ُ����T            VARCHAR2(60)    NOT NULL,
    �R�����ӌ����P        VARCHAR2(60)    NOT NULL,
    �R�����ӌ����Q        VARCHAR2(60)    NOT NULL,
    �R�����ӌ����R        VARCHAR2(60)    NOT NULL,
    �R�����ӌ����S        VARCHAR2(60)    NOT NULL,
    �R�����ӌ����T        VARCHAR2(60)    NOT NULL,
    ���َ����            CHAR(8)         NOT NULL,
    �o�^�N����            CHAR(8)         NOT NULL,
    �o�^����              CHAR(8)         NOT NULL,
    �o�^�S����            CHAR(8)         NOT NULL,
    �X�V�N����            CHAR(8)         NOT NULL,
    �X�V����              CHAR(8)         NOT NULL,
    �X�V��                CHAR(8)         NOT NULL,
    ���͒S���҃R�[�h      CHAR(8)         NOT NULL,
    ���X�����F��          CHAR(8)         NOT NULL,
    �c�ƕ��ӌ����P        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����Q        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����R        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����S        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����T        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����U        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����V        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����W        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����X        VARCHAR2(60)    NOT NULL,
    �c�ƕ��ӌ����P�O      VARCHAR2(60)    NOT NULL,
    �\��������σt���O    CHAR(1)         NOT NULL,
    �����R�~�t�c�m�n      CHAR(6)         NOT NULL,
    �ʎ��敪              CHAR(1)         NOT NULL,
    �����`�F�b�N�敪      CHAR(1)         NOT NULL,
    CONSTRAINT PK11_7 PRIMARY KEY (�_��ԍ�, �ă��[�X��, ���َ��, �\���A��)
) 
;


COMMENT ON TABLE D328KES_TBL IS '����'
;
COMMENT ON COLUMN D328KES_TBL.�_��ԍ� IS '�R�[�h�d�l��(No.56)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.�ă��[�X�� IS '�ă��[�X��'
;
COMMENT ON COLUMN D328KES_TBL.���َ�� IS '�R�[�h�d�l��(No.842)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.�\���A�� IS '�\�����̘A��'
;
COMMENT ON COLUMN D328KES_TBL.���َ�t�N���� IS '�{�Ќ��ق̎�t���@���X�����َ��͖{�Ђ̕񍐎�t��'
;
COMMENT ON COLUMN D328KES_TBL.���ك����N IS '�R�[�h�d�l��(No.734)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.���ٔN���� IS '���ق��s�����N����'
;
COMMENT ON COLUMN D328KES_TBL.���َ҃R�[�h IS '���ق���͂����S���҃R�[�h�@�R�[�h�d�l��(No.126)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.���F�敪 IS '�R�[�h�d�l��(No.51)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.���ُ����P IS '���g�p�@���ُ���(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.���ُ����Q IS '���g�p�@���ُ���(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.���ُ����R IS '���g�p�@���ُ���(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.���ُ����S IS '���g�p�@���ُ���(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.���ُ����T IS '���g�p�@���ُ���(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�R�����ӌ����P IS '�R�����ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�R�����ӌ����Q IS '�R�����ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�R�����ӌ����R IS '�R�����ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�R�����ӌ����S IS '�R�����ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�R�����ӌ����T IS '�R�����ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.���َ���� IS '���ق����������'
;
COMMENT ON COLUMN D328KES_TBL.�o�^�N���� IS '�f�[�^���쐬�E�X�V�����N����'
;
COMMENT ON COLUMN D328KES_TBL.�o�^���� IS '�f�[�^���쐬�E�X�V��������'
;
COMMENT ON COLUMN D328KES_TBL.�o�^�S���� IS '�f�[�^���쐬�E�X�V�����S����'
;
COMMENT ON COLUMN D328KES_TBL.�X�V�N���� IS '�f�[�^���쐬�E�X�V�����N����'
;
COMMENT ON COLUMN D328KES_TBL.�X�V���� IS '�f�[�^���쐬�E�X�V��������'
;
COMMENT ON COLUMN D328KES_TBL.�X�V�� IS '�f�[�^���쐬�E�X�V�����v���O����ID'
;
COMMENT ON COLUMN D328KES_TBL.���͒S���҃R�[�h IS '�R�[�h�d�l��(No.126)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.���X�����F�� IS '���X�������F���s�����N����'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����P IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����Q IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����R IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����S IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����T IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����U IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����V IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����W IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����X IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�c�ƕ��ӌ����P�O IS '�c�ƕ��ӌ�(�S�p)'
;
COMMENT ON COLUMN D328KES_TBL.�\��������σt���O IS '�g�c���̈���σt���O�@�R�[�h�d�l��(No.128)���Q��'
;
COMMENT ON COLUMN D328KES_TBL.�����R�~�t�c�m�n IS '���ك����N�������R�~�̏ꍇ�A�̔�'
;
COMMENT ON COLUMN D328KES_TBL.�ʎ��敪 IS '�ӌ����ɂ�����ʎ����݃t���O�i�O�F���@�P�F�L�j'
;
COMMENT ON COLUMN D328KES_TBL.�����`�F�b�N�敪 IS '�R�[�h�d�l���iNo.B37�j���Q��'
;