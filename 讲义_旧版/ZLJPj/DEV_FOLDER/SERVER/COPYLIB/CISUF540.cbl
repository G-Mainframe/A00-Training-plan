000010************************************************
000020* 解約履歴ファイル(CISUF540)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()申請連番               PIC S9(2)  SIGN LEADING SEPARATE.
000070    03   ()解約承継区分           PIC  X(1).
000080    03   ()解約連番               PIC S9(2)  SIGN LEADING SEPARATE.
000090    03   ()解約年月日             PIC  X(8).
000100    03   ()解約区分               PIC  X(1).
000110    03   ()解約理由               PIC  X(2).
000120    03   ()承継種類               PIC  X(1).
000130    03   ()協調転区分             PIC  X(1).
000140    03   ()債務協調コード         PIC  X(2).
000150    03   ()経過月数               PIC S9(3)  SIGN LEADING SEPARATE.
000160    03   ()契約件名               PIC  X(60).
000170    03   ()代表解約物件番号       PIC S9(4)  SIGN LEADING SEPARATE.
000180    03   ()継続諸費用             PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()残リース料             PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()減額法１１０           PIC S9(13)  SIGN LEADING SEPARATE.
000210    03   ()減額法１０５           PIC S9(13)  SIGN LEADING SEPARATE.
000220    03   ()保険価格１１０         PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()実質元本残１０５       PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()実質未回収元本残       PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()未徴収固定資産税       PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()未徴収保険料           PIC S9(13)  SIGN LEADING SEPARATE.
000270    03   ()未徴収合計額           PIC S9(13)  SIGN LEADING SEPARATE.
000280    03   ()実質元本残１０２       PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()解約計上粗利           PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()法定定額償却額残高     PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()法定定率償却額残高     PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()解約物件耐用年数       PIC S9(2)V9(3)  SIGN LEADING SEPARATE.
000330    03   ()解約物件保険料率       PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000340    03   ()申請年月日             PIC  X(8).
000350    03   ()解約処理年月           PIC  X(6).
000360    03   ()取消区分               PIC  X(1).
000370    03   ()解約取消エントリ日     PIC  X(8).
000380    03   ()解約取消処理年月       PIC  X(6).
000390    03   ()解約申請フラグ         PIC  X(1).
000400    03   ()営業意見               PIC  X(160).
000410    03   ()解約以降調達利息約定   PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()解約以降調達利息売上   PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()代表契約種類           PIC  X(3).
000440    03   ()承継区分               PIC  X(1).
000450    03   ()登録年月日             PIC  X(8).
000460    03   ()契約件名自動登録区分   PIC  X(1).
000470    03   ()登録時間               PIC  X(8).
000480    03   ()登録担当者             PIC  X(8).
000490    03   ()更新年月日             PIC  X(8).
000500    03   ()更新時間               PIC  X(8).
000510    03   ()更新者                 PIC  X(8).
000520    03   ()入力担当者コード       PIC  X(8).
