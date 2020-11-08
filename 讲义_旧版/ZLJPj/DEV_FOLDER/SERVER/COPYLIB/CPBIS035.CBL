000010************************************************
000020* 経理（管販費予算管理）(CPBIS035)
000030************************************************
000040    03  ()ＫＥＹ.
000050     05  ()事業所                 PIC  X(4).
000060     05  ()管販費コード           PIC  X(3).
000070     05  FILLER           PIC  X(6).
000080    03  ()フラグ.
000090     05  ()登録削除               PIC  X(1).
000100     05  FILLER           PIC  X(4).
000110    03  ()前期分.
000120     05  ()予算枠.
000130      07  ()前期分期首             PIC S9(15)  SIGN LEADING SEPARATE.
000140      07  ()前期分修正             PIC S9(15)  SIGN LEADING SEPARATE.
000150     05  ()当期累計               PIC S9(15)  SIGN LEADING SEPARATE.
000160    03  ()当期分.
000170     05  ()予算枠.
000180      07  ()当期分期首             PIC S9(15)  SIGN LEADING SEPARATE.
000190      07  ()当期分修正             PIC S9(15)  SIGN LEADING SEPARATE.
000200     05  ()当期累計.
000210      07  ()当期分前月分           PIC S9(15)  SIGN LEADING SEPARATE.
000220      07  ()当期分当月分           PIC S9(15)  SIGN LEADING SEPARATE.
000230    03  FILLER           PIC  X(41).
000240    03  ()共通情報               PIC  X(35).
