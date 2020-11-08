000010************************************************
000020* 債権ファイル(CISUF371)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()契約件名               PIC  X(80).
000080    03   ()請求件名               PIC  X(120).
000090    03   ()変則払                 PIC  X(1).
000100    03   ()当初月額料金           PIC S9(13)  SIGN LEADING SEPARATE.
000110    03   ()当初消費税区分         PIC  X(2).
000120    03   ()当初消費税額           PIC S9(13)  SIGN LEADING SEPARATE.
000130    03   ()当初契約総額           PIC S9(13)  SIGN LEADING SEPARATE.
000140    03   ()当初消費税総額         PIC S9(13)  SIGN LEADING SEPARATE.
000150    03   ()最新月額料金           PIC S9(13)  SIGN LEADING SEPARATE.
000160    03   ()最新消費税区分         PIC  X(2).
000170    03   ()最新消費税額           PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()最新契約総額           PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()最新消費税総額         PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()保守無償期間           PIC S9(3)  SIGN LEADING SEPARATE.
000210    03   ()状態フラグ             PIC  X(1).
000220    03   ()解約フラグ             PIC  X(1).
000230    03   ()解約年月日.
000240     05  ()年                     PIC  X(4).
000250     05  ()月                     PIC  X(2).
000260     05  ()日                     PIC  X(2).
000270    03   ()解約区分               PIC  X(1).
000280    03   ()解約理由               PIC  X(2).
000290    03   ()解約回数               PIC S9(2)  SIGN LEADING SEPARATE.
000300    03   ()最新履歴解約日.
000310     05  ()年                     PIC  X(4).
000320     05  ()月                     PIC  X(2).
000330     05  ()日                     PIC  X(2).
000340    03   ()回収額                 PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()消費税回収額           PIC S9(13)  SIGN LEADING SEPARATE.
000360    03   ()最新回収日.
000370     05  ()年                     PIC  X(4).
000380     05  ()月                     PIC  X(2).
000390     05  ()日                     PIC  X(2).
000400    03   ()管理債権レベル         PIC  X(1).
000410    03   ()割賦原価総額           PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()割賦利益総額           PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()取得価額               PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()遡及解約フラグ         PIC  X(1).
000450    03   ()解約処理年月.
000460     05  ()年                     PIC  X(4).
000470     05  ()月                     PIC  X(2).
000480    03   ()解約エントリ日.
000490     05  ()年                     PIC  X(4).
000500     05  ()月                     PIC  X(2).
000510     05  ()日                     PIC  X(2).
000520    03   ()満了フラグ             PIC  X(1).
000530    03   ()満了年月日.
000540     05  ()年                     PIC  X(4).
000550     05  ()月                     PIC  X(2).
000560     05  ()日                     PIC  X(2).
000570    03   ()解約申請フラグ         PIC  X(1).
000580    03   ()解約申請日.
000590     05  ()年                     PIC  X(4).
000600     05  ()月                     PIC  X(2).
000610     05  ()日                     PIC  X(2).
000620    03   ()回収条件変更フラグ     PIC  X(1).
000630    03   ()回収条件変更回数       PIC S9(2)  SIGN LEADING SEPARATE.
000640    03   ()回収条件変更日         PIC  X(8).
000650    03   ()前払区分               PIC  X(1).
000660    03   ()次回再リース料         PIC S9(13)  SIGN LEADING SEPARATE.
000670    03   ()再リース料金区分       PIC  X(1).
000680    03   ()保守有無フラグ         PIC  X(1).
000690    03   ()再リース自動作成フラグ PIC  X(1).
000700    03   ()再リース自動作成年月日.
000710     05  ()年                     PIC  X(4).
000720     05  ()月                     PIC  X(2).
000730     05  ()日                     PIC  X(2).
000740    03   ()更新年月日             PIC  X(8).
000750    03   ()更新時間               PIC  X(8).
000760    03   ()更新者                 PIC  X(8).
000770    03   ()当初取得額             PIC S9(13)  SIGN LEADING SEPARATE.
000780    03   ()取得額現価             PIC S9(13)  SIGN LEADING SEPARATE.
000790    03   ()前払月数               PIC S9(2)  SIGN LEADING SEPARATE.
000800    03   ()次回再リース料消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000810    03   ()次回再リース料消費税区分 PIC  X(2).
000820    03   ()請求回数               PIC S9(3)  SIGN LEADING SEPARATE.
000830    03   ()総回収回数             PIC S9(3)  SIGN LEADING SEPARATE.
000840    03   ()合算先契約種類         PIC  X(3).
000850    03   ()今回再リース料金区分   PIC  X(1).
000860    03   ()再リース手数料         PIC S9(13)  SIGN LEADING SEPARATE.
000870    03   ()自振請求ストップ申請年月日 PIC  X(8).
000880    03   ()自振請求ストップ申請部課 PIC  X(4).
000890    03   ()自振請求ストップ申請者 PIC  X(8).
000900    03   ()自振請求ストップ開始年月 PIC  X(6).
000910    03   ()自振請求ストップ終了年月 PIC  X(6).
000920    03   ()自振請求ストップ理由   PIC  X(2).
000930    03   ()自振ストップエントリ日 PIC  X(8).
000940    03   ()自振特別請求申請年月日 PIC  X(8).
000950    03   ()自振特別請求申請部課   PIC  X(4).
000960    03   ()自振特別請求申請者     PIC  X(8).
000970    03   ()自振特別請求開始年月   PIC  X(6).
000980    03   ()自振特別請求終了年月   PIC  X(6).
000990    03   ()自振特別請求申請金額   PIC S9(13)  SIGN LEADING SEPARATE.
001000    03   ()自振特別エントリ日     PIC  X(8).
001010    03   ()支払次回再リース料     PIC S9(13)  SIGN LEADING SEPARATE.
001020    03   ()委託保守区分           PIC  X(1).
001030    03   ()委託保守相当月額料金   PIC S9(13)  SIGN LEADING SEPARATE.
001040    03   ()入力担当者コード       PIC  X(8).
001050    03   ()その他契約種類区分     PIC  X(1).
001060    03   ()取引先コード           PIC  X(9).
001070    03   ()請求先コード           PIC  X(5).
001080    03   ()粗利益額               PIC S9(13)  SIGN LEADING SEPARATE.
001090    03   ()粗利益額－表           PIC S9(13)  SIGN LEADING SEPARATE.
001100    03   ()手形受取日             PIC  X(8).
001110    03   ()手形枚数               PIC S9(3)  SIGN LEADING SEPARATE.
001120    03   ()自社分月額料金         PIC S9(13)  SIGN LEADING SEPARATE.
001130    03   ()自社分月額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
001140    03   ()自社分契約総額         PIC S9(13)  SIGN LEADING SEPARATE.
001150    03   ()自社分消費税総額       PIC S9(13)  SIGN LEADING SEPARATE.
001160    03   ()他社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
001170    03   ()残価設定額             PIC S9(13)  SIGN LEADING SEPARATE.
001180    03   ()他社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
001190    03   ()他社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
001200    03   ()他社回収額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
001210    03   ()他社割賦原価総額       PIC S9(13)  SIGN LEADING SEPARATE.
001220    03   ()他社割賦利益総額       PIC S9(13)  SIGN LEADING SEPARATE.
001230    03   ()再リース手数料回収額   PIC S9(13)  SIGN LEADING SEPARATE.
001240    03   ()再リース手数料回収日   PIC  X(8).
001250    03   ()売却代手数料           PIC S9(13)  SIGN LEADING SEPARATE.
001260    03   ()再リース自社残価設定額 PIC S9(13)  SIGN LEADING SEPARATE.
001270    03   ()再リース他社残価設定額 PIC S9(13)  SIGN LEADING SEPARATE.
001280    03   ()当初割賦原価総額       PIC S9(13)  SIGN LEADING SEPARATE.
001290    03   ()当初割賦利益総額       PIC S9(13)  SIGN LEADING SEPARATE.
001300    03   ()当初割賦原価総額自社   PIC S9(13)  SIGN LEADING SEPARATE.
001310    03   ()当初割賦利益総額自社   PIC S9(13)  SIGN LEADING SEPARATE.
001320    03   ()当初諸費用総額         PIC S9(13)  SIGN LEADING SEPARATE.
001330    03   ()債務勘定処理コード     PIC  X(2).
001340    03   ()消費税長期－実績       PIC S9(13)  SIGN LEADING SEPARATE.
001350    03   ()勘定処理コード         PIC  X(2).
001360    03   ()債権買取区分           PIC  X(1).
001370    03   ()当初月額料金総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001380    03   ()当初消費税額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001390    03   ()最新月額料金総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001400    03   ()最新消費税額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001410    03   ()最新契約総額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001420    03   ()最新消費税総額総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001430    03   ()取得価額総額分         PIC S9(13)  SIGN LEADING SEPARATE.
001440    03   ()当初取得額総額分       PIC S9(13)  SIGN LEADING SEPARATE.
001450    03   ()次回再リース料総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001460    03   ()次回再リース料消費税総額分 PIC S9(13)  SIGN LEADING SEPARATE.
001470    03   ()残価回収サイト         PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
001480    03   ()リスケ前契約総額       PIC S9(13)  SIGN LEADING SEPARATE.
001490    03   ()消費税徴収区分         PIC  X(1).
001500    03   ()登録年月日             PIC  X(8).
001510    03   ()登録時間               PIC  X(8).
001520    03   ()登録担当者             PIC  X(8).
001530    03   ()自振請求金額変更理由   PIC  X(2).
001540    03   ()自社分次回再リース料   PIC S9(13)  SIGN LEADING SEPARATE.
001550    03   ()自社分次回再リース料消費税 PIC S9(13)  SIGN LEADING SEPARATE.
001560    03   ()設置場所区分           PIC S9(1)  SIGN LEADING SEPARATE.
001570    03   ()当初契約総額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001580    03   ()当初消費税総額総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001590    03   ()自社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
001600    03   ()自社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
001610    03   ()自社元本総額           PIC S9(13)  SIGN LEADING SEPARATE.
001620    03   ()自社売上利息総額       PIC S9(13)  SIGN LEADING SEPARATE.
001630    03   ()自社利息総額           PIC S9(13)  SIGN LEADING SEPARATE.
001640    03   ()自社諸費用総額         PIC S9(13)  SIGN LEADING SEPARATE.
001650    03   ()自社固定資産税総額     PIC S9(13)  SIGN LEADING SEPARATE.
001660    03   ()自社動総保険総額       PIC S9(13)  SIGN LEADING SEPARATE.
001670    03   ()自社委託保守料総額     PIC S9(13)  SIGN LEADING SEPARATE.
001680    03   ()自社その他諸費用総額   PIC S9(13)  SIGN LEADING SEPARATE.
001690    03   ()自社分支払費用適用合計 PIC S9(13)  SIGN LEADING SEPARATE.
001700    03   ()自社分支払費用一般合計 PIC S9(13)  SIGN LEADING SEPARATE.
001710    03   ()元本総額               PIC S9(13)  SIGN LEADING SEPARATE.
001720    03   ()利息総額               PIC S9(13)  SIGN LEADING SEPARATE.
001730    03   ()諸費用総額             PIC S9(13)  SIGN LEADING SEPARATE.
001740    03   ()債協コード             PIC  X(2).
001750    03   ()再リースコード         PIC S9(1)  SIGN LEADING SEPARATE.
001760    03   ()債権明細解約区分       PIC  X(1).
001770    03   ()元勘定処理コード       PIC S9(2)  SIGN LEADING SEPARATE.
001780    03   ()ＫＥＹ－解約日         PIC  X(7).
001790    03   ()余白                   PIC  X(14).
