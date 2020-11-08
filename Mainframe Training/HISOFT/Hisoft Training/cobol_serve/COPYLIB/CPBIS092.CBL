000010************************************************
000020* 当日支払確定F（支払確定明細)(CPBIS092)
000030************************************************
000040    03  ()債務先契約ＮＯ         PIC  X(10).
000050    03  ()再リースコード         PIC S9(1).
000060    03  ()契約明細ＮＯ           PIC S9(2).
000070    03  ()処理時刻時分秒         PIC S9(6).
000080    03  ()処理区分               PIC S9(1).
000090    03  ()事業所コード           PIC S9(4).
000100    03  ()担当者コード           PIC S9(4).
000110    03  ()債務取引先コード       PIC  X(8).
000120    03  ()ＲＥＦＮＯ             PIC  X(16).
000130    03  ()契約日.
000140     05  ()契約日－世紀           PIC S9(1).
000150     05  ()契約日－年月日         PIC S9(6).
000160    03  ()検収日.
000170     05  ()検収日－世紀           PIC S9(1).
000180     05  ()検収日－年月日         PIC S9(6).
000190    03  ()債務協調コード         PIC S9(2).
000200    03  ()債務勘定処理コード     PIC S9(2).
000210    03  ()債権勘定処理コード     PIC S9(2).
000220    03  ()資産コード             PIC S9(7).
000230    03  ()回収物件金額           PIC S9(13)  SIGN LEADING SEPARATE.
000240    03  ()売上消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000250    03  ()契約金額               PIC S9(13)  SIGN LEADING SEPARATE.
000260    03  ()仕入消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000270    03  ()売上消費税相殺区分     PIC S9(1).
000280    03  ()残価額                 PIC S9(13)  SIGN LEADING SEPARATE.
000290    03  ()物件代金回収日.
000300     05  ()物件代金回収日－世紀   PIC S9(1).
000310     05  ()物件代金回収日－年月日 PIC S9(6).
000320    03  ()回収方法               PIC S9(1).
000330    03  FILLER           PIC  X(2).
000340    03  ()第１回支払情報.
000350     05  ()第１回支払日.
000360      07  ()第１回支払日－世紀     PIC S9(1).
000370      07  ()第１回支払日－年月日   PIC S9(6).
000380     05  ()第１回実リース料       PIC S9(13)  SIGN LEADING SEPARATE.
000390     05  ()第１回ＮＥＴリース料   PIC S9(13)  SIGN LEADING SEPARATE.
000400     05  ()第１回利息             PIC S9(13)  SIGN LEADING SEPARATE.
000410     05  ()第１回消費税額         PIC S9(13)  SIGN LEADING SEPARATE.
000420     05  ()第１回諸費用           PIC S9(13)  SIGN LEADING SEPARATE.
000430     05  ()第１回リース料支払額   PIC S9(13)  SIGN LEADING SEPARATE.
000440    03  ()第２回支払情報.
000450     05  ()第２回支払日.
000460      07  ()第２回支払日－世紀     PIC S9(1).
000470      07  ()第２回支払日－年月日   PIC S9(6).
000480     05  ()第２回実リース料       PIC S9(13)  SIGN LEADING SEPARATE.
000490     05  ()第２回ＮＥＴリース料   PIC S9(13)  SIGN LEADING SEPARATE.
000500     05  ()第２回利息             PIC S9(13)  SIGN LEADING SEPARATE.
000510     05  ()第２回消費税額         PIC S9(13)  SIGN LEADING SEPARATE.
000520     05  ()第２回諸費用           PIC S9(13)  SIGN LEADING SEPARATE.
000530     05  ()第２回リース料支払額   PIC S9(13)  SIGN LEADING SEPARATE.
000540    03  ()前払情報.
000550     05  ()前払リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000560     05  ()消費税額               PIC S9(13)  SIGN LEADING SEPARATE.
000570    03  ()諸費用精算区分         PIC S9(1).
000580    03  ()ＢＥＧＩＮ回数         PIC S9(1).
000590    03  ()消費税支払区分         PIC S9(1).
000600    03  ()債権ユーザーコード     PIC  X(8).
000610    03  ()無形リース資産         PIC S9(13)  SIGN LEADING SEPARATE.
000620    03  ()有形リース資産         PIC S9(13)  SIGN LEADING SEPARATE.
000630    03  ()契約期間               PIC S9(3).
000640    03  ()共通情報               PIC  X(35).
