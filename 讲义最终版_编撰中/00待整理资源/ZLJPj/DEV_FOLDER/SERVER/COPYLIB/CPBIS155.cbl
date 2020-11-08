000010************************************************
000020* 解約履歴債権ファイル（明細）(CPBIS155)
000030************************************************
000040    03  ()ＫＥＹ.
000050     05  ()ＫＥＹ－契約番号       PIC  X(9).
000060     05  ()ＫＥＹ－物件番号       PIC S9(3).
000070     05  ()ＫＥＹ－解約区分       PIC  X(1).
000080     05  ()ＫＥＹ－解約日.
000090      07  ()ＫＥＹ－解約日－世紀   PIC S9(1).
000100      07  ()ＫＥＹ－解約日－年月日 PIC  X(6).
000110     05  ()ＫＥＹ－請求コード     PIC S9(2).
000120     05  ()ＫＥＹ－再リースコード PIC S9(1).
000130     05  ()ＫＥＹ－レコード区分   PIC  X(2).
000140    03  ()ＫＥＹ１.
000150     05  ()契約番号               PIC  X(9).
000160    03  ()キー.
000170     05  ()再リースコード         PIC S9(1).
000180     05  ()物件ＮＯ               PIC S9(3).
000190     05  ()請求コード             PIC S9(2).
000200     05  ()勘定処理コード         PIC S9(2).
000210     05  ()解約区分               PIC  X(1).
000220    03  ()解約日.
000230     05  ()解約日－世紀           PIC S9(1).
000240     05  ()解約日－年月日         PIC  X(6).
000250    03  ()解約対象コード         PIC  X(1).
000260    03  ()解約処理コード         PIC  X(1).
000270    03  ()契約日.
000280     05  ()契約日－世紀           PIC S9(1).
000290     05  ()契約日－年月日         PIC  X(6).
000300    03  ()検収日.
000310     05  ()検収日－世紀           PIC S9(1).
000320     05  ()検収日－年月日         PIC  X(6).
000330    03  ()リース開始日.
000340     05  ()リース開始日－世紀     PIC S9(1).
000350     05  ()リース開始日－年月日   PIC  X(6).
000360    03  ()リース終了日.
000370     05  ()リース終了日－世紀     PIC S9(1).
000380     05  ()リース終了日－年月日   PIC  X(6).
000390     05  ()リース期間             PIC S9(3)  SIGN LEADING SEPARATE.
000400    03  ()請求情報.
000410     05  ()請求先コード           PIC  X(8).
000420     05  ()支払回数               PIC S9(3)  SIGN LEADING SEPARATE.
000430     05  ()計算方式               PIC  X(1).
000440     05  ()請求サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000450     05  ()据置期間               PIC S9(3)  SIGN LEADING SEPARATE.
000460     05  ()ＢＥＧＩＮ回数         PIC S9(1)  SIGN LEADING SEPARATE.
000470     05  ()第１回リース料入金日.
000480      07  ()第１回リース料入金日－世紀 PIC S9(1).
000490      07  ()第１回リース料入金日－年月日 PIC  X(6).
000500     05  ()前受情報.
000510      07  ()前受リース料入金日.
000520       09  ()前受リース料入金日－世紀 PIC S9(1).
000530       09  ()前受リース料入金日－年月日 PIC  X(6).
000540      07  ()前受リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000550      07  ()前受充当開始日.
000560       09  ()前受充当開始日－世紀   PIC S9(1).
000570       09  ()前受充当開始日－年月   PIC  X(4).
000580      07  ()前受充当終了日.
000590       09  ()前受充当終了日－世紀   PIC S9(1).
000600       09  ()前受充当終了日－年月   PIC  X(4).
000610      07  ()前受充当月数           PIC S9(3)  SIGN LEADING SEPARATE.
000620      07  ()一部充当額             PIC S9(13)  SIGN LEADING SEPARATE.
000630     05  ()振込入金銀行情報.
000640      07  ()銀行コード             PIC  X(7).
000650      07  ()口座番号               PIC  X(7).
000660      07  ()預金種類               PIC  X(1).
000670     05  ()入金日                 PIC S9(2)  SIGN LEADING SEPARATE.
000680     05  ()請求書発行済回数       PIC S9(3)  SIGN LEADING SEPARATE.
000690     05  FILLER           PIC  X(14).
000700    03  ()担保情報.
000710     05  ()担保銀行コード         PIC  X(7).
000720     05  ()担保差入日.
000730      07  ()担保差入日－世紀       PIC S9(1).
000740      07  ()担保差入日－年月日     PIC  X(6).
000750     05  ()担保処理月度.
000760      07  ()担保処理月度－世紀     PIC S9(1).
000770      07  ()担保処理月度－年月     PIC  X(4).
000780    03  FILLER           PIC  X(2).
000790    03  ()その他契約条件.
000800     05  ()単年度契約             PIC  X(2).
000810     05  ()債協コード             PIC  X(2).
000820     05  ()支払繰延月数           PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
000830     05  ()初期費用               PIC S9(13)  SIGN LEADING SEPARATE.
000840     05  ()前渡金利息額           PIC S9(13)  SIGN LEADING SEPARATE.
000850     05  ()基準金利               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000860     05  ()利回り.
000870      07  ()基本利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000880      07  ()実質利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000890     05  ()消費税.
000900      07  ()徴収区分               PIC S9(1).
000910      07  ()税率                   PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
000920     05  ()消費税コード           PIC S9(2).
000930    03  ()ファイナンス.
000940     05  ()開始日.
000950      07  ()開始日－世紀           PIC S9(1).
000960      07  ()開始日－年月           PIC  X(4).
000970     05  ()終了日.
000980      07  ()終了日－世紀           PIC S9(1).
000990      07  ()終了日－年月           PIC  X(4).
001000     05  ()期間                   PIC S9(3)  SIGN LEADING SEPARATE.
001010    03  ()粗利                   PIC S9(13)  SIGN LEADING SEPARATE.
001020    03  ()契約金額.
001030     05  ()契約金額基本           PIC S9(13)  SIGN LEADING SEPARATE.
001040     05  ()契約金額実質           PIC S9(13)  SIGN LEADING SEPARATE.
001050    03  ()利息合計.
001060     05  ()利息合計基本           PIC S9(13)  SIGN LEADING SEPARATE.
001070     05  ()利息合計実質           PIC S9(13)  SIGN LEADING SEPARATE.
001080    03  ()諸経費.
001090     05  ()月額.
001100      07  ()固定資産税             PIC S9(13)  SIGN LEADING SEPARATE.
001110      07  ()保険料                 PIC S9(13)  SIGN LEADING SEPARATE.
001120      07  ()保守料                 PIC S9(13)  SIGN LEADING SEPARATE.
001130      07  ()その他１               PIC S9(13)  SIGN LEADING SEPARATE.
001140      07  ()その他２               PIC S9(13)  SIGN LEADING SEPARATE.
001150     05  ()諸経費合計             PIC S9(13)  SIGN LEADING SEPARATE.
001160    03  ()購入金額合計           PIC S9(13)  SIGN LEADING SEPARATE.
001170    03  FILLER           PIC  X(7).
001180    03  ()残価情報.
001190     05  ()残価保証区分           PIC S9(1).
001200     05  ()残価回収日.
001210      07  ()残価回収日－世紀       PIC S9(1).
001220      07  ()残価回収日－年月日     PIC  X(6).
001230     05  ()残価額合計             PIC S9(11)  SIGN LEADING SEPARATE.
001240    03  ()物件枝番数             PIC S9(3)  SIGN LEADING SEPARATE.
001250    03  ()債権残高前月末         PIC S9(13)  SIGN LEADING SEPARATE.
001260    03  ()初回請求情報の時の１回分.
001270     05  ()初回年月.
001280      07  ()初回年月－世紀         PIC S9(1).
001290      07  ()初回年月－年月         PIC  X(4).
001300     05  ()支払回数番号           PIC S9(4)  SIGN LEADING SEPARATE.
001310     05  ()実リース料.
001320      07  ()実リース料－基本       PIC S9(13)  SIGN LEADING SEPARATE.
001330      07  ()実リース料－実質       PIC S9(13)  SIGN LEADING SEPARATE.
001340     05  ()ＮＥＴ－リース料.
001350      07  ()ＮＥＴ－リース料－基本 PIC S9(13)  SIGN LEADING SEPARATE.
001360      07  ()ＮＥＴ－リース料－実質 PIC S9(13)  SIGN LEADING SEPARATE.
001370     05  ()利息.
001380      07  ()利息－基本             PIC S9(13)  SIGN LEADING SEPARATE.
001390      07  ()利息－実質             PIC S9(13)  SIGN LEADING SEPARATE.
001400     05  ()元本内入               PIC S9(13)  SIGN LEADING SEPARATE.
001410     05  ()元本残高               PIC S9(13)  SIGN LEADING SEPARATE.
001420     05  ()債権残高.
001430      07  ()債権残高－基本         PIC S9(13)  SIGN LEADING SEPARATE.
001440      07  ()債権残高－実質         PIC S9(13)  SIGN LEADING SEPARATE.
001450     05  ()消費税.
001460      07  ()消費税額               PIC S9(11)  SIGN LEADING SEPARATE.
001470      07  ()消費税－回収方式コード PIC S9(1).
001480     05  ()諸費用                 PIC S9(13)  SIGN LEADING SEPARATE.
001490     05  ()消費税率               PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001500     05  FILLER           PIC  X(4).
001510     05  ()回収方式コード         PIC S9(1).
001520     05  ()回収済表示             PIC S9(1).
001530     05  ()前受充当表示           PIC S9(1).
001540     05  ()残価回収表示           PIC S9(1).
001550    03  ()手数料請求名称カナ     PIC  X(30).
001560    03  ()充当－相殺区分         PIC  X(1).
001570    03  FILLER           PIC  X(28).
001580    03  ()承継日                 PIC  X(7).
001590    03  ()最新入力消費税率       PIC S9(2)V9(1)  SIGN LEADING SEPARATE.
001600    03  ()処理年月度.
001610     05  ()処理年月度－世紀       PIC  X(1).
001620     05  ()処理年月度－年月       PIC  X(4).
001630    03  ()共通情報               PIC  X(35).
