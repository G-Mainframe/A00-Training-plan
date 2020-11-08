000010************************************************
000020* 債権展開ファイル(CISUF472)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
000080    03   ()消費税率               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000090    03   ()消費税率区分           PIC  X(2).
000100    03   ()売上年月               PIC  X(6).
000110    03   ()売上額                 PIC S9(13)  SIGN LEADING SEPARATE.
000120    03   ()売上消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000130    03   ()売上消費税補正額       PIC S9(13)  SIGN LEADING SEPARATE.
000140    03   ()取引先コード           PIC  X(9).
000150    03   ()請求先コード           PIC  X(5).
000160    03   ()請求年月日             PIC  X(8).
000170    03   ()請求額                 PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()請求消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()請求消費税補正額       PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()回収予定日             PIC  X(8).
000210    03   ()回収年月日             PIC  X(8).
000220    03   ()回収額                 PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()回収額消費税           PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()請求書発行済フラグ     PIC  X(1).
000250    03   ()更新年月日             PIC  X(8).
000260    03   ()更新時間               PIC  X(8).
000270    03   ()更新者                 PIC  X(8).
000280    03   ()請求書発行日           PIC  X(8).
000290    03   ()請求書番号             PIC S9(7)  SIGN LEADING SEPARATE.
000300    03   ()未回収額               PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()委託保守区分           PIC  X(1).
000320    03   ()委託保守料             PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()委託保守消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()請求契約番号           PIC  X(15).
000350    03   ()回収方法               PIC  X(1).
000360    03   ()入力担当者コード       PIC  X(8).
000370    03   ()手形受取フラグ         PIC  X(1).
000380    03   ()他社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()他社回収額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000400    03   ()自社請求額             PIC S9(13)  SIGN LEADING SEPARATE.
000410    03   ()自社請求消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()請求内訳コード         PIC  X(3).
000430    03   ()利息請求内訳コード     PIC  X(3).
000440    03   ()消込通番               PIC  X(11).
000450    03   ()履歴連番               PIC S9(2)  SIGN LEADING SEPARATE.
000460    03   ()売上債権残             PIC S9(13)  SIGN LEADING SEPARATE.
000470    03   ()売上債権残調整         PIC S9(13)  SIGN LEADING SEPARATE.
000480    03   ()請求債権残             PIC S9(13)  SIGN LEADING SEPARATE.
000490    03   ()請求債権残調整         PIC S9(13)  SIGN LEADING SEPARATE.
000500    03   ()自社請求債権残         PIC S9(13)  SIGN LEADING SEPARATE.
000510    03   ()自社請求債権残調整     PIC S9(13)  SIGN LEADING SEPARATE.
000520    03   ()請求元本               PIC S9(13)  SIGN LEADING SEPARATE.
000530    03   ()請求利息               PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()請求元本残高           PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()元本回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000560    03   ()利息回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000570    03   ()自社固定資産税         PIC S9(13)  SIGN LEADING SEPARATE.
000580    03   ()自社動総保険料         PIC S9(13)  SIGN LEADING SEPARATE.
000590    03   ()自社委託保守料         PIC S9(13)  SIGN LEADING SEPARATE.
000600    03   ()自社売上元本           PIC S9(13)  SIGN LEADING SEPARATE.
000610    03   ()自社売上利息           PIC S9(13)  SIGN LEADING SEPARATE.
000620    03   ()自社売上元本残高       PIC S9(13)  SIGN LEADING SEPARATE.
000630    03   ()収益展開利回り         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000640    03   ()自社売上元本調整       PIC S9(13)  SIGN LEADING SEPARATE.
000650    03   ()自社分支払利息適用     PIC S9(13)  SIGN LEADING SEPARATE.
000660    03   ()自社分支払利息一般     PIC S9(13)  SIGN LEADING SEPARATE.
000670    03   ()金利                   PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000680    03   ()返済年月日             PIC  X(8).
000690    03   ()期間月数               PIC S9(3)  SIGN LEADING SEPARATE.
000700    03   ()期間日数               PIC S9(3)  SIGN LEADING SEPARATE.
000710    03   ()利息計算開始日         PIC  X(8).
000720    03   ()利息計算終了日         PIC  X(8).
000730    03   ()自社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000740    03   ()自社回収消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000750    03   ()登録年月日             PIC  X(8).
000760    03   ()登録時間               PIC  X(8).
000770    03   ()登録担当者             PIC  X(8).
000780    03   ()初回入金日             PIC  X(8).
000790    03   ()前払充当区分           PIC  X(1).
000800    03   ()請求回                 PIC S9(3)  SIGN LEADING SEPARATE.
000810    03   ()消込年月日             PIC  X(8).
000820    03   ()他社請求額             PIC S9(13)  SIGN LEADING SEPARATE.
000830    03   ()他社請求額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000840    03   ()自社その他諸費用       PIC S9(13)  SIGN LEADING SEPARATE.
