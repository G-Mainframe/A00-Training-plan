000010************************************************
000020* 買掛ファイル(CISUF480)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()買掛連番               PIC S9(3)  SIGN LEADING SEPARATE.
000080    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
000090    03   ()取引先コード           PIC  X(9).
000100    03   ()支払先コード           PIC  X(5).
000110    03   ()支払取引先コード       PIC  X(9).
000120    03   ()支払支払先コード       PIC  X(5).
000130    03   ()支払方法               PIC  X(1).
000140    03   ()前渡金区分             PIC  X(1).
000150    03   ()支払サイト             PIC S9(2)  SIGN LEADING SEPARATE.
000160    03   ()支払日                 PIC S9(2)  SIGN LEADING SEPARATE.
000170    03   ()実支払日               PIC  X(8).
000180    03   ()手形振出サイト         PIC S9(2)  SIGN LEADING SEPARATE.
000190    03   ()手形振出日             PIC S9(2)  SIGN LEADING SEPARATE.
000200    03   ()手形受渡方法           PIC  X(1).
000210    03   ()定価                   PIC S9(13)  SIGN LEADING SEPARATE.
000220    03   ()ユーザ向値引額         PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()自社向値引額           PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()ユーザ向購入額         PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()自社向購入額           PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()自社向購入額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
000270    03   ()相殺種類               PIC  X(1).
000280    03   ()相殺区分               PIC  X(1).
000290    03   ()相殺額                 PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()相殺金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()相殺契約番号           PIC  X(10).
000320    03   ()支払金額               PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()支払金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()支払金額消費税補正額   PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()前渡金金利             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000360    03   ()購入区分               PIC  X(1).
000370    03   ()見積物件番号           PIC S9(4)  SIGN LEADING SEPARATE.
000380    03   ()貴社見積番号           PIC  X(20).
000390    03   ()注文書番号             PIC S9(2)  SIGN LEADING SEPARATE.
000400    03   ()支払条件               PIC  X(60).
000410    03   ()残価設定額             PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()他社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()他社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()ソフト当社向購入額     PIC S9(13)  SIGN LEADING SEPARATE.
000450    03   ()ソフト当社向購入額消費税 PIC S9(13)  SIGN LEADING SEPARATE.
000460    03   ()更新年月日             PIC  X(8).
000470    03   ()更新時間               PIC  X(8).
000480    03   ()更新者                 PIC  X(8).
000490    03   ()登録年月日             PIC  X(8).
000500    03   ()登録時間               PIC  X(8).
000510    03   ()登録担当者             PIC  X(8).
000520    03   ()入力担当者コード       PIC  X(8).
000530    03   ()手数料相殺区分         PIC  X(1).
000540    03   ()手数料相殺金額         PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()手数料相殺金額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
