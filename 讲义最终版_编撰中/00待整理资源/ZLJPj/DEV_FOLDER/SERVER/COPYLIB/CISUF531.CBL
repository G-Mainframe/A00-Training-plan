000010************************************************
000020* 前払金ファイル(CISUF531)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()前払金額               PIC S9(13)  SIGN LEADING SEPARATE.
000080    03   ()前払金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000090    03   ()前払金額消費税率       PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000100    03   ()前払金額消費税率区分   PIC  X(2).
000110    03   ()前払回収方法           PIC  X(1).
000120    03   ()前払回収サイト         PIC S9(2)  SIGN LEADING SEPARATE.
000130    03   ()前払回収日             PIC S9(2)  SIGN LEADING SEPARATE.
000140    03   ()充当開始回             PIC S9(3)  SIGN LEADING SEPARATE.
000150    03   ()充当月数               PIC S9(2)  SIGN LEADING SEPARATE.
000160    03   ()充当開始年月           PIC  X(6).
000170    03   ()回収額                 PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()回収額消費税           PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()振込手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()回収年月日             PIC  X(8).
000210    03   ()更新年月日             PIC  X(8).
000220    03   ()更新時間               PIC  X(8).
000230    03   ()更新者                 PIC  X(8).
000240    03   ()解約年月日             PIC  X(8).
000250    03   ()解約分料金累計         PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()解約分消費税累計       PIC S9(13)  SIGN LEADING SEPARATE.
000270    03   ()請求書番号             PIC S9(7)  SIGN LEADING SEPARATE.
000280    03   ()未回収額               PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()入力担当者コード       PIC  X(8).
000300    03   ()自社前払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()自社前払金額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()他社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()他社回収額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()他社解約分料金累計     PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()他社解約分消費税累計   PIC S9(13)  SIGN LEADING SEPARATE.
000360    03   ()他社未回収額           PIC S9(13)  SIGN LEADING SEPARATE.
000370    03   ()管理債権レベル         PIC  X(1).
000380    03   ()貸倒損失金             PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()登録年月日             PIC  X(8).
000400    03   ()登録時間               PIC  X(8).
000410    03   ()登録担当者             PIC  X(8).
000420    03   ()取引先コード           PIC  X(9).
000430    03   ()請求先コード           PIC  X(5).
000440    03   ()請求内訳コード         PIC  X(3).
000450    03   ()消込通番               PIC  X(11).
000460    03   ()充当済月数             PIC S9(2)  SIGN LEADING SEPARATE.
000470    03   ()充当済額               PIC S9(13)  SIGN LEADING SEPARATE.
000480    03   ()未充当残高             PIC S9(13)  SIGN LEADING SEPARATE.
000490    03   ()初回入金日             PIC  X(8).
000500    03   ()自社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000510    03   ()自社回収額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000520    03   ()他社前払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000530    03   ()他社前払金額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()充当年月日             PIC  X(8).
000550    03   ()充当済額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000560    03   ()自社充当済額           PIC S9(13)  SIGN LEADING SEPARATE.
000570    03   ()自社充当済額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000580    03   ()未充当残高消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000590    03   ()自社未充当残高         PIC S9(13)  SIGN LEADING SEPARATE.
000600    03   ()自社未充当残高消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000610    03   ()消込年月日             PIC  X(8).
000620    03   ()回収予定日             PIC  X(8).
000630    03   ()再リースコード         PIC S9(1)  SIGN LEADING SEPARATE.
000640    03   ()物件ＮＯ               PIC S9(3)  SIGN LEADING SEPARATE.
000650    03   ()請求コード             PIC S9(2)  SIGN LEADING SEPARATE.
000660    03   ()勘定処理コード         PIC S9(2)  SIGN LEADING SEPARATE.
000670    03   ()解約区分               PIC  X(1).
000680    03   ()債協コード             PIC  X(2).
000690    03   ()元再リースコード１     PIC  X(2).
000700    03   ()元請求内訳コード１     PIC  X(3).
000710    03   ()元回収年月日１         PIC  X(7).
000720    03   ()解約日                 PIC  X(8).
