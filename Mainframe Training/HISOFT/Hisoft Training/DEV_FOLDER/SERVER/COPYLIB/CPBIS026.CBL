000010************************************************
000020* シャープ解約（SFC明細ﾚｺｰﾄﾞ）(CPBIS026)
000030************************************************
000040    03  ()エントリーＫＥＹ.
000050     05  ()ＢＯＴＬ契約ＮＯ       PIC  X(9).
000060    03  ()エントリーＫＥＹ.
000070     05  ()ＳＦＣ契約ＮＯ         PIC  X(12).
000080    03  ()ＳＯＲＴＥＤＫＥＹ.
000090     05  ()契約ＮＯ               PIC  X(9).
000100     05  ()物件ＮＯ               PIC S9(3).
000110    03  ()解約情報.
000120     05  ()一部部分区分           PIC  X(1).
000130     05  FILLER           PIC  X(7).
000140    03  ()解約前情報.
000150     05  ()購入金額               PIC S9(13)  SIGN LEADING SEPARATE.
000160     05  ()数量                   PIC S9(4).
000170     05  ()個別リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000180     05  ()設置場所名             PIC  X(20).
000190     05  ()物件名                 PIC  X(30).
000200     05  ()税区分                 PIC  X(1).
000210     05  ()動総付保区分           PIC  X(1).
000220     05  ()耐用年数               PIC S9(2).
000230     05  FILLER           PIC  X(8).
000240    03  ()解約分情報.
000250     05  ()解約購入金額           PIC S9(13)  SIGN LEADING SEPARATE.
000260     05  ()解約数量               PIC S9(4).
000270     05  ()解約個別リース料       PIC S9(13)  SIGN LEADING SEPARATE.
000280     05  ()解約前渡金利息額       PIC S9(13)  SIGN LEADING SEPARATE.
000290     05  ()解約固定資産税         PIC S9(13)  SIGN LEADING SEPARATE.
000300     05  ()解約保険料             PIC S9(13)  SIGN LEADING SEPARATE.
000310     05  FILLER           PIC  X(7).
000320    03  FILLER           PIC  X(24).
000330    03  ()ＭＴ更新情報.
000340     05  ()支払済前払リース料     PIC S9(13)  SIGN LEADING SEPARATE.
000350     05  ()支払済前払リース料消費税 PIC S9(13)  SIGN LEADING SEPARATE.
000360     05  ()過剰リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000370     05  ()過剰リース料消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000380     05  ()未払リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000390     05  ()未払リース料消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000400     05  FILLER           PIC  X(53).
000410     05  ()共通情報               PIC  X(35).
