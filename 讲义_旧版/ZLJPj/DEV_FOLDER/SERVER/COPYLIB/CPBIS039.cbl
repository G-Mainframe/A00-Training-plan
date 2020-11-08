000010************************************************
000020* 債権（明細）(CPBIS039)
000030************************************************
000040    03  ()ＫＥＹ項目.
000050     05  ()契約番号               PIC  X(9).
000060    03  ()キー.
000070     05  ()再リースコード         PIC S9(1).
000080     05  ()物件ＮＯ               PIC S9(3).
000090     05  ()請求コード             PIC S9(2).
000100     05  ()勘定処理コード         PIC S9(2).
000110     05  ()解約区分               PIC  X(1).
000120    03  ()解約日.
000130     05  ()解約日－世紀           PIC S9(1).
000140     05  ()解約日－年月日         PIC  X(6).
000150    03  ()解約対象コード         PIC  X(1).
000160    03  ()解約処理コード         PIC  X(1).
000170    03  ()契約日.
000180     05  ()契約日－世紀           PIC S9(1).
000190     05  ()契約日－年月日         PIC  X(6).
000200    03  ()検収日.
000210     05  ()検収日－世紀           PIC S9(1).
000220     05  ()検収日－年月日         PIC  X(6).
000230    03  ()リース開始日.
000240     05  ()リース開始日－世紀     PIC S9(1).
000250     05  ()リース開始日－年月日   PIC  X(6).
000260    03  ()リース終了日.
000270     05  ()リース終了日－世紀     PIC S9(1).
000280     05  ()リース終了日－年月日   PIC  X(6).
000290     05  ()リース期間             PIC S9(3)  SIGN LEADING SEPARATE.
000300    03  ()請求情報.
000310     05  ()請求先コード           PIC  X(8).
000320     05  ()支払回数               PIC S9(3)  SIGN LEADING SEPARATE.
000330     05  ()計算方式               PIC S9(1).
000340     05  ()請求サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000350     05  ()据置期間               PIC S9(3)  SIGN LEADING SEPARATE.
000360     05  ()ＢＥＧＩＮ回数         PIC S9(1)  SIGN LEADING SEPARATE.
000370     05  ()第１回リース料入金日.
000380      07  ()第１回リース料入金日－世紀 PIC S9(1).
000390      07  ()第１回リース料入金日－年月日 PIC  X(6).
000400     05  ()前受情報.
000410      07  ()前受リース料入金日.
000420       09  ()前受リース料入金日－世紀 PIC S9(1).
000430       09  ()前受リース料入金日－年月日 PIC  X(6).
000440      07  ()前受リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000450      07  ()前受充当開始日.
000460       09  ()前受充当開始日－世紀   PIC S9(1).
000470       09  ()前受充当開始日－年月   PIC  X(4).
000480      07  ()前受充当終了日.
000490       09  ()前受充当終了日－世紀   PIC S9(1).
000500       09  ()前受充当終了日－年月   PIC  X(4).
000510      07  ()前受充当月数           PIC S9(3)  SIGN LEADING SEPARATE.
000520      07  ()一部充当額             PIC S9(13)  SIGN LEADING SEPARATE.
000530     05  ()振込入金銀行情報.
000540      07  ()銀行コード             PIC  X(7).
000550      07  ()口座番号               PIC  X(7).
000560      07  ()預金種類               PIC  X(1).
000570     05  ()入金日                 PIC S9(2)  SIGN LEADING SEPARATE.
000580     05  ()請求書発行済回数       PIC S9(3)  SIGN LEADING SEPARATE.
000590     05  FILLER           PIC  X(14).
000600    03  ()担保情報.
000610     05  ()担保銀行コード         PIC  X(7).
000620     05  ()担保差入日.
000630      07  ()担保差入日－世紀       PIC S9(1).
000640      07  ()担保差入日－年月日     PIC  X(6).
000650     05  ()担保処理月度.
000660      07  ()担保処理月度－世紀     PIC S9(1).
000670      07  ()担保処理月度－年月     PIC  X(4).
000680    03  FILLER           PIC  X(2).
000690    03  ()その他契約条件.
000700     05  ()単年度契約             PIC  X(2).
000710     05  ()債協コード             PIC  X(2).
000720     05  ()支払繰延月数           PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
000730     05  ()初期費用               PIC S9(13)  SIGN LEADING SEPARATE.
000740     05  ()前渡金利息額           PIC S9(13)  SIGN LEADING SEPARATE.
000750     05  ()基準金利               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000760     05  ()利回り.
000770      07  ()基本利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000780      07  ()実質利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000790     05  ()消費税.
000800      07  ()徴収区分               PIC S9(1).
000810      07  ()税率                   PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
000820     05  ()消費税コード           PIC S9(2).
000830    03  ()ファイナンス.
000840     05  ()開始日.
000850      07  ()開始日－世紀           PIC S9(1).
000860      07  ()開始日－年月           PIC  X(4).
000870     05  ()終了日.
000880      07  ()終了日－世紀           PIC S9(1).
000890      07  ()終了日－年月           PIC  X(4).
000900     05  ()期間                   PIC S9(3)  SIGN LEADING SEPARATE.
000910    03  ()粗利                   PIC S9(13)  SIGN LEADING SEPARATE.
000920    03  ()契約金額.
000930     05  ()契約金額基本           PIC S9(13)  SIGN LEADING SEPARATE.
000940     05  ()契約金額実質           PIC S9(13)  SIGN LEADING SEPARATE.
000950    03  ()利息合計.
000960     05  ()利息合計基本           PIC S9(13)  SIGN LEADING SEPARATE.
000970     05  ()利息合計実質           PIC S9(13)  SIGN LEADING SEPARATE.
000980    03  ()諸経費.
000990     05  ()月額.
001000      07  ()固定資産税             PIC S9(13)  SIGN LEADING SEPARATE.
001010      07  ()保険料                 PIC S9(13)  SIGN LEADING SEPARATE.
001020      07  ()保守料                 PIC S9(13)  SIGN LEADING SEPARATE.
001030      07  ()その他１               PIC S9(13)  SIGN LEADING SEPARATE.
001040      07  ()その他２               PIC S9(13)  SIGN LEADING SEPARATE.
001050     05  ()諸経費合計             PIC S9(13)  SIGN LEADING SEPARATE.
001060    03  ()購入金額合計           PIC S9(13)  SIGN LEADING SEPARATE.
001070    03  FILLER           PIC  X(7).
001080    03  ()残価情報.
001090     05  ()残価保証区分           PIC S9(1).
001100     05  ()残価回収日.
001110      07  ()残価回収日－世紀       PIC S9(1).
001120      07  ()残価回収日－年月日     PIC  X(6).
001130     05  ()残価額合計             PIC S9(11)  SIGN LEADING SEPARATE.
001140    03  ()物件枝番数             PIC S9(3)  SIGN LEADING SEPARATE.
001150    03  ()債権残高前月末         PIC S9(13)  SIGN LEADING SEPARATE.
001160    03  ()初回請求情報の時の１回分.
001170     05  ()初回年月.
001180      07  ()初回年月－世紀         PIC S9(1).
001190      07  ()初回年月－年月         PIC  X(4).
001200     05  ()支払回数番号           PIC S9(4)  SIGN LEADING SEPARATE.
001210     05  ()実リース料.
001220      07  ()実リース料－基本       PIC S9(13)  SIGN LEADING SEPARATE.
001230      07  ()実リース料－実質       PIC S9(13)  SIGN LEADING SEPARATE.
001240     05  ()ＮＥＴ－リース料.
001250      07  ()ＮＥＴ－リース料－基本 PIC S9(13)  SIGN LEADING SEPARATE.
001260      07  ()ＮＥＴ－リース料－実質 PIC S9(13)  SIGN LEADING SEPARATE.
001270     05  ()利息.
001280      07  ()利息－基本             PIC S9(13)  SIGN LEADING SEPARATE.
001290      07  ()利息－実質             PIC S9(13)  SIGN LEADING SEPARATE.
001300     05  ()元本内入               PIC S9(13)  SIGN LEADING SEPARATE.
001310     05  ()元本残高               PIC S9(13)  SIGN LEADING SEPARATE.
001320     05  ()債権残高.
001330      07  ()債権残高－基本         PIC S9(13)  SIGN LEADING SEPARATE.
001340      07  ()債権残高－実質         PIC S9(13)  SIGN LEADING SEPARATE.
001350     05  ()消費税.
001360      07  ()消費税額               PIC S9(11)  SIGN LEADING SEPARATE.
001370      07  ()消費税－回収方式コード PIC S9(1).
001380     05  ()諸費用                 PIC S9(13)  SIGN LEADING SEPARATE.
001390     05  ()消費税率               PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001400     05  FILLER           PIC  X(4).
001410     05  ()回収方式コード         PIC S9(1).
001420     05  ()回収済表示             PIC S9(1).
001430     05  ()前受充当表示           PIC S9(1).
001440     05  ()残価回収表示           PIC S9(1).
001450    03  ()手数料請求名称カナ     PIC  X(30).
001460    03  ()充当相殺区分           PIC  X(1).
001470    03  FILLER           PIC  X(28).
001480    03  ()承継日                 PIC  X(7).
001490    03  ()最新入力消費税率       PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001500    03  ()処理年月度.
001510     05  ()処理年月度－世紀       PIC  X(1).
001520     05  ()処理年月度－年月       PIC  X(4).
001530    03  ()共通情報               PIC  X(35).
