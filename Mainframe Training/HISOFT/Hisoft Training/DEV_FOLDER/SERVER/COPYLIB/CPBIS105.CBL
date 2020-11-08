000010************************************************
000020* 買掛金（購入先）(CPBIS105)
000030************************************************
000040    03  ()契約番号.
000050     05  ()契約番号－１           PIC  X(7).
000060     05  ()契約番号－２           PIC  X(2).
000070    03  ()購入先識別番号         PIC S9(2).
000080    03  ()支払先コード           PIC  X(4).
000090    03  ()支払先名               PIC  X(56).
000100    03  ()購入先名               PIC  X(60).
000110    03  ()購入金額               PIC S9(13)  SIGN LEADING SEPARATE.
000120    03  ()仕入消費税             PIC S9(13)  SIGN LEADING SEPARATE.
000130    03  ()充当相殺金額           PIC S9(13)  SIGN LEADING SEPARATE.
000140    03  ()前渡金                 PIC S9(13)  SIGN LEADING SEPARATE.
000150    03  ()支払金額               PIC S9(13)  SIGN LEADING SEPARATE.
000160    03  FILLER           PIC  X(35).
000170    03  ()支払追加.
000180     05  ()支払追加日付.
000190     05  ()支払追加日付－世紀     PIC S9(1).
000200     05  ()支払追加日付－年月日   PIC  X(6).
000210     05  ()担当者コード           PIC S9(4).
000220    03  FILLER           PIC  X(28).
000230    03  ()当月承認分.
000240     05  ()当月承認分日付.
000250      07  ()当月承認分日付－世紀   PIC S9(1).
000260      07  ()当月承認分日付－年月日 PIC  X(6).
000270     05  ()承認回数               PIC S9(1)  SIGN LEADING SEPARATE.
000280     05  ()振込.
000290      07  ()振込件数               PIC S9(2)  SIGN LEADING SEPARATE.
000300      07  ()振込支払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000310     05  ()手形.
000320      07  ()手形件数               PIC S9(2)  SIGN LEADING SEPARATE.
000330      07  ()手形支払金額           PIC S9(13)  SIGN LEADING SEPARATE.
000340    03  ()当月取消分.
000350     05  ()当月取消日付.
000360      07  ()当月取消日付－世紀     PIC S9(1).
000370      07  ()当月取消日付－年月日   PIC  X(6).
000380     05  ()取消回数               PIC S9(1)  SIGN LEADING SEPARATE.
000390     05  ()振込.
000400      07  ()取消振込件数           PIC S9(2)  SIGN LEADING SEPARATE.
000410      07  ()取消振込支払金額       PIC S9(13)  SIGN LEADING SEPARATE.
000420     05  ()手形.
000430      07  ()取消手形件数           PIC S9(2)  SIGN LEADING SEPARATE.
000440      07  ()取消手形支払金額       PIC S9(13)  SIGN LEADING SEPARATE.
000450    03  ()支払レコード件数       PIC S9(2)  SIGN LEADING SEPARATE.
000460    03  ()共通情報               PIC  X(35).
