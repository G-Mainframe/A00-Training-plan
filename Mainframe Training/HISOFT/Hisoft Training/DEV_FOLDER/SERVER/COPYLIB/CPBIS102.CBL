000010************************************************
000020* 納付先マスタ（申告情報レコード)(CPBIS102)
000030************************************************
000040    03  ()ＫＥＹ.
000050     05  ()納付先コード           PIC  X(6).
000060    03  ()年度.
000070     05  ()年度－世紀             PIC S9(1).
000080     05  ()年度－年               PIC  X(2).
000090    03  ()耐用年数短縮コード     PIC  X(1).
000100    03  ()課税標準特例           PIC  X(1).
000110    03  ()税額                   PIC S9(13)  SIGN LEADING SEPARATE.
000120    03  ()件数.
000130     05  ()資産種類情報                      OCCURS 6.
000140      07  ()資産種類               PIC S9(7)  SIGN LEADING SEPARATE.
000150     05  ()件数合計               PIC S9(7)  SIGN LEADING SEPARATE.
000160    03  ()取得価額.
000170     05  ()資産種類                          OCCURS 6.
000180      07  ()前年前取得             PIC S9(13)  SIGN LEADING SEPARATE.
000190      07  ()前年度取得             PIC S9(13)  SIGN LEADING SEPARATE.
000200      07  ()資産種類合計           PIC S9(13)  SIGN LEADING SEPARATE.
000210     05  ()取得価額合計.
000220      07  ()取得価額合計－前年前取得 PIC S9(13)  SIGN LEADING SEPARATE.
000230      07  ()取得価額合計－前年度取得 PIC S9(13)  SIGN LEADING SEPARATE.
000240      07  ()取得価額合計－資産種類合計 PIC S9(13)  SIGN LEADING SEPARATE.
000250    03  ()評価額.
000260     05  ()資産種類                          OCCURS 6.
000270      07  ()帳簿価額               PIC S9(13)  SIGN LEADING SEPARATE.
000280      07  ()評価額                 PIC S9(13)  SIGN LEADING SEPARATE.
000290      07  ()課税標準額１           PIC S9(13)  SIGN LEADING SEPARATE.
000300      07  ()課税標準額２           PIC S9(13)  SIGN LEADING SEPARATE.
000310     05  ()評価額合計.
000320      07  ()評価額合計－帳簿価額   PIC S9(13)  SIGN LEADING SEPARATE.
000330      07  ()評価額合計－評価額     PIC S9(13)  SIGN LEADING SEPARATE.
000340      07  ()評価額合計－課税標準額１ PIC S9(13)  SIGN LEADING SEPARATE.
000350      07  ()評価額合計－課税標準額２ PIC S9(13)  SIGN LEADING SEPARATE.
000360    03  FILLER           PIC  X(82).
000370    03  ()共通情報               PIC  X(35).
