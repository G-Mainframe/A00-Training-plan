000010************************************************
000020* 日次債権情報ファイル(CISUF980)
000030************************************************
000040    03   ()レコード区分           PIC  X(1).
000050    03   ()契約番号               PIC  X(10).
000060    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000070    03   ()契約種類               PIC  X(3).
000080    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
000090    03   ()月次年月               PIC  X(6).
000100    03   ()期首年月               PIC  X(6).
000110    03   ()期末年月               PIC  X(6).
000120    03   ()当日年月日             PIC  X(8).
000130    03   ()債権残高区分           PIC  X(2).
000140    03   ()オープンブラインド区分 PIC  X(1).
000150    03   ()契約区分               PIC  X(1).
000160    03   ()主契約区分             PIC  X(1).
000170    03   ()契約先コード           PIC  X(5).
000180    03   ()勘定処理コード         PIC  X(2).
000190    03   ()担当部課コード         PIC  X(4).
000200    03   ()担当者コード           PIC  X(8).
000210    03   ()グループコード         PIC  X(9).
000220    03   ()請求先コード           PIC  X(5).
000230    03   ()支払先コード           PIC  X(5).
000240    03   ()請求先取引先コード     PIC  X(9).
000250    03   ()契約先取引先コード     PIC  X(9).
000260    03   ()支払取引先コード       PIC  X(9).
000270    03   ()状態フラグ             PIC  X(1).
000280    03   ()債務協調区分           PIC  X(2).
000290    03   ()前払区分               PIC  X(1).
000300    03   ()前払充当区分           PIC  X(1).
000310    03   ()解約フラグ             PIC  X(1).
000320    03   ()担保区分               PIC  X(1).
000330    03   ()債権流動化区分         PIC  X(1).
000340    03   ()請求書作成区分         PIC  X(1).
000350    03   ()消費税区分             PIC  X(2).
000360    03   ()消費税徴収区分         PIC  X(1).
000370    03   ()請求回                 PIC S9(3)  SIGN LEADING SEPARATE.
000380    03   ()当月分請求回           PIC S9(3)  SIGN LEADING SEPARATE.
000390    03   ()総回収回数             PIC S9(3)  SIGN LEADING SEPARATE.
000400    03   ()成約日                 PIC  X(8).
000410    03   ()成約年月               PIC  X(6).
000420    03   ()成約取消年月           PIC  X(6).
000430    03   ()成約取消エントリ日     PIC  X(8).
000440    03   ()検収処理年月           PIC  X(6).
000450    03   ()検収エントリ日         PIC  X(8).
000460    03   ()検収取消日             PIC  X(8).
000470    03   ()検収取消エントリ日     PIC  X(8).
000480    03   ()検収取消処理年月       PIC  X(6).
000490    03   ()再リース処理年月       PIC  X(6).
000500    03   ()再リース取消エントリ日 PIC  X(8).
000510    03   ()解約年月日             PIC  X(8).
000520    03   ()契約日                 PIC  X(8).
000530    03   ()契約開始日             PIC  X(8).
000540    03   ()契約終了日             PIC  X(8).
000550    03   ()引渡年月日             PIC  X(8).
000560    03   ()前受リース料入金日     PIC  X(8).
000570    03   ()入金日                 PIC  X(8).
000580    03   ()期間                   PIC S9(3)  SIGN LEADING SEPARATE.
000590    03   ()流動化先               PIC  X(7).
000600    03   ()否認区分               PIC  X(1).
000610    03   ()据置期間               PIC S9(2)  SIGN LEADING SEPARATE.
000620    03   ()消費税率               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000630    03   ()金利                   PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000640    03   ()前受充当開始年月       PIC  X(6).
000650    03   ()前受充当開始年月日     PIC  X(8).
000660    03   ()前受充当月数           PIC S9(2)  SIGN LEADING SEPARATE.
000670    03   ()前受充当年月日         PIC  X(8).
000680    03   ()前受充当済月数         PIC S9(2)  SIGN LEADING SEPARATE.
000690    03   ()初回回収予定日         PIC  X(8).
000700    03   ()最終回収予定日         PIC  X(8).
000710    03   ()取得価額               PIC S9(13)  SIGN LEADING SEPARATE.
000720    03   ()契約金額               PIC S9(13)  SIGN LEADING SEPARATE.
000730    03   ()契約金額自社分         PIC S9(13)  SIGN LEADING SEPARATE.
000740    03   ()契約金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000750    03   ()契約金額消費税自社分   PIC S9(13)  SIGN LEADING SEPARATE.
000760    03   ()前払総額               PIC S9(13)  SIGN LEADING SEPARATE.
000770    03   ()前払金額自社分         PIC S9(13)  SIGN LEADING SEPARATE.
000780    03   ()前払総額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000790    03   ()前払金額消費税自社分   PIC S9(13)  SIGN LEADING SEPARATE.
000800    03   ()元本総額               PIC S9(13)  SIGN LEADING SEPARATE.
000810    03   ()元本総額自社分         PIC S9(13)  SIGN LEADING SEPARATE.
000820    03   ()利息総額               PIC S9(13)  SIGN LEADING SEPARATE.
000830    03   ()利息総額自社分         PIC S9(13)  SIGN LEADING SEPARATE.
000840    03   ()諸費用総額             PIC S9(13)  SIGN LEADING SEPARATE.
000850    03   ()諸費用総額自社分       PIC S9(13)  SIGN LEADING SEPARATE.
000860    03   ()固定資産税総額         PIC S9(13)  SIGN LEADING SEPARATE.
000870    03   ()動総保険料総額         PIC S9(13)  SIGN LEADING SEPARATE.
000880    03   ()支払利息適用総額       PIC S9(13)  SIGN LEADING SEPARATE.
000890    03   ()支払利息一般総額       PIC S9(13)  SIGN LEADING SEPARATE.
000900    03   ()委託保守料総額         PIC S9(13)  SIGN LEADING SEPARATE.
000910    03   ()契約済未検収金額       PIC S9(13)  SIGN LEADING SEPARATE.
000920    03   ()契約済未検収消費税金額 PIC S9(13)  SIGN LEADING SEPARATE.
000930    03   ()決裁済未成約金額       PIC S9(13)  SIGN LEADING SEPARATE.
000940    03   ()決裁済未成約消費税金額 PIC S9(13)  SIGN LEADING SEPARATE.
000950    03   ()残価区分               PIC  X(1).
000960    03   ()残価設定額             PIC S9(13)  SIGN LEADING SEPARATE.
000970    03   ()自社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
000980    03   ()税込残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
000990    03   ()税込残価設定額自社     PIC S9(13)  SIGN LEADING SEPARATE.
001000    03   ()信用保険料残高金額     PIC S9(13)  SIGN LEADING SEPARATE.
001010    03   ()信用保険料残高消費税金額 PIC S9(13)  SIGN LEADING SEPARATE.
001020    03   ()前日末債権残高         PIC S9(13)  SIGN LEADING SEPARATE.
001030    03   ()前日末債権残高自社分   PIC S9(13)  SIGN LEADING SEPARATE.
001040    03   ()前日末消費税債権残高   PIC S9(13)  SIGN LEADING SEPARATE.
001050    03   ()前日末消費税債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001060    03   ()前日末約定債権残高     PIC S9(13)  SIGN LEADING SEPARATE.
001070    03   ()前日末約定債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001080    03   ()前日末約定消費税債権残高 PIC S9(13)  SIGN LEADING SEPARATE.
001090    03   ()前日末約定消費税債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001100    03   ()前日末前受金残高       PIC S9(13)  SIGN LEADING SEPARATE.
001110    03   ()前日末前受金残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001120    03   ()前日末前受金消費税残高 PIC S9(13)  SIGN LEADING SEPARATE.
001130    03   ()前日末前受金消費税残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001140    03   ()前日末約定元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
001150    03   ()前日末約定利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
001160    03   ()前日末実質利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
001170    03   ()前日末実質元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
001180    03   ()前日末売上残高         PIC S9(13)  SIGN LEADING SEPARATE.
001190    03   ()前日末売上残高消費税   PIC S9(13)  SIGN LEADING SEPARATE.
001200    03   ()前日末諸費用残高       PIC S9(13)  SIGN LEADING SEPARATE.
001210    03   ()前日末諸費用残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001220    03   ()前日末割賦原価残高     PIC S9(13)  SIGN LEADING SEPARATE.
001230    03   ()前日末割賦原価残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001240    03   ()前日末割賦原価未実現利益 PIC S9(13)  SIGN LEADING SEPARATE.
001250    03   ()前日末割賦原価未実現利益自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001260    03   ()前日末固定資産税残高   PIC S9(13)  SIGN LEADING SEPARATE.
001270    03   ()前日末動総保険料残高   PIC S9(13)  SIGN LEADING SEPARATE.
001280    03   ()前日末支払利息適用残高 PIC S9(13)  SIGN LEADING SEPARATE.
001290    03   ()前日末支払利息一般残高 PIC S9(13)  SIGN LEADING SEPARATE.
001300    03   ()前日末委託保守料残高   PIC S9(13)  SIGN LEADING SEPARATE.
001310    03   ()前日末売上元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
001320    03   ()前日末売上利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
001330    03   ()前日迄回収額           PIC S9(13)  SIGN LEADING SEPARATE.
001340    03   ()前日迄回収額自社分     PIC S9(13)  SIGN LEADING SEPARATE.
001350    03   ()前日迄消費税回収額     PIC S9(13)  SIGN LEADING SEPARATE.
001360    03   ()前日迄消費税回収額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001370    03   ()前日迄回収予定額       PIC S9(13)  SIGN LEADING SEPARATE.
001380    03   ()前日迄回収予定額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001390    03   ()前日迄回収予定額消費税 PIC S9(13)  SIGN LEADING SEPARATE.
001400    03   ()前日迄回収予定額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001410    03   ()前日迄前受回収額       PIC S9(13)  SIGN LEADING SEPARATE.
001420    03   ()前日迄前受回収額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001430    03   ()前日迄前受回収額消費税 PIC S9(13)  SIGN LEADING SEPARATE.
001440    03   ()前日迄前受回収額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001450    03   ()前日迄未徴収金         PIC S9(13)  SIGN LEADING SEPARATE.
001460    03   ()前日迄未徴収金自社分   PIC S9(13)  SIGN LEADING SEPARATE.
001470    03   ()前日迄未徴収金消費税   PIC S9(13)  SIGN LEADING SEPARATE.
001480    03   ()前日迄未徴収金消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001490    03   ()前日迄約定元本         PIC S9(13)  SIGN LEADING SEPARATE.
001500    03   ()前日迄約定利息         PIC S9(13)  SIGN LEADING SEPARATE.
001510    03   ()前日迄実質元本         PIC S9(13)  SIGN LEADING SEPARATE.
001520    03   ()前日迄実質利息         PIC S9(13)  SIGN LEADING SEPARATE.
001530    03   ()前日迄未徴収元本       PIC S9(13)  SIGN LEADING SEPARATE.
001540    03   ()前日迄未徴収利息       PIC S9(13)  SIGN LEADING SEPARATE.
001550    03   ()前日迄売上額           PIC S9(13)  SIGN LEADING SEPARATE.
001560    03   ()前日迄売上額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
001570    03   ()前日迄諸費用           PIC S9(13)  SIGN LEADING SEPARATE.
001580    03   ()前日迄諸費用自社分     PIC S9(13)  SIGN LEADING SEPARATE.
001590    03   ()前日迄金融元本         PIC S9(13)  SIGN LEADING SEPARATE.
001600    03   ()前日迄金融元本自社分   PIC S9(13)  SIGN LEADING SEPARATE.
001610    03   ()前日迄金融利息         PIC S9(13)  SIGN LEADING SEPARATE.
001620    03   ()前日迄金融利息自社分   PIC S9(13)  SIGN LEADING SEPARATE.
001630    03   ()前日迄固定資産税       PIC S9(13)  SIGN LEADING SEPARATE.
001640    03   ()前日迄動総保険料       PIC S9(13)  SIGN LEADING SEPARATE.
001650    03   ()前日迄支払利息適用     PIC S9(13)  SIGN LEADING SEPARATE.
001660    03   ()前日迄支払利息一般     PIC S9(13)  SIGN LEADING SEPARATE.
001670    03   ()前日迄委託保守料       PIC S9(13)  SIGN LEADING SEPARATE.
001680    03   ()前日迄売上元本         PIC S9(13)  SIGN LEADING SEPARATE.
001690    03   ()前日迄売上利息         PIC S9(13)  SIGN LEADING SEPARATE.
001700    03   ()前日迄社内金利利息適用 PIC S9(13)  SIGN LEADING SEPARATE.
001710    03   ()前日迄社内金利利息一般 PIC S9(13)  SIGN LEADING SEPARATE.
001720    03   ()当日末債権残高         PIC S9(13)  SIGN LEADING SEPARATE.
001730    03   ()当日末債権残高自社分   PIC S9(13)  SIGN LEADING SEPARATE.
001740    03   ()当日末消費税債権残高   PIC S9(13)  SIGN LEADING SEPARATE.
001750    03   ()当日末消費税債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001760    03   ()当日末約定債権残高     PIC S9(13)  SIGN LEADING SEPARATE.
001770    03   ()当日末約定債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001780    03   ()当日末約定消費税債権残高 PIC S9(13)  SIGN LEADING SEPARATE.
001790    03   ()当日末約定消費税債権残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001800    03   ()当日末前受金残高       PIC S9(13)  SIGN LEADING SEPARATE.
001810    03   ()当日末前受金残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001820    03   ()当日末前受金消費税残高 PIC S9(13)  SIGN LEADING SEPARATE.
001830    03   ()当日末前受金消費税残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001840    03   ()当日末約定元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
001850    03   ()当日末約定利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
001860    03   ()当日末実質元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
001870    03   ()当日末実質利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
001880    03   ()当日末売上残高         PIC S9(13)  SIGN LEADING SEPARATE.
001890    03   ()当日末売上残高消費税   PIC S9(13)  SIGN LEADING SEPARATE.
001900    03   ()当日末諸費用残高       PIC S9(13)  SIGN LEADING SEPARATE.
001910    03   ()当日末諸費用残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001920    03   ()当日末割賦原価残高     PIC S9(13)  SIGN LEADING SEPARATE.
001930    03   ()当日末割賦原価残高自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001940    03   ()当日末割賦原価未実現利益 PIC S9(13)  SIGN LEADING SEPARATE.
001950    03   ()当日末割賦原価未実現利益自社分 PIC S9(13)  SIGN LEADING SEPARATE.
001960    03   ()当日末固定資産税残高   PIC S9(13)  SIGN LEADING SEPARATE.
001970    03   ()当日末動総保険料残高   PIC S9(13)  SIGN LEADING SEPARATE.
001980    03   ()当日末支払利息適用残高 PIC S9(13)  SIGN LEADING SEPARATE.
001990    03   ()当日末支払利息一般残高 PIC S9(13)  SIGN LEADING SEPARATE.
002000    03   ()当日末委託保守料残高   PIC S9(13)  SIGN LEADING SEPARATE.
002010    03   ()当日末売上元本残高     PIC S9(13)  SIGN LEADING SEPARATE.
002020    03   ()当日末売上利息残高     PIC S9(13)  SIGN LEADING SEPARATE.
002030    03   ()当日末前受収益         PIC S9(13)  SIGN LEADING SEPARATE.
002040    03   ()当日末未収収益         PIC S9(13)  SIGN LEADING SEPARATE.
002050    03   ()当日迄回収額           PIC S9(13)  SIGN LEADING SEPARATE.
002060    03   ()当日迄回収額自社分     PIC S9(13)  SIGN LEADING SEPARATE.
002070    03   ()当日迄消費税回収額     PIC S9(13)  SIGN LEADING SEPARATE.
002080    03   ()当日迄消費税回収額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002090    03   ()当日迄回収予定額       PIC S9(13)  SIGN LEADING SEPARATE.
002100    03   ()当日迄回収予定額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002110    03   ()当日迄回収予定額消費税 PIC S9(13)  SIGN LEADING SEPARATE.
002120    03   ()当日迄回収予定額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002130    03   ()当日迄前受回収額       PIC S9(13)  SIGN LEADING SEPARATE.
002140    03   ()当日迄前受回収額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002150    03   ()当日迄前受回収額消費税 PIC S9(13)  SIGN LEADING SEPARATE.
002160    03   ()当日迄前受回収額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002170    03   ()当日迄未徴収金         PIC S9(13)  SIGN LEADING SEPARATE.
002180    03   ()当日迄未徴収金自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002190    03   ()当日迄未徴収金消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002200    03   ()当日迄未徴収金消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002210    03   ()当日迄約定元本         PIC S9(13)  SIGN LEADING SEPARATE.
002220    03   ()当日迄約定利息         PIC S9(13)  SIGN LEADING SEPARATE.
002230    03   ()当日迄実質元本         PIC S9(13)  SIGN LEADING SEPARATE.
002240    03   ()当日迄実質利息         PIC S9(13)  SIGN LEADING SEPARATE.
002250    03   ()当日迄未徴収元本       PIC S9(13)  SIGN LEADING SEPARATE.
002260    03   ()当日迄未徴収利息       PIC S9(13)  SIGN LEADING SEPARATE.
002270    03   ()当日迄売上額           PIC S9(13)  SIGN LEADING SEPARATE.
002280    03   ()当日迄売上額消費税     PIC S9(13)  SIGN LEADING SEPARATE.
002290    03   ()当日迄諸費用           PIC S9(13)  SIGN LEADING SEPARATE.
002300    03   ()当日迄諸費用自社分     PIC S9(13)  SIGN LEADING SEPARATE.
002310    03   ()当日迄金融元本         PIC S9(13)  SIGN LEADING SEPARATE.
002320    03   ()当日迄金融元本自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002330    03   ()当日迄金融利息         PIC S9(13)  SIGN LEADING SEPARATE.
002340    03   ()当日迄金融利息自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002350    03   ()当日迄固定資産税       PIC S9(13)  SIGN LEADING SEPARATE.
002360    03   ()当日迄動総保険料       PIC S9(13)  SIGN LEADING SEPARATE.
002370    03   ()当日迄支払利息適用     PIC S9(13)  SIGN LEADING SEPARATE.
002380    03   ()当日迄支払利息一般     PIC S9(13)  SIGN LEADING SEPARATE.
002390    03   ()当日迄委託保守料       PIC S9(13)  SIGN LEADING SEPARATE.
002400    03   ()当日迄売上元本         PIC S9(13)  SIGN LEADING SEPARATE.
002410    03   ()当日迄売上利息         PIC S9(13)  SIGN LEADING SEPARATE.
002420    03   ()当日迄社内金利利息適用 PIC S9(13)  SIGN LEADING SEPARATE.
002430    03   ()当日迄社内金利利息一般 PIC S9(13)  SIGN LEADING SEPARATE.
002440    03   ()当日回収実績額         PIC S9(13)  SIGN LEADING SEPARATE.
002450    03   ()当日回収実績額自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002460    03   ()当日回収実績額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002470    03   ()当日回収実績額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002480    03   ()当日回収予定額         PIC S9(13)  SIGN LEADING SEPARATE.
002490    03   ()当日回収予定額自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002500    03   ()当日回収予定額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002510    03   ()当日回収予定額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002520    03   ()当日前受回収額         PIC S9(13)  SIGN LEADING SEPARATE.
002530    03   ()当日前受回収額自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002540    03   ()当日前受回収額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002550    03   ()当日前受回収額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002560    03   ()当日未徴収金           PIC S9(13)  SIGN LEADING SEPARATE.
002570    03   ()当日未徴収金自社分     PIC S9(13)  SIGN LEADING SEPARATE.
002580    03   ()当日未徴収金消費税     PIC S9(13)  SIGN LEADING SEPARATE.
002590    03   ()当日未徴収金消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002600    03   ()当日約定元本           PIC S9(13)  SIGN LEADING SEPARATE.
002610    03   ()当日約定利息           PIC S9(13)  SIGN LEADING SEPARATE.
002620    03   ()当日実質元本           PIC S9(13)  SIGN LEADING SEPARATE.
002630    03   ()当日実質利息           PIC S9(13)  SIGN LEADING SEPARATE.
002640    03   ()当日未徴収元本         PIC S9(13)  SIGN LEADING SEPARATE.
002650    03   ()当日未徴収利息         PIC S9(13)  SIGN LEADING SEPARATE.
002660    03   ()当日売上額             PIC S9(13)  SIGN LEADING SEPARATE.
002670    03   ()当日売上額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
002680    03   ()当日諸費用             PIC S9(13)  SIGN LEADING SEPARATE.
002690    03   ()当日諸費用自社分       PIC S9(13)  SIGN LEADING SEPARATE.
002700    03   ()当日金融元本           PIC S9(13)  SIGN LEADING SEPARATE.
002710    03   ()当日金融元本自社分     PIC S9(13)  SIGN LEADING SEPARATE.
002720    03   ()当日金融利息           PIC S9(13)  SIGN LEADING SEPARATE.
002730    03   ()当日金融利息自社分     PIC S9(13)  SIGN LEADING SEPARATE.
002740    03   ()当日固定資産税         PIC S9(13)  SIGN LEADING SEPARATE.
002750    03   ()当日動総保険料         PIC S9(13)  SIGN LEADING SEPARATE.
002760    03   ()当日支払利息適用       PIC S9(13)  SIGN LEADING SEPARATE.
002770    03   ()当日支払利息一般       PIC S9(13)  SIGN LEADING SEPARATE.
002780    03   ()当日委託保守料         PIC S9(13)  SIGN LEADING SEPARATE.
002790    03   ()当日売上元本           PIC S9(13)  SIGN LEADING SEPARATE.
002800    03   ()当日売上利息           PIC S9(13)  SIGN LEADING SEPARATE.
002810    03   ()当日社内金利利息適用   PIC S9(13)  SIGN LEADING SEPARATE.
002820    03   ()当日社内金利利息一般   PIC S9(13)  SIGN LEADING SEPARATE.
002830    03   ()当日調整額             PIC S9(13)  SIGN LEADING SEPARATE.
002840    03   ()当日調整額自社分       PIC S9(13)  SIGN LEADING SEPARATE.
002850    03   ()当日消費税調整額       PIC S9(13)  SIGN LEADING SEPARATE.
002860    03   ()当日消費税調整額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002870    03   ()当日約定調整額         PIC S9(13)  SIGN LEADING SEPARATE.
002880    03   ()当日約定調整額自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002890    03   ()当日約定調整額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002900    03   ()当日約定調整額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002910    03   ()当日前受調整額         PIC S9(13)  SIGN LEADING SEPARATE.
002920    03   ()当日前受調整額自社分   PIC S9(13)  SIGN LEADING SEPARATE.
002930    03   ()当日前受調整額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
002940    03   ()当日前受調整額消費税自社分 PIC S9(13)  SIGN LEADING SEPARATE.
002950    03   ()当日約定元本調整額     PIC S9(13)  SIGN LEADING SEPARATE.
002960    03   ()当日約定利息調整額     PIC S9(13)  SIGN LEADING SEPARATE.
002970    03   ()当日実質元本調整額     PIC S9(13)  SIGN LEADING SEPARATE.
002980    03   ()当日実質利息調整額     PIC S9(13)  SIGN LEADING SEPARATE.
002990    03   ()当日売上調整額         PIC S9(13)  SIGN LEADING SEPARATE.
003000    03   ()当日売上調整額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
003010    03   ()当日諸費用調整額       PIC S9(13)  SIGN LEADING SEPARATE.
003020    03   ()当日諸費用調整額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
003030    03   ()当日金融元本調整額     PIC S9(13)  SIGN LEADING SEPARATE.
003040    03   ()当日金融元本調整額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
003050    03   ()当日金融利息調整額     PIC S9(13)  SIGN LEADING SEPARATE.
003060    03   ()当日金融利息調整額自社分 PIC S9(13)  SIGN LEADING SEPARATE.
003070    03   ()当日固定資産税調整額   PIC S9(13)  SIGN LEADING SEPARATE.
003080    03   ()当日動総保険料調整額   PIC S9(13)  SIGN LEADING SEPARATE.
003090    03   ()当日支払利息調整額適用 PIC S9(13)  SIGN LEADING SEPARATE.
003100    03   ()当日支払利息調整額一般 PIC S9(13)  SIGN LEADING SEPARATE.
003110    03   ()当日委託保守料調整額   PIC S9(13)  SIGN LEADING SEPARATE.
003120    03   ()当日売上元本調整額     PIC S9(13)  SIGN LEADING SEPARATE.
003130    03   ()当日売上利息調整額     PIC S9(13)  SIGN LEADING SEPARATE.
003140    03   ()登録年月日             PIC  X(8).
003150    03   ()登録時間               PIC  X(8).
003160    03   ()登録担当者             PIC  X(8).
003170    03   ()更新年月日             PIC  X(8).
003180    03   ()更新時間               PIC  X(8).
003190    03   ()更新者                 PIC  X(8).
