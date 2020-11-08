000010************************************************
000020* 貸付金（金消展開）(CPBIS084)
000030************************************************
000040    03  ()契約ＮＯ               PIC  X(9).
000050    03  ()展開番号               PIC S9(3).
000060    03  ()利息基準日回収日       PIC  X(7).
000070    03  ()元本内入               PIC S9(13)  SIGN LEADING SEPARATE.
000080    03  ()利息額                 PIC S9(13)  SIGN LEADING SEPARATE.
000090    03  ()元利合計               PIC S9(13)  SIGN LEADING SEPARATE.
000100    03  ()元本残高               PIC S9(13)  SIGN LEADING SEPARATE.
000110    03  ()期間月数               PIC S9(3)  SIGN LEADING SEPARATE.
000120    03  ()期間日数               PIC S9(4)  SIGN LEADING SEPARATE.
000130    03  ()利率                   PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000140    03  ()社内金利               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000150    03  ()回収方式.
000160     05  ()回収方式元本           PIC S9(1).
000170     05  ()回収方式利息           PIC S9(1).
000180    03  ()利率確定区分           PIC S9(1).
000190    03  ()回収済区分.
000200     05  ()回収済区分元本         PIC S9(1).
000210     05  ()回収済区分利息         PIC S9(1).
000220    03  ()休日区分               PIC S9(1).
000230    03  ()約定返済日             PIC  X(7).
000240    03  ()予備                   PIC  X(30).
