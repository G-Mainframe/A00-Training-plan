000010************************************************
000020* 管理与信(CISUF690)
000030************************************************
000040    03   ()与信管理先コード       PIC  X(9).
000050    03   ()与信管理先名           PIC  X(80).
000060    03   ()主管部店コード         PIC  X(4).
000070    03   ()債務者格付             PIC  X(3).
000080    03   ()自動与信区分           PIC  X(1).
000090    03   ()解約理由               PIC  X(2).
000100    03   ()事故年月日             PIC  X(8).
000110    03   ()解約区分               PIC  X(1).
000120    03   ()対外債権残高           PIC S9(13)  SIGN LEADING SEPARATE.
000130    03   ()対外債権残高消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000140    03   ()前受金残高             PIC S9(13)  SIGN LEADING SEPARATE.
000150    03   ()前受金残高消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000160    03   ()貸付金別口             PIC S9(13)  SIGN LEADING SEPARATE.
000170    03   ()貸付金別口消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()非稼働資産             PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()貯蔵品                 PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()信用保険求償           PIC S9(13)  SIGN LEADING SEPARATE.
000210    03   ()求償入金情報           PIC  X(1).
000220    03   ()貸倒引当金有税         PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()貸倒引当金無税         PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()残高調整額             PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()前月末調整額           PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()登録年月日             PIC  X(8).
000270    03   ()登録時間               PIC  X(8).
000280    03   ()登録担当者             PIC  X(8).
000290    03   ()更新年月日             PIC  X(8).
000300    03   ()更新時間               PIC  X(8).
000310    03   ()更新者                 PIC  X(8).
000320    03   ()入力担当者コード       PIC  X(8).
