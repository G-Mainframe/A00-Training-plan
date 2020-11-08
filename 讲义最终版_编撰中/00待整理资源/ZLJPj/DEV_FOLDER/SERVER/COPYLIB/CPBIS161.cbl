000010************************************************
000020* 履歴アンマッチ債権明細(CPBIS161)
000030************************************************
000040    03  ()解約履歴ＫＥＹ.
000050     05  ()ＫＥＹ－解約日         PIC  X(7).
000060    03  ()ＫＥＹ項目.
000070     05  ()契約番号               PIC  X(9).
000080    03  ()キー.
000090     05  ()再リースコード         PIC S9(1).
000100     05  ()物件ＮＯ               PIC S9(3).
000110     05  ()請求コード             PIC S9(2).
000120     05  ()勘定処理コード         PIC S9(2).
000130     05  ()解約区分               PIC  X(1).
000140    03  ()解約日.
000150     05  ()解約日－世紀           PIC S9(1).
000160     05  ()解約日－年月日         PIC  X(6).
000170    03  ()解約対象コード         PIC  X(1).
000180    03  ()解約処理コード         PIC  X(1).
000190    03  ()契約日.
000200     05  ()契約日－世紀           PIC S9(1).
000210     05  ()契約日－年月日         PIC  X(6).
000220    03  ()検収日.
000230     05  ()検収日－世紀           PIC S9(1).
000240     05  ()検収日－年月日         PIC  X(6).
000250    03  ()リース開始日.
000260     05  ()リース開始日－世紀     PIC S9(1).
000270     05  ()リース開始日－年月日   PIC  X(6).
000280    03  ()リース終了日.
000290     05  ()リース終了日－世紀     PIC S9(1).
000300     05  ()リース終了日－年月日   PIC  X(6).
000310     05  ()リース期間             PIC S9(3)  SIGN LEADING SEPARATE.
000320    03  ()請求情報.
000330     05  ()請求先コード           PIC  X(8).
000340     05  ()支払回数               PIC S9(3)  SIGN LEADING SEPARATE.
000350     05  ()計算方式               PIC S9(1).
000360     05  ()請求サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000370     05  ()据置期間               PIC S9(3)  SIGN LEADING SEPARATE.
000380     05  ()ＢＥＧＩＮ回数         PIC S9(1)  SIGN LEADING SEPARATE.
000390     05  ()第１回リース料入金日.
000400      07  ()第１回リース料入金日－世紀 PIC S9(1).
000410      07  ()第１回リース料入金日－年月日 PIC  X(6).
000420     05  ()前受情報.
000430      07  ()前受リース料入金日.
000440       09  ()前受リース料入金日－世紀 PIC S9(1).
000450       09  ()前受リース料入金日－年月日 PIC  X(6).
000460      07  ()前受リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000470      07  ()前受充当開始日.
000480       09  ()前受充当開始日－世紀   PIC S9(1).
000490       09  ()前受充当開始日－年月   PIC  X(4).
000500      07  ()前受充当終了日.
000510       09  ()前受充当終了日－世紀   PIC S9(1).
000520       09  ()前受充当終了日－年月   PIC  X(4).
000530      07  ()前受充当月数           PIC S9(3)  SIGN LEADING SEPARATE.
000540      07  ()一部充当額             PIC S9(13)  SIGN LEADING SEPARATE.
000550     05  ()振込入金銀行情報.
000560      07  ()銀行コード             PIC  X(7).
000570      07  ()口座番号               PIC  X(7).
000580      07  ()預金種類               PIC  X(1).
000590     05  ()入金日                 PIC S9(2)  SIGN LEADING SEPARATE.
000600     05  ()請求書発行済回数       PIC S9(3)  SIGN LEADING SEPARATE.
000610     05  FILLER           PIC  X(14).
000620    03  ()担保情報.
000630     05  ()担保銀行コード         PIC  X(7).
000640     05  ()担保差入日.
000650      07  ()担保差入日－世紀       PIC S9(1).
000660      07  ()担保差入日－年月日     PIC  X(6).
000670     05  ()担保処理月度.
000680      07  ()担保処理月度－世紀     PIC S9(1).
000690      07  ()担保処理月度－年月     PIC  X(4).
000700    03  FILLER           PIC  X(2).
000710    03  ()その他契約条件.
000720     05  ()単年度契約             PIC  X(2).
000730     05  ()債協コード             PIC  X(2).
000740     05  ()支払繰延月数           PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
000750     05  ()初期費用               PIC S9(13)  SIGN LEADING SEPARATE.
000760     05  ()前渡金利息額           PIC S9(13)  SIGN LEADING SEPARATE.
000770     05  ()基準金利               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000780     05  ()利回り.
000790      07  ()基本利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000800      07  ()実質利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000810     05  ()消費税.
000820      07  ()徴収区分               PIC S9(1).
000830      07  ()税率                   PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
000840     05  ()消費税コード           PIC S9(2).
000850    03  ()ファイナンス.
000860     05  ()開始日.
000870      07  ()開始日－世紀           PIC S9(1).
000880      07  ()開始日－年月           PIC  X(4).
000890     05  ()終了日.
000900      07  ()終了日－世紀           PIC S9(1).
000910      07  ()終了日－年月           PIC  X(4).
000920     05  ()期間                   PIC S9(3)  SIGN LEADING SEPARATE.
000930    03  ()粗利                   PIC S9(13)  SIGN LEADING SEPARATE.
000940    03  ()契約金額.
000950     05  ()契約金額基本           PIC S9(13)  SIGN LEADING SEPARATE.
000960     05  ()契約金額実質           PIC S9(13)  SIGN LEADING SEPARATE.
000970    03  ()利息合計.
000980     05  ()利息合計基本           PIC S9(13)  SIGN LEADING SEPARATE.
000990     05  ()利息合計実質           PIC S9(13)  SIGN LEADING SEPARATE.
001000    03  ()諸経費.
001010     05  ()月額.
001020      07  ()固定資産税             PIC S9(13)  SIGN LEADING SEPARATE.
001030      07  ()保険料                 PIC S9(13)  SIGN LEADING SEPARATE.
001040      07  ()保守料                 PIC S9(13)  SIGN LEADING SEPARATE.
001050      07  ()その他１               PIC S9(13)  SIGN LEADING SEPARATE.
001060      07  ()その他２               PIC S9(13)  SIGN LEADING SEPARATE.
001070     05  ()諸経費合計             PIC S9(13)  SIGN LEADING SEPARATE.
001080    03  ()購入金額合計           PIC S9(13)  SIGN LEADING SEPARATE.
001090    03  FILLER           PIC  X(7).
001100    03  ()残価情報.
001110     05  ()残価保証区分           PIC S9(1).
001120     05  ()残価回収日.
001130      07  ()残価回収日－世紀       PIC S9(1).
001140      07  ()残価回収日－年月日     PIC  X(6).
001150     05  ()残価額合計             PIC S9(11)  SIGN LEADING SEPARATE.
001160    03  ()物件枝番数             PIC S9(3)  SIGN LEADING SEPARATE.
001170    03  ()債権残高前月末         PIC S9(13)  SIGN LEADING SEPARATE.
001180    03  ()初回請求情報の時の１回分.
001190     05  ()初回年月.
001200      07  ()初回年月－世紀         PIC S9(1).
001210      07  ()初回年月－年月         PIC  X(4).
001220     05  ()支払回数番号           PIC S9(4)  SIGN LEADING SEPARATE.
001230     05  ()実リース料.
001240      07  ()実リース料－基本       PIC S9(13)  SIGN LEADING SEPARATE.
001250      07  ()実リース料－実質       PIC S9(13)  SIGN LEADING SEPARATE.
001260     05  ()ＮＥＴ－リース料.
001270      07  ()ＮＥＴ－リース料－基本 PIC S9(13)  SIGN LEADING SEPARATE.
001280      07  ()ＮＥＴ－リース料－実質 PIC S9(13)  SIGN LEADING SEPARATE.
001290     05  ()利息.
001300      07  ()利息－基本             PIC S9(13)  SIGN LEADING SEPARATE.
001310      07  ()利息－実質             PIC S9(13)  SIGN LEADING SEPARATE.
001320     05  ()元本内入               PIC S9(13)  SIGN LEADING SEPARATE.
001330     05  ()元本残高               PIC S9(13)  SIGN LEADING SEPARATE.
001340     05  ()債権残高.
001350      07  ()債権残高－基本         PIC S9(13)  SIGN LEADING SEPARATE.
001360      07  ()債権残高－実質         PIC S9(13)  SIGN LEADING SEPARATE.
001370     05  ()消費税.
001380      07  ()消費税額               PIC S9(11)  SIGN LEADING SEPARATE.
001390      07  ()消費税－回収方式コード PIC S9(1).
001400     05  ()諸費用                 PIC S9(13)  SIGN LEADING SEPARATE.
001410     05  ()消費税率               PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001420     05  FILLER           PIC  X(4).
001430     05  ()回収方式コード         PIC S9(1).
001440     05  ()回収済表示             PIC S9(1).
001450     05  ()前受充当表示           PIC S9(1).
001460     05  ()残価回収表示           PIC S9(1).
001470    03  ()手数料請求名称カナ     PIC  X(30).
001480    03  ()充当相殺区分           PIC  X(1).
001490    03  FILLER           PIC  X(28).
001500    03  ()承継日                 PIC  X(7).
001510    03  ()最新入力消費税率       PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001520    03  ()処理年月度.
001530     05  ()処理年月度－世紀       PIC  X(1).
001540     05  ()処理年月度－年月       PIC  X(4).
001550    03  ()共通情報               PIC  X(35).
