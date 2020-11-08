000010************************************************
000020* 資産（償却）(CPBIS050)
000030************************************************
000040    03  ()ＫＥＹ項目.
000050     05  ()契約ＮＯ               PIC  X(9).
000060     05  ()物件ＮＯ               PIC S9(3).
000070     05  ()解約区分               PIC  X(1).
000080     05  ()再生区分               PIC  X(1).
000090    03  ()償却計算会社.
000100     05  ()前期末簿価会社         PIC S9(13)  SIGN LEADING SEPARATE.
000110     05  ()当月償却高             PIC S9(13)  SIGN LEADING SEPARATE.
000120     05  ()当期償却高             PIC S9(13)  SIGN LEADING SEPARATE.
000130     05  ()現在簿価               PIC S9(13)  SIGN LEADING SEPARATE.
000140    03  FILLER           PIC  X(10).
000150    03  ()償却計算法定.
000160     05  ()償却区分               PIC S9(2).
000170     05  ()割増区分               PIC S9(2).
000180     05  ()特別償却率.
000190      07  ()特別償却率－分子       PIC S9(2).
000200      07  ()特別償却率－分母       PIC S9(3).
000210     05  ()前期末簿価法定         PIC S9(13)  SIGN LEADING SEPARATE.
000220     05  ()普通償却費             PIC S9(13)  SIGN LEADING SEPARATE.
000230     05  ()割増償却費             PIC S9(13)  SIGN LEADING SEPARATE.
000240     05  ()特別償却費             PIC S9(13)  SIGN LEADING SEPARATE.
000250     05  ()当期末簿価             PIC S9(13)  SIGN LEADING SEPARATE.
000260     05  ()繰越超過額             PIC S9(13)  SIGN LEADING SEPARATE.
000270     05  ()償却限度額             PIC S9(13)  SIGN LEADING SEPARATE.
000280    03  FILLER           PIC  X(15).
000290    03  ()理論簿価情報.
000300     05  ()会社理論前期末簿価     PIC S9(13)  SIGN LEADING SEPARATE.
000310     05  ()会社理論当期末簿価     PIC S9(13)  SIGN LEADING SEPARATE.
000320    03  ()当期償却過不足額       PIC S9(13)  SIGN LEADING SEPARATE.
000330    03  FILLER           PIC  X(28).
000340    03  ()処理年月度.
000350     05  ()処理年月度－世紀       PIC S9(1).
000360     05  ()処理年月度－年月       PIC  X(4).
000370    03  ()共通情報               PIC  X(35).
