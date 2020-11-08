000010************************************************
000020* 解約履歴＿損害金請求ファイル(CISUF551)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()申請連番               PIC S9(2)  SIGN LEADING SEPARATE.
000070    03   ()契約種類               PIC  X(3).
000080    03   ()損害金請求方法         PIC  X(1).
000090    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
000100    03   ()解約連番               PIC S9(2)  SIGN LEADING SEPARATE.
000110    03   ()解約本算年月日         PIC  X(8).
000120    03   ()損害金取引先コード     PIC  X(9).
000130    03   ()損害金請求先コード     PIC  X(5).
000140    03   ()損害金回収予定日       PIC  X(8).
000150    03   ()新契約番号             PIC  X(15).
000160    03   ()損害金請求額           PIC S9(13)  SIGN LEADING SEPARATE.
000170    03   ()損害金請求額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()損害金請求額消費税率   PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000190    03   ()損害金請求額消費税率区分 PIC  X(2).
000200    03   ()請求書発行済フラグ     PIC  X(1).
000210    03   ()請求書番号             PIC S9(7)  SIGN LEADING SEPARATE.
000220    03   ()未回収額               PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()損害金回収額           PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()損害金回収額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()損害金回収日           PIC  X(8).
000260    03   ()更新年月日             PIC  X(8).
000270    03   ()更新時間               PIC  X(8).
000280    03   ()更新者                 PIC  X(8).
000290    03   ()入力担当者コード       PIC  X(8).
000300    03   ()自社売上額             PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()自社売上額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()他社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()管理債権レベル         PIC  X(1).
000340    03   ()貸倒損失金             PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()督促カード発行フラグ   PIC  X(1).
000360    03   ()繰上弁済元本           PIC S9(13)  SIGN LEADING SEPARATE.
000370    03   ()繰上弁済利息           PIC S9(13)  SIGN LEADING SEPARATE.
000380    03   ()繰上弁済元本自社       PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()繰上弁済利息自社       PIC S9(13)  SIGN LEADING SEPARATE.
000400    03   ()戻し利息               PIC S9(13)  SIGN LEADING SEPARATE.
000410    03   ()消費税一括徴収過入金額 PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()消費税一括徴収不足金額 PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()自社消費税一括徴収過入金額 PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()自社消費税一括徴収不足金額 PIC S9(13)  SIGN LEADING SEPARATE.
000450    03   ()請求内訳コード         PIC  X(3).
000460    03   ()消込通番               PIC  X(11).
000470    03   ()損害金回収方法         PIC  X(1).
000480    03   ()初回入金日             PIC  X(8).
000490    03   ()消込年月日             PIC  X(8).
000500    03   ()相殺過入金額           PIC S9(13)  SIGN LEADING SEPARATE.
000510    03   ()相殺過入金消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000520    03   ()相殺前払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000530    03   ()相殺前払金消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()登録年月日             PIC  X(8).
000550    03   ()登録時間               PIC  X(8).
000560    03   ()登録担当者             PIC  X(8).
000570    03   ()元再リースコード１     PIC  X(1).
000580    03   ()元請求内訳コード１     PIC  X(3).
000590    03   ()元回収予定日１         PIC  X(7).
000600    03   ()債務協調ＣＤ           PIC  X(2).
