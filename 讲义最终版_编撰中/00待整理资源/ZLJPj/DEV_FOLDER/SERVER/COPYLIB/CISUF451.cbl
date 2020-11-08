000010************************************************
000020* 支払内容ファイル(CISUF451)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()支払種類               PIC  X(2).
000070    03   ()契約種類               PIC  X(3).
000080    03   ()取引先コード           PIC  X(9).
000090    03   ()支払先コード           PIC  X(5).
000100    03   ()初回支払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000110    03   ()初回支払消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000120    03   ()支払総額               PIC S9(13)  SIGN LEADING SEPARATE.
000130    03   ()支払総額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000140    03   ()無償期間               PIC S9(2)  SIGN LEADING SEPARATE.
000150    03   ()支払間隔               PIC S9(2)  SIGN LEADING SEPARATE.
000160    03   ()支払日パターン         PIC  X(1).
000170    03   ()支払サイト             PIC S9(2)  SIGN LEADING SEPARATE.
000180    03   ()支払日                 PIC S9(2)  SIGN LEADING SEPARATE.
000190    03   ()支払方法               PIC  X(1).
000200    03   ()変更日                 PIC  X(8).
000210    03   ()解約年月日             PIC  X(8).
000220    03   ()解約分料金累計         PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()解約分消費税累計       PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()他社契約番号           PIC  X(20).
000250    03   ()更新年月日             PIC  X(8).
000260    03   ()更新時間               PIC  X(8).
000270    03   ()更新者                 PIC  X(8).
000280    03   ()入力担当者コード       PIC  X(8).
000290    03   ()支払手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()次回支払額             PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()次回支払手数料         PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()二回目以降支払金額     PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()二回目以降支払消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()前受月数               PIC S9(2)  SIGN LEADING SEPARATE.
000350    03   ()頭金                   PIC S9(13)  SIGN LEADING SEPARATE.
000360    03   ()頭金消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000370    03   ()手形振出サイト         PIC S9(2)  SIGN LEADING SEPARATE.
000380    03   ()手形振出日             PIC S9(2)  SIGN LEADING SEPARATE.
000390    03   ()月額料金               PIC S9(13)  SIGN LEADING SEPARATE.
000400    03   ()月額料金消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000410    03   ()支払回数               PIC S9(3)  SIGN LEADING SEPARATE.
000420    03   ()支払済金額             PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()支払済金額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()初回支払回数           PIC S9(3)  SIGN LEADING SEPARATE.
000450    03   ()登録年月日             PIC  X(8).
000460    03   ()登録時間               PIC  X(8).
000470    03   ()登録担当者             PIC  X(8).
000480    03   ()解約分契約総額         PIC S9(13)  SIGN LEADING SEPARATE.
000490    03   ()持分比率               PIC S9(3)  SIGN LEADING SEPARATE.
000500    03   ()請求書確認区分         PIC  X(1).
000510    03   ()入金確認区分           PIC  X(1).
000520    03   ()振込料負担区分         PIC  X(1).
000530    03   ()ソフト支払総額         PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()ソフト支払総額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()支払基準月             PIC S9(2)  SIGN LEADING SEPARATE.
000560    03   ()再リース支払額         PIC S9(13)  SIGN LEADING SEPARATE.
000570    03   ()基本利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000580    03   ()実質利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000590    03   ()以降支払サイト         PIC S9(2)  SIGN LEADING SEPARATE.
000600    03   ()以降支払日             PIC S9(2)  SIGN LEADING SEPARATE.
000610    03   ()消費税徴収区分         PIC  X(1).
000620    03   ()旧再リースコード       PIC S9(1)  SIGN LEADING SEPARATE.
000630    03   ()旧支払先コード         PIC  X(4).
