DROP TABLE D021KYS_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D021KYS_TBL 
--

CREATE TABLE D021KYS_TBL(
    �����R�[�h                    CHAR(9)         NOT NULL,
    �_���R�[�h                    CHAR(5)         NOT NULL,
    �_��於��                      VARCHAR2(80)    NOT NULL,
    ���喼��                        VARCHAR2(60)    NOT NULL,
    �q��S����                      VARCHAR2(20)    NOT NULL,
    �X�֔ԍ�                        CHAR(7)         NOT NULL,
    �s�����R�[�h                    CHAR(11)        NOT NULL,
    �Z���Q                          VARCHAR2(60)    NOT NULL,
    �Z���R                          VARCHAR2(60)    NOT NULL,
    �d�b�ԍ�                        CHAR(15)        NOT NULL,
    �X�V����                        CHAR(16)        NOT NULL,
    �X�V��                          CHAR(8)         NOT NULL,
    ����J�i����                    VARCHAR2(30)    NOT NULL,
    �ڋq�g�p�s�t���O              CHAR(1)         NOT NULL,
    �R�����g��                      VARCHAR2(60)    NOT NULL,
    ���͒S���҃R�[�h                CHAR(8)         NOT NULL,
    ��S�����ۃR�[�h                CHAR(4)         NOT NULL,
    ���S����                        CHAR(8)         NOT NULL,
    �e�`�w�ԍ�                      CHAR(15)        NOT NULL,
    �Z���P                          VARCHAR2(60)    NOT NULL,
    �Z���J�i����                    VARCHAR2(60)    NOT NULL,
    ���蓮���ی������g�p�敪        CHAR(1)         NOT NULL,
    �ă��[�X�v�Z���敪              CHAR(1)         NOT NULL,
    �ă��[�X�������q                NUMBER(4, 0)    NOT NULL,
    �ă��[�X��������                NUMBER(4, 0)    NOT NULL,
    �ă��[�X�v�Z�P�ʋ敪            CHAR(1)         NOT NULL,
    �ă��[�X�v�Z�����敪            CHAR(1)         NOT NULL,
    �����ʒm���׏����s�敪          CHAR(1)         NOT NULL,
    �ă��[�X�����X�V�t���O          CHAR(1)         NOT NULL,
    ���������敪                    CHAR(1)         NOT NULL,
    �o�^�N����                      CHAR(8)         NOT NULL,
    �o�^����                        CHAR(8)         NOT NULL,
    �o�^�S����                      CHAR(8)         NOT NULL,
    �X�V�N����                      CHAR(8)         NOT NULL,
    �X�V����                        CHAR(8)         NOT NULL,
    NetLeasing�敪                  CHAR(1)         NOT NULL,
    ���|������`���n��{�_���    CHAR(8)         NOT NULL,
    �����[�U�[�R�[�h                CHAR(8)         NOT NULL,
    �]���[�X��g��R�[�h            CHAR(3)         NOT NULL,
    �ؓ��掯�ʋ敪                  CHAR(1)         NOT NULL,
    �ؓ�����                      CHAR(2)         NOT NULL,
    �S�ۍ�����                      NUMBER(3, 0)    NOT NULL,
    CONSTRAINT PK5_4 PRIMARY KEY (�����R�[�h, �_���R�[�h)
) 
;


COMMENT ON TABLE D021KYS_TBL IS '�_���}�X�^'
;
COMMENT ON COLUMN D021KYS_TBL.�����R�[�h IS '�����̃R�[�h�@�R�[�h�d�l���i��001�j���Q��'
;
COMMENT ON COLUMN D021KYS_TBL.�_���R�[�h IS '�_���̃R�[�h�@�R�[�h�d�l���i��048�j���Q��'
;
COMMENT ON COLUMN D021KYS_TBL.�_��於�� IS '�_���̖��́i�S�p�j�@�i����於�́j'
;
COMMENT ON COLUMN D021KYS_TBL.���喼�� IS '�_���̕���̖��́i�S�p�j'
;
COMMENT ON COLUMN D021KYS_TBL.�q��S���� IS '�_���̒S���Җ��i�S�p�j'
;
COMMENT ON COLUMN D021KYS_TBL.�X�֔ԍ� IS '�_���̗X�֔ԍ�'
;
COMMENT ON COLUMN D021KYS_TBL.�s�����R�[�h IS '�_���̏Z���R�[�h�@�R�[�h�d�l���i��003�j���Q��'
;
COMMENT ON COLUMN D021KYS_TBL.�Z���Q IS '�_���̕⏕�Z���i�S�p�j'
;
COMMENT ON COLUMN D021KYS_TBL.�Z���R IS '�_���̕⏕�Z���i�S�p�j�r�������x��'
;
COMMENT ON COLUMN D021KYS_TBL.�d�b�ԍ� IS '�_���̓d�b�ԍ�'
;
COMMENT ON COLUMN D021KYS_TBL.�X�V���� IS '�f�[�^�̍쐬�A�X�V��������'
;
COMMENT ON COLUMN D021KYS_TBL.�X�V�� IS '�f�[�^�̍쐬�A�X�V�����S����'
;
COMMENT ON COLUMN D021KYS_TBL.����J�i���� IS '�_���̕���J�i���́i�J�i�j'
;
COMMENT ON COLUMN D021KYS_TBL.�ڋq�g�p�s�t���O IS '�_��悪�g�p�\���ǂ������ʂ���B�@�R�[�h�d�l���i��820�j���Q��'
;
COMMENT ON COLUMN D021KYS_TBL.�R�����g�� IS '�R�����g���i���p�j'
;
COMMENT ON COLUMN D021KYS_TBL.���͒S���҃R�[�h IS '�R�[�h�d�l��(��126)���Q��'
;
COMMENT ON COLUMN D021KYS_TBL.��S�����ۃR�[�h IS '�����̎�S�����ۂ̃R�[�h�@�R�[�h�d�l���iNo.085�j'
;
COMMENT ON COLUMN D021KYS_TBL.���S���� IS '�����ɑ΂��郊�[�X��Ђ̒S���ҁ@�R�[�h�d�l���i��126�j'
;
COMMENT ON COLUMN D021KYS_TBL.�e�`�w�ԍ� IS '�_���̂e�`�w�ԍ�'
;
COMMENT ON COLUMN D021KYS_TBL.�Z���P IS '�_���̏Z���@�s���{���s�������x��'
;
COMMENT ON COLUMN D021KYS_TBL.�Z���J�i���� IS '�Z���ǂ݂��ȁi���p�j'
;
COMMENT ON COLUMN D021KYS_TBL.���蓮���ی������g�p�敪 IS '�����ی���������藿���Ƃ���ꍇ�ݒ�i�������j'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�v�Z���敪 IS '�ă��[�X�̌v�Z���敪 1/10. 1/12 �Ȃ�'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�������q IS '�ă��[�X�v�Z���敪�����̑��̏ꍇ�A�����̕��q��ݒ�'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�������� IS '�ă��[�X�v�Z���敪�����̑��̏ꍇ�A�����̕����ݒ�'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�v�Z�P�ʋ敪 IS '�ă��[�X�̌v�Z�P�ʋ敪'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�v�Z�����敪 IS '�ă��[�X�̌v�Z�����敪'
;
COMMENT ON COLUMN D021KYS_TBL.�����ʒm���׏����s�敪 IS '�����ʒm���׏��̗l�����w�肷��敪'
;
COMMENT ON COLUMN D021KYS_TBL.�ă��[�X�����X�V�t���O IS '�ă��[�X�����X�V���s�����ۂ��̋敪'
;
COMMENT ON COLUMN D021KYS_TBL.���������敪 IS '���������̗L���敪'
;
COMMENT ON COLUMN D021KYS_TBL.�o�^�N���� IS '�����o�^���s�����N����'
;
COMMENT ON COLUMN D021KYS_TBL.�o�^���� IS '�����o�^���s��������'
;
COMMENT ON COLUMN D021KYS_TBL.�o�^�S���� IS '�����o�^���s�������͎҂̒S���҃R�[�h'
;
COMMENT ON COLUMN D021KYS_TBL.�X�V�N���� IS '�ŏI�X�V���s�����N����'
;
COMMENT ON COLUMN D021KYS_TBL.�X�V���� IS '�ŏI�X�V���s��������'
;
COMMENT ON COLUMN D021KYS_TBL.NetLeasing�敪 IS 'NET-LEASING�̌_����''1''�A�ȊO�͏����l'
;
COMMENT ON COLUMN D021KYS_TBL.���|������`���n��{�_��� IS '�t�@�N�^�����O�̊�{�_�����������N����'
;
COMMENT ON COLUMN D021KYS_TBL.�����[�U�[�R�[�h IS '�����[�U�[�̃R�[�h'
;
COMMENT ON COLUMN D021KYS_TBL.�]���[�X��g��R�[�h IS '�]���[�X��g��ł��邱�Ƃ������R�[�h'
;
COMMENT ON COLUMN D021KYS_TBL.�ؓ��掯�ʋ敪 IS '�Y���̌_��悪�ؓ��悩�ǂ��������ʂ���敪�i�P�F�ؓ���@�O�F�ؓ���ȊO�j'
;
COMMENT ON COLUMN D021KYS_TBL.�ؓ����� IS '�ؓ���̎�ʂ����ʂ���敪'
;
COMMENT ON COLUMN D021KYS_TBL.�S�ۍ����� IS '�ؓ����̒S�ۍ������i���j'
;
