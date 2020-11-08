000010************************************************
000020* 債権（リース展開）(CPBIS036)
000030************************************************
000040    03  ()ＫＥＹ項目.
000050     05  ()契約番号               PIC  X(9).
000060    03  ()キー.
000070     05  ()再リースコード         PIC S9(1).
000080     05  ()物件ＮＯ               PIC S9(3).
000090     05  ()請求コード             PIC S9(2).
000100     05  ()勘定処理コード         PIC S9(2).
000110     05  ()解約区分               PIC  X(1).
000120    03  ()キー年度.
000130     05  ()年度－世紀             PIC S9(1).
000140     05  ()年度－年               PIC S9(2).
000150     05  ()年度－月               PIC S9(2).
000160    03  ()支払回数番号           PIC S9(4)  SIGN LEADING SEPARATE.
000170    03  ()実リース料.
000180     05  ()実リース料－基本       PIC S9(13)  SIGN LEADING SEPARATE.
000190     05  ()実リース料－実質       PIC S9(13)  SIGN LEADING SEPARATE.
000200    03  ()ＮＥＴ－リース料.
000210     05  ()ＮＥＴ－リース料－基本 PIC S9(13)  SIGN LEADING SEPARATE.
000220     05  ()ＮＥＴ－リース料－実質 PIC S9(13)  SIGN LEADING SEPARATE.
000230    03  ()利息.
000240     05  ()利息－基本             PIC S9(13)  SIGN LEADING SEPARATE.
000250     05  ()利息－実質             PIC S9(13)  SIGN LEADING SEPARATE.
000260    03  ()元本内入               PIC S9(13)  SIGN LEADING SEPARATE.
000270    03  ()元本残高               PIC S9(13)  SIGN LEADING SEPARATE.
000280    03  ()債権残高.
000290     05  ()債権残高－基本         PIC S9(13)  SIGN LEADING SEPARATE.
000300     05  ()債権残高－実質         PIC S9(13)  SIGN LEADING SEPARATE.
000310    03  ()消費税.
000320     05  ()消費税－額             PIC S9(11)  SIGN LEADING SEPARATE.
000330     05  ()消費税－回収方式コード PIC S9(1).
000340    03  ()諸費用                 PIC S9(13)  SIGN LEADING SEPARATE.
000350    03  ()消費税率               PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
000360    03  FILLER           PIC  X(4).
000370    03  ()回収方式コード         PIC S9(1).
000380    03  ()回収済表示             PIC S9(1).
000390    03  ()前受充当表示           PIC S9(1).
000400    03  ()残価回収表示           PIC S9(1).
