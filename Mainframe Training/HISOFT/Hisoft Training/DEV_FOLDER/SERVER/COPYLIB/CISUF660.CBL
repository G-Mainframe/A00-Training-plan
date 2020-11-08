000010************************************************
000020* 管理与信契約(CISUF660)
000030************************************************
000040    03   ()与信管理先コード       PIC  X(9).
000050    03   ()契約番号               PIC  X(10).
000060    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000070    03   ()契約種類               PIC  X(3).
000080    03   ()勘定処理コード         PIC  X(2).
000090    03   ()部課コード             PIC  X(4).
000100    03   ()主契約区分             PIC  X(1).
000110    03   ()契約先コード           PIC  X(5).
000120    03   ()契約件名               PIC  X(40).
000130    03   ()取引年月日             PIC  X(8).
000140    03   ()契約年月日             PIC  X(8).
000150    03   ()検収年月日             PIC  X(8).
000160    03   ()満了年月日             PIC  X(8).
000170    03   ()対外債権残高           PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()対外債権残高消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()前受金残高             PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()前受金残高消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000210    03   ()貸付金別口             PIC S9(13)  SIGN LEADING SEPARATE.
000220    03   ()貸付金別口消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()非稼働資産             PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()貯蔵品                 PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()担保残高               PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()信用保険区分           PIC  X(1).
000270    03   ()信用保険求償           PIC S9(13)  SIGN LEADING SEPARATE.
000280    03   ()契約金額               PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()入金日                 PIC  X(2).
000300    03   ()開始回数               PIC  X(1).
000310    03   ()明細支払回数           PIC S9(3)  SIGN LEADING SEPARATE.
000320    03   ()計算方式               PIC  X(1).
000330    03   ()請求サイクル           PIC  X(2).
000340    03   ()延滞開始年月日         PIC  X(8).
000350    03   ()歯抜フラグ１           PIC  X(2).
000360    03   ()歯抜フラグ２           PIC  X(2).
000370    03   ()残価額                 PIC S9(13)  SIGN LEADING SEPARATE.
000380    03   ()月割Ｌ料               PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()約弁区分               PIC  X(1).
000400    03   ()事故債権残             PIC S9(13)  SIGN LEADING SEPARATE.
000410    03   ()事故債権残消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()事故元本残             PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()当月末債権残           PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()当月末元本残           PIC S9(13)  SIGN LEADING SEPARATE.
000450    03   ()Ｎ当月末債権残         PIC S9(13)  SIGN LEADING SEPARATE.
000460    03   ()Ｎ当月末元本残         PIC S9(13)  SIGN LEADING SEPARATE.
000470    03   ()未収元本               PIC S9(13)  SIGN LEADING SEPARATE.
000480    03   ()未収利息               PIC S9(13)  SIGN LEADING SEPARATE.
000490    03   ()未徴収金               PIC S9(13)  SIGN LEADING SEPARATE.
000500    03   ()Ｂ未徴収金             PIC S9(13)  SIGN LEADING SEPARATE.
000510    03   ()売却金額               PIC S9(13)  SIGN LEADING SEPARATE.
000520    03   ()固定利率               PIC S9(3)V9(8)  SIGN LEADING SEPARATE.
000530    03   ()金利変動区分           PIC  X(1).
000540    03   ()スプレッド             PIC S9(3)V9(8)  SIGN LEADING SEPARATE.
000550    03   ()連動金利区分           PIC  X(1).
000560    03   ()備考                   PIC  X(40).
000570    03   ()対外元本残高           PIC S9(13)  SIGN LEADING SEPARATE.
000580    03   ()前月末対外債権残高     PIC S9(13)  SIGN LEADING SEPARATE.
000590    03   ()前月末対外債権残高消費税 PIC S9(13)  SIGN LEADING SEPARATE.
000600    03   ()前月末対外元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
000610    03   ()前月末前受金残高       PIC S9(13)  SIGN LEADING SEPARATE.
000620    03   ()前月末前受金残高消費税 PIC S9(13)  SIGN LEADING SEPARATE.
000630    03   ()前月末貸付金別口       PIC S9(13)  SIGN LEADING SEPARATE.
000640    03   ()前月末貸付金別口消費税 PIC S9(13)  SIGN LEADING SEPARATE.
000650    03   ()前月末非稼働資産       PIC S9(13)  SIGN LEADING SEPARATE.
000660    03   ()前月末貯蔵品           PIC S9(13)  SIGN LEADING SEPARATE.
000670    03   ()解約理由               PIC  X(2).
000680    03   ()解約区分               PIC  X(1).
000690    03   ()否認区分               PIC  X(1).
000700    03   ()当月末債権残高消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000710    03   ()未徴収金消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000720    03   ()登録年月日             PIC  X(8).
000730    03   ()登録時間               PIC  X(8).
000740    03   ()登録担当者             PIC  X(8).
000750    03   ()更新年月日             PIC  X(8).
000760    03   ()更新時間               PIC  X(8).
000770    03   ()更新者                 PIC  X(8).
000780    03   ()入力担当者コード       PIC  X(8).
