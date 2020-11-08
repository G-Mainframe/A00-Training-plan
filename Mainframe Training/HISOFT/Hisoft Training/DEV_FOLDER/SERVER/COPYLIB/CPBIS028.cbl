000010************************************************
000020* ﾌｧｸﾀﾘﾝｸﾞ（手形債権）(CPBIS028)
000030************************************************
000040    03  ()ＫＥＹ.
000050     05  ()契約番号               PIC  X(9).
000060    03  ()利息期日               PIC  X(7).
000070    03  ()回収方法               PIC S9(1).
000080    03  ()代理回収区分           PIC S9(1).
000090    03  ()期間日数               PIC S9(4)  SIGN LEADING SEPARATE.
000100    03  ()買取金額               PIC S9(13)  SIGN LEADING SEPARATE.
000110    03  ()割引料                 PIC S9(13)  SIGN LEADING SEPARATE.
000120    03  ()割引率                 PIC S9(3)V9(8)  SIGN LEADING SEPARATE.
000130    03  ()受取手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000140    03  ()受取手数料消費税等額   PIC S9(13)  SIGN LEADING SEPARATE.
000150    03  ()買戻予定日             PIC  X(7).
000160    03  ()買取代金支払日         PIC  X(7).
000170    03  ()債権表示               PIC  X(60).
000180    03  ()期限前決裁情報.
000190     05  ()期限前決裁日           PIC  X(7).
000200     05  ()戻し利息額             PIC S9(13)  SIGN LEADING SEPARATE.
000210     05  ()戻し利率               PIC S9(3)V9(8)  SIGN LEADING SEPARATE.
000220     05  ()戻し日数               PIC S9(4)  SIGN LEADING SEPARATE.
000230     05  ()戻し利息相殺区分       PIC S9(1).
000240     05  ()返済手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000250     05  ()返済手数料消費税等額   PIC S9(13)  SIGN LEADING SEPARATE.
000260    03  FILLER           PIC  X(40).
000270    03  ()手形共通情報.
000280     05  ()手形番号               PIC  X(10).
000290     05  ()手形種類               PIC S9(1).
000300     05  ()手形裏書方法           PIC S9(1).
000310     05  ()取引銀行コード         PIC  X(7).
000320     05  ()支払人名               PIC  X(60).
000330     05  ()支払場所               PIC  X(60).
000340    03  FILLER           PIC  X(61).
