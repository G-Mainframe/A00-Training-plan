      *---���b�Z�[�W�e�[�u��------------
         01  MSG-AREA.
      *    NO.01
           03  FILLER                  PIC  N(20) VALUE
                  NC"�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@".
      *    NO.02
           03  FILLER                  PIC  N(20) VALUE
                  NC"�Ј��R�[�h�ɁA�ԈႢ������܂��@�@�@�@�@".
      *    NO.03
           03  FILLER                  PIC  N(20) VALUE
                  NC"�p�X���[�h�ɁA�ԈႢ������܂��@�@�@�@�@".
      *    NO.04
           03  FILLER                  PIC  N(20) VALUE
                  NC"�N���̒l�Ɍ�肪����܂��@�@�@�@�@�@�@�@".
      *    NO.05
           03  FILLER                  PIC  N(20) VALUE
                  NC"���i�R�[�h�ɁA�ԈႢ������܂��B�@�@�@�@".
      *    NO.06
           03  FILLER                  PIC  N(20) VALUE
                  NC"�O�ł͂���܂���@�@�@�@�@�@�@�@�@�@�@�@".
      *    NO.07
           03  FILLER                  PIC  N(20) VALUE
                  NC"���ł͂���܂���@�@�@�@�@�@�@�@�@�@�@�@".
      *    NO.08
           03  FILLER                  PIC  N(20) VALUE
                  NC"�Y���̓��o�ɖ��ׂ�����܂���@�@�@�@�@�@".
      *    NO.09
           03  FILLER                  PIC  N(20) VALUE
                  NC"�Ј��t�@�C���ɃA�N�Z�X�ł��܂���@�@�@�@".
      *    NO.10
           03  FILLER                  PIC  N(20) VALUE
                  NC"���i�t�@�C���ɃA�N�Z�X�ł��܂���@�@�@�@".
      *    NO.11
           03  FILLER                  PIC  N(20) VALUE
                  NC"���o�Ƀt�@�C���ɃA�N�Z�X�ł��܂���@�@�@".
      *--      
         01 MSG-TBL   REDEFINES  MSG-AREA.
           03  MSG-DSP OCCURS 11 TIMES.
             05  FILLER                PIC N(20).
