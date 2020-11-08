000010************************************************
000020* 協調転物件代金売却(CISUF420)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
000080    03   ()取引先コード           PIC  X(9).
000090    03   ()請求先コード           PIC  X(5).
000100    03   ()回収サイト             PIC S9(2)  SIGN LEADING SEPARATE.
000110    03   ()回収日                 PIC S9(2)  SIGN LEADING SEPARATE.
000120    03   ()回収予定日             PIC  X(8).
000130    03   ()売却代金               PIC S9(13)  SIGN LEADING SEPARATE.
000140    03   ()売却代金消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000150    03   ()売却代手数料           PIC S9(13)  SIGN LEADING SEPARATE.
000160    03   ()売却代総額             PIC S9(13)  SIGN LEADING SEPARATE.
000170    03   ()売却代総額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()回収額                 PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()回収額消費税           PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()回収年月日             PIC  X(8).
000210    03   ()未回収額               PIC S9(13)  SIGN LEADING SEPARATE.
000220    03   ()請求書発行済フラグ     PIC  X(1).
000230    03   ()取消請求書発行済フラグ PIC  X(1).
000240    03   ()請求書番号             PIC S9(7)  SIGN LEADING SEPARATE.
000250    03   ()更新年月日             PIC  X(8).
000260    03   ()更新時間               PIC  X(8).
000270    03   ()更新者                 PIC  X(8).
000280    03   ()入力担当者コード       PIC  X(8).
000290    03   ()回収方法               PIC  X(1).
000300    03   ()ソフト売却代金         PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()ソフト売却代金消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()登録年月日             PIC  X(8).
000330    03   ()登録時間               PIC  X(8).
000340    03   ()登録担当者             PIC  X(8).
000350    03   ()請求内訳コード         PIC  X(3).
000360    03   ()消込通番               PIC  X(11).
000370    03   ()初回入金日             PIC  X(8).
000380    03   ()消込年月日             PIC  X(8).
