000010************************************************
000020* 解約累積ファイル(基本)(CPFBUP01)
000030************************************************
000040    03  ()ＳＯＲＴＫＥＹ.
000050     05  ()ＫＥＹ－入力事業所ＣＤ PIC S9(4).
000060     05  ()ＫＥＹ－データ識別     PIC S9(2).
000070     05  ()ＫＥＹ－事業所ＣＤ     PIC S9(4).
000080     05  ()ＫＥＹ－レコード区分   PIC  X(1).
000090     05  ()ＫＥＹ－契約ＮＯ       PIC  X(9).
000100     05  ()ＫＥＹ－物件ＮＯ       PIC S9(3).
000110     05  ()ＫＥＹ－勘定処理ＣＤ   PIC S9(2).
000120     05  ()ＫＥＹ－ダミー         PIC  X(4).
000130     05  ()ＫＥＹ－再リースＣＤ   PIC S9(1).
000140    03  ()契約ＮＯ               PIC  X(9).
000150    03  ()担当者ＣＤ             PIC S9(4).
000160    03  ()事業所ＣＤ             PIC S9(4).
000170    03  ()ユーザＣＤ             PIC  X(8).
000180    03  ()再リースＣＤ           PIC S9(1).
000190    03  ()勘定処理ＣＤ           PIC S9(2).
000200    03  ()事故ＣＤ               PIC S9(1).
000210    03  ()契約日.
000220     05  ()契約日－世紀           PIC S9(1).
000230     05  ()契約日－年             PIC S9(2).
000240     05  ()契約日－月             PIC S9(2).
000250     05  ()契約日－日             PIC S9(2).
000260    03  ()検収日.
000270     05  ()検収日－世紀           PIC S9(1).
000280     05  ()検収日－年             PIC S9(2).
000290     05  ()検収日－月             PIC S9(2).
000300     05  ()検収日－日             PIC S9(2).
000310    03  ()リース期間             PIC S9(3).
000320    03  ()リース開始日.
000330     05  ()リース開始日－世紀     PIC S9(1).
000340     05  ()リース開始日－年       PIC S9(2).
000350     05  ()リース開始日－月       PIC S9(2).
000360     05  ()リース開始日－日       PIC S9(2).
000370    03  ()リース終了日.
000380     05  ()リース終了日－世紀     PIC S9(1).
000390     05  ()リース終了日－年       PIC S9(2).
000400     05  ()リース終了日－月       PIC S9(2).
000410     05  ()リース終了日－日       PIC S9(2).
000420    03  ()前受リース料入金日.
000430     05  ()前受リース料入金日－世紀 PIC S9(1).
000440     05  ()前受リース料入金日－年 PIC S9(2).
000450     05  ()前受リース料入金日－月 PIC S9(2).
000460     05  ()前受リース料入金日－日 PIC S9(2).
000470    03  ()案件発生区分           PIC  X(1).
000480    03  ()稟議区分               PIC  X(1).
000490    03  ()否認区分               PIC  X(1).
000500    03  ()消費税徴収区分         PIC S9(1).
000510    03  ()消費税率１             PIC S9(2)V9(1).
000520    03  ()基準金利               PIC S9(2)V9(8).
000530    03  ()利回り.
000540     05  ()利回り－基本           PIC S9(2)V9(8).
000550     05  ()利回り－実質           PIC S9(2)V9(8).
000560    03  ()単年度契約             PIC S9(2).
000570    03  ()付保日.
000580     05  ()付保日－世紀           PIC S9(1).
000590     05  ()付保日－年             PIC S9(2).
000600     05  ()付保日－月             PIC S9(2).
000610     05  ()付保日－日             PIC S9(2).
000620    03  ()請求情報.
000630     05  ()請求ＣＤ               PIC S9(2).
000640     05  ()請求先ＣＤ             PIC  X(8).
000650     05  ()請求区分１             PIC S9(1).
000660     05  ()請求区分２             PIC S9(1).
000670     05  ()請求サイクル           PIC S9(2).
000680     05  ()支払回数               PIC S9(3).
000690     05  ()発行済区分             PIC S9(3).
000700     05  ()据置期間               PIC S9(3).
000710     05  ()ＢＥＧＩＮ回数         PIC S9(1).
000720     05  ()計算方式               PIC S9(1).
000730    03  ()前受情報.
000740     05  ()充当月数               PIC S9(3).
000750     05  ()充当開始日.
000760      07  ()充当開始日－世紀       PIC S9(1).
000770      07  ()充当開始日－年         PIC S9(2).
000780      07  ()充当開始日－月         PIC S9(2).
000790     05  ()充当終了日.
000800      07  ()充当終了日－世紀       PIC S9(1).
000810      07  ()充当終了日－年         PIC S9(2).
000820      07  ()充当終了日－月         PIC S9(2).
000830     05  ()銀行ＣＤ               PIC  X(7).
000840     05  ()口座番号               PIC  X(7).
000850     05  ()預金種類               PIC  X(1).
000860    03  ()入金日                 PIC S9(2).
000870    03  ()第１回入金日.
000880     05  ()第１回入金日－世紀     PIC S9(1).
000890     05  ()第１回入金日－年       PIC S9(2).
000900     05  ()第１回入金日－月       PIC S9(2).
000910     05  ()第１回入金日－日       PIC S9(2).
000920    03  ()残価回収日.
000930     05  ()残価回収日－世紀       PIC S9(1).
000940     05  ()残価回収日－年         PIC S9(2).
000950     05  ()残価回収日－月         PIC S9(2).
000960     05  ()残価回収日－日         PIC S9(2).
000970    03  ()ファイナンス期間       PIC S9(3).
000980    03  ()ファイナンス終了日.
000990     05  ()ファイナンス終了日－世紀 PIC S9(1).
001000     05  ()ファイナンス終了日－年 PIC S9(2).
001010     05  ()ファイナンス終了日－月 PIC S9(2).
001020     05  ()ファイナンス終了日－日 PIC S9(2).
001030    03  ()前渡金利息額－解約分   PIC S9(13)  SIGN LEADING SEPARATE.
001040    03  ()諸費用解約分.
001050     05  ()諸費用解約分－月額.
001060      07  ()諸費用解約分－月額－固定資産税 PIC S9(13)  SIGN LEADING SEPARATE.
001070      07  ()諸費用解約分－月額－保険料 PIC S9(13)  SIGN LEADING SEPARATE.
001080      07  ()諸費用解約分－月額－保守料 PIC S9(13)  SIGN LEADING SEPARATE.
001090      07  ()諸費用解約分－月額－その他１ PIC S9(13)  SIGN LEADING SEPARATE.
001100      07  ()諸費用解約分－月額－その他２ PIC S9(13)  SIGN LEADING SEPARATE.
001110    03  ()保証残価合計解約分     PIC S9(13)  SIGN LEADING SEPARATE.
001120    03  ()購入金額合計解約分     PIC S9(13)  SIGN LEADING SEPARATE.
001130    03  ()前受リース料解約分     PIC S9(13)  SIGN LEADING SEPARATE.
001140    03  ()契約金額解約分         PIC S9(13)  SIGN LEADING SEPARATE.
001150    03  ()規定損害金入金Ｆ       PIC S9(1)  SIGN LEADING SEPARATE.
001160    03  ()転リース先ＣＤ         PIC  X(2).
001170    03  ()前受分内訳             PIC  X(1).
001180    03  ()最新入力消費税率更新前 PIC S9(2)V9(1).
001190    03  ()最新入力消費税率更新後 PIC S9(2)V9(1).
001200    03  FILLER           PIC  X(7).
001210    03  ()債権残高解約時         PIC S9(13)  SIGN LEADING SEPARATE.
001220    03  ()債権残高残存分         PIC S9(13)  SIGN LEADING SEPARATE.
001230    03  ()解約前情報.
001240     05  ()解約前情報－一部充当額 PIC S9(13)  SIGN LEADING SEPARATE.
001250     05  ()解約前情報－契約金額   PIC S9(13)  SIGN LEADING SEPARATE.
001260    03  ()実リース料解約前       PIC S9(13)  SIGN LEADING SEPARATE.
001270    03  ()実リース料解約分       PIC S9(13)  SIGN LEADING SEPARATE.
001280    03  ()購入金額合計解約前     PIC S9(13)  SIGN LEADING SEPARATE.
001290    03  FILLER           PIC  X(44).
001300    03  ()利息残高               PIC S9(13)  SIGN LEADING SEPARATE.
001310    03  ()仕訳情報基本.
001320     05  ()請求内訳ＣＤ           PIC  X(3).
001330     05  ()中途解約仕訳ＣＤ       PIC  X(3).
001340     05  ()ＳＦＣ判定区分         PIC  X(1).
001350     05  ()消費税ＣＤ更新前       PIC S9(2).
001360     05  ()消費税ＣＤ更新後       PIC S9(2).
001370     05  ()債務協調ＣＤ           PIC  X(2).
001380     05  ()経過回数               PIC S9(3).
001390     05  ()残存回数               PIC S9(3).
001400     05  ()前受残月数             PIC S9(3).
001410     05  ()規損金第３者支払先名カナ PIC  X(30).
001420     05  ()第３者払規損金金額     PIC S9(13)  SIGN LEADING SEPARATE.
001430     05  ()規損金売却代金充当額   PIC S9(13)  SIGN LEADING SEPARATE.
001440     05  ()規定損出金合計         PIC S9(13)  SIGN LEADING SEPARATE.
001450     05  ()諸費用合計             PIC S9(13)  SIGN LEADING SEPARATE.
001460     05  ()支払回数番号           PIC S9(4).
001470     05  ()利息－解約処理月       PIC S9(13)  SIGN LEADING SEPARATE.
001480     05  ()元本内入－解約処理月   PIC S9(13)  SIGN LEADING SEPARATE.
001490     05  ()元本残高－解約処理月   PIC S9(13)  SIGN LEADING SEPARATE.
001500     05  ()消費税額－解約処理月   PIC S9(13)  SIGN LEADING SEPARATE.
001510     05  ()諸費用－解約処理月     PIC S9(13)  SIGN LEADING SEPARATE.
001520     05  ()物件相殺区分           PIC  X(1).
001530     05  ()規損金回収方法         PIC  X(1).
001540     05  ()入金突合区分           PIC S9(1).
001550     05  ()仮受金消活回収口       PIC S9(13)  SIGN LEADING SEPARATE.
001560    03  FILLER           PIC  X(2).
001570    03  ()規定損出金ログＤ情報.
001580     05  ()規定損失金Ｄ１         PIC S9(13)  SIGN LEADING SEPARATE.
001590     05  ()規定損失金Ｄ２         PIC S9(13)  SIGN LEADING SEPARATE.
001600     05  ()規定損失金Ｄ３         PIC S9(13)  SIGN LEADING SEPARATE.
001610     05  ()規定損失金Ｄ４         PIC S9(13)  SIGN LEADING SEPARATE.
001620     05  ()規定損失金Ｄ５         PIC S9(13)  SIGN LEADING SEPARATE.
001630     05  ()規定損失金Ｄ６         PIC S9(13)  SIGN LEADING SEPARATE.
001640     05  ()規定損失金Ｄ７         PIC S9(13)  SIGN LEADING SEPARATE.
001650     05  ()規定損失金Ｄ８         PIC S9(13)  SIGN LEADING SEPARATE.
001660     05  ()規定損失金Ｄ９         PIC S9(13)  SIGN LEADING SEPARATE.
001670     05  ()規定損失金Ｄ１０       PIC S9(13)  SIGN LEADING SEPARATE.
001680    03  ()規定損出金ログＣ情報.
001690     05  ()規定損失金Ｃ１         PIC S9(13)  SIGN LEADING SEPARATE.
001700     05  ()規定損失金Ｃ２         PIC S9(13)  SIGN LEADING SEPARATE.
001710     05  ()規定損失金Ｃ３         PIC S9(13)  SIGN LEADING SEPARATE.
001720     05  ()規定損失金Ｃ４         PIC S9(13)  SIGN LEADING SEPARATE.
001730     05  ()規定損失金Ｃ５         PIC S9(13)  SIGN LEADING SEPARATE.
001740     05  ()規定損失金Ｃ６         PIC S9(13)  SIGN LEADING SEPARATE.
001750     05  ()規定損失金Ｃ７         PIC S9(13)  SIGN LEADING SEPARATE.
001760     05  ()規定損失金Ｃ８         PIC S9(13)  SIGN LEADING SEPARATE.
001770     05  ()規定損失金Ｃ９         PIC S9(13)  SIGN LEADING SEPARATE.
001780     05  ()規定損失金Ｃ１０       PIC S9(13)  SIGN LEADING SEPARATE.
001790    03  FILLER           PIC  X(30).
001800    03  ()売却代金ログＤ情報.
001810     05  ()売却代金Ｄ１           PIC S9(13)  SIGN LEADING SEPARATE.
001820     05  ()売却代金Ｄ２           PIC S9(13)  SIGN LEADING SEPARATE.
001830     05  ()売却代金Ｄ３           PIC S9(13)  SIGN LEADING SEPARATE.
001840     05  ()売却代金Ｄ４           PIC S9(13)  SIGN LEADING SEPARATE.
001850     05  ()売却代金Ｄ５           PIC S9(13)  SIGN LEADING SEPARATE.
001860    03  ()売却代金ログＣ情報.
001870     05  ()売却代金Ｃ１           PIC S9(13)  SIGN LEADING SEPARATE.
001880     05  ()売却代金Ｃ２           PIC S9(13)  SIGN LEADING SEPARATE.
001890     05  ()売却代金Ｃ３           PIC S9(13)  SIGN LEADING SEPARATE.
001900     05  ()売却代金Ｃ４           PIC S9(13)  SIGN LEADING SEPARATE.
001910     05  ()売却代金Ｃ５           PIC S9(13)  SIGN LEADING SEPARATE.
001920    03  FILLER           PIC  X(30).
