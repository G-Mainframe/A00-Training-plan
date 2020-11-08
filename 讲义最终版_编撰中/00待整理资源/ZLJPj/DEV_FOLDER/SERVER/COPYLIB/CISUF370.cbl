000010************************************************
000020* 債権ファイル(CISUF370)
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
000230    03   ()解約年月日             PIC  X(8).
000240    03   ()解約区分               PIC  X(1).
000250    03   ()解約理由               PIC  X(2).
000260    03   ()解約回数               PIC S9(2)  SIGN LEADING SEPARATE.
000270    03   ()最新履歴解約日         PIC  X(8).
000280    03   ()回収額                 PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()消費税回収額           PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()最新回収日             PIC  X(8).
000310    03   ()管理債権レベル         PIC  X(1).
000320    03   ()割賦原価総額           PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()割賦利益総額           PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()取得価額               PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()遡及解約フラグ         PIC  X(1).
000360    03   ()解約処理年月           PIC  X(6).
000370    03   ()解約エントリ日         PIC  X(8).
000380    03   ()満了フラグ             PIC  X(1).
000390    03   ()満了年月日             PIC  X(8).
000400    03   ()解約申請フラグ         PIC  X(1).
000410    03   ()解約申請日             PIC  X(8).
000420    03   ()回収条件変更フラグ     PIC  X(1).
000430    03   ()回収条件変更回数       PIC S9(2)  SIGN LEADING SEPARATE.
000440    03   ()回収条件変更日         PIC  X(8).
000450    03   ()前払区分               PIC  X(1).
000460    03   ()次回再リース料         PIC S9(13)  SIGN LEADING SEPARATE.
000470    03   ()再リース料金区分       PIC  X(1).
000480    03   ()保守有無フラグ         PIC  X(1).
000490    03   ()再リース自動作成フラグ PIC  X(1).
000500    03   ()再リース自動作成年月日 PIC  X(8).
000510    03   ()更新年月日             PIC  X(8).
000520    03   ()更新時間               PIC  X(8).
000530    03   ()更新者                 PIC  X(8).
000540    03   ()当初取得額             PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()取得額現価             PIC S9(13)  SIGN LEADING SEPARATE.
000560    03   ()前払月数               PIC S9(2)  SIGN LEADING SEPARATE.
000570    03   ()次回再リース料消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000580    03   ()次回再リース料消費税区分 PIC  X(2).
000590    03   ()請求回数               PIC S9(3)  SIGN LEADING SEPARATE.
000600    03   ()総回収回数             PIC S9(3)  SIGN LEADING SEPARATE.
000610    03   ()合算先契約種類         PIC  X(3).
000620    03   ()今回再リース料金区分   PIC  X(1).
000630    03   ()再リース手数料         PIC S9(13)  SIGN LEADING SEPARATE.
000640    03   ()自振請求ストップ申請年月日 PIC  X(8).
000650    03   ()自振請求ストップ申請部課 PIC  X(4).
000660    03   ()自振請求ストップ申請者 PIC  X(8).
000670    03   ()自振請求ストップ開始年月 PIC  X(6).
000680    03   ()自振請求ストップ終了年月 PIC  X(6).
000690    03   ()自振請求ストップ理由   PIC  X(2).
000700    03   ()自振ストップエントリ日 PIC  X(8).
000710    03   ()自振特別請求申請年月日 PIC  X(8).
000720    03   ()自振特別請求申請部課   PIC  X(4).
000730    03   ()自振特別請求申請者     PIC  X(8).
000740    03   ()自振特別請求開始年月   PIC  X(6).
000750    03   ()自振特別請求終了年月   PIC  X(6).
000760    03   ()自振特別請求申請金額   PIC S9(13)  SIGN LEADING SEPARATE.
000770    03   ()自振特別エントリ日     PIC  X(8).
000780    03   ()支払次回再リース料     PIC S9(13)  SIGN LEADING SEPARATE.
000790    03   ()委託保守区分           PIC  X(1).
000800    03   ()委託保守相当月額料金   PIC S9(13)  SIGN LEADING SEPARATE.
000810    03   ()入力担当者コード       PIC  X(8).
000820    03   ()その他契約種類区分     PIC  X(1).
000830    03   ()取引先コード           PIC  X(9).
000840    03   ()請求先コード           PIC  X(5).
000850    03   ()粗利益額               PIC S9(13)  SIGN LEADING SEPARATE.
000860    03   ()粗利益額－表           PIC S9(13)  SIGN LEADING SEPARATE.
000870    03   ()手形受取日             PIC  X(8).
000880    03   ()手形枚数               PIC S9(3)  SIGN LEADING SEPARATE.
000890    03   ()自社分月額料金         PIC S9(13)  SIGN LEADING SEPARATE.
000900    03   ()自社分月額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000910    03   ()自社分契約総額         PIC S9(13)  SIGN LEADING SEPARATE.
000920    03   ()自社分消費税総額       PIC S9(13)  SIGN LEADING SEPARATE.
000930    03   ()他社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
000940    03   ()残価設定額             PIC S9(13)  SIGN LEADING SEPARATE.
000950    03   ()他社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
000960    03   ()他社回収額             PIC S9(13)  SIGN LEADING SEPARATE.
000970    03   ()他社回収額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000980    03   ()他社割賦原価総額       PIC S9(13)  SIGN LEADING SEPARATE.
000990    03   ()他社割賦利益総額       PIC S9(13)  SIGN LEADING SEPARATE.
001000    03   ()再リース手数料回収額   PIC S9(13)  SIGN LEADING SEPARATE.
001010    03   ()再リース手数料回収日   PIC  X(8).
001020    03   ()売却代手数料           PIC S9(13)  SIGN LEADING SEPARATE.
001030    03   ()再リース自社残価設定額 PIC S9(13)  SIGN LEADING SEPARATE.
001040    03   ()再リース他社残価設定額 PIC S9(13)  SIGN LEADING SEPARATE.
001050    03   ()当初割賦原価総額       PIC S9(13)  SIGN LEADING SEPARATE.
001060    03   ()当初割賦利益総額       PIC S9(13)  SIGN LEADING SEPARATE.
001070    03   ()当初割賦原価総額自社   PIC S9(13)  SIGN LEADING SEPARATE.
001080    03   ()当初割賦利益総額自社   PIC S9(13)  SIGN LEADING SEPARATE.
001090    03   ()当初諸費用総額         PIC S9(13)  SIGN LEADING SEPARATE.
001100    03   ()債務勘定処理コード     PIC  X(2).
001110    03   ()消費税長期－実績       PIC S9(13)  SIGN LEADING SEPARATE.
001120    03   ()勘定処理コード         PIC  X(2).
001130    03   ()債権買取区分           PIC  X(1).
001140    03   ()当初月額料金総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001150    03   ()当初消費税額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001160    03   ()最新月額料金総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001170    03   ()最新消費税額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001180    03   ()最新契約総額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001190    03   ()最新消費税総額総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001200    03   ()取得価額総額分         PIC S9(13)  SIGN LEADING SEPARATE.
001210    03   ()当初取得額総額分       PIC S9(13)  SIGN LEADING SEPARATE.
001220    03   ()次回再リース料総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001230    03   ()次回再リース料消費税総額分 PIC S9(13)  SIGN LEADING SEPARATE.
001240    03   ()残価回収サイト         PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
001250    03   ()リスケ前契約総額       PIC S9(13)  SIGN LEADING SEPARATE.
001260    03   ()消費税徴収区分         PIC  X(1).
001270    03   ()登録年月日             PIC  X(8).
001280    03   ()登録時間               PIC  X(8).
001290    03   ()登録担当者             PIC  X(8).
001300    03   ()自振請求金額変更理由   PIC  X(2).
001310    03   ()自社分次回再リース料   PIC S9(13)  SIGN LEADING SEPARATE.
001320    03   ()自社分次回再リース料消費税 PIC S9(13)  SIGN LEADING SEPARATE.
001330    03   ()設置場所区分           PIC S9(1)  SIGN LEADING SEPARATE.
001340    03   ()当初契約総額総額分     PIC S9(13)  SIGN LEADING SEPARATE.
001350    03   ()当初消費税総額総額分   PIC S9(13)  SIGN LEADING SEPARATE.
001360    03   ()自社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
001370    03   ()自社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
001380    03   ()自社元本総額           PIC S9(13)  SIGN LEADING SEPARATE.
001390    03   ()自社売上利息総額       PIC S9(13)  SIGN LEADING SEPARATE.
001400    03   ()自社利息総額           PIC S9(13)  SIGN LEADING SEPARATE.
001410    03   ()自社諸費用総額         PIC S9(13)  SIGN LEADING SEPARATE.
001420    03   ()自社固定資産税総額     PIC S9(13)  SIGN LEADING SEPARATE.
001430    03   ()自社動総保険総額       PIC S9(13)  SIGN LEADING SEPARATE.
001440    03   ()自社委託保守料総額     PIC S9(13)  SIGN LEADING SEPARATE.
001450    03   ()自社その他諸費用総額   PIC S9(13)  SIGN LEADING SEPARATE.
001460    03   ()自社分支払費用適用合計 PIC S9(13)  SIGN LEADING SEPARATE.
001470    03   ()自社分支払費用一般合計 PIC S9(13)  SIGN LEADING SEPARATE.
001480    03   ()元本総額               PIC S9(13)  SIGN LEADING SEPARATE.
001490    03   ()利息総額               PIC S9(13)  SIGN LEADING SEPARATE.
001500    03   ()諸費用総額             PIC S9(13)  SIGN LEADING SEPARATE.
