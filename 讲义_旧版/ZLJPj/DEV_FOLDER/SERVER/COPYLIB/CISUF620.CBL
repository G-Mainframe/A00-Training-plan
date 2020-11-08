000010************************************************
000020* 支払ファイル(CISUF620)
000030************************************************
000040    03   ()取引先コード           PIC  X(9).
000050    03   ()支払先コード           PIC  X(5).
000060    03   ()契約番号               PIC  X(10).
000070    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000080    03   ()契約種類               PIC  X(3).
000090    03   ()支払種類               PIC  X(2).
000100    03   ()買掛連番               PIC S9(3)  SIGN LEADING SEPARATE.
000110    03   ()連番                   PIC S9(6)  SIGN LEADING SEPARATE.
000120    03   ()手形分割連番           PIC S9(3)  SIGN LEADING SEPARATE.
000130    03   ()売上年月               PIC  X(6).
000140    03   ()支払予定日             PIC  X(8).
000150    03   ()引渡年月日             PIC  X(8).
000160    03   ()支払金額               PIC S9(13)  SIGN LEADING SEPARATE.
000170    03   ()支払金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()相殺契約番号           PIC  X(10).
000190    03   ()相殺金額               PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()相殺金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000210    03   ()手数料負担区分         PIC  X(1).
000220    03   ()担当部課コード         PIC  X(4).
000230    03   ()担当者コード           PIC  X(8).
000240    03   ()支払依頼日             PIC  X(8).
000250    03   ()支払指示日             PIC  X(8).
000260    03   ()支払承認日             PIC  X(8).
000270    03   ()支払年月日             PIC  X(8).
000280    03   ()銀行コード             PIC  X(4).
000290    03   ()支店コード             PIC  X(3).
000300    03   ()口座種別コード         PIC  X(1).
000310    03   ()口座番号               PIC  X(10).
000320    03   ()名義人                 PIC  X(30).
000330    03   ()状態フラグ             PIC  X(1).
000340    03   ()支払方法               PIC  X(1).
000350    03   ()振込手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000360    03   ()実際支払額             PIC S9(13)  SIGN LEADING SEPARATE.
000370    03   ()実際支払額消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000380    03   ()消費税補正額           PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()支払総金額             PIC S9(13)  SIGN LEADING SEPARATE.
000400    03   ()依頼処理年月           PIC  X(6).
000410    03   ()指示処理年月           PIC  X(6).
000420    03   ()承認処理年月           PIC  X(6).
000430    03   ()支払処理年月           PIC  X(6).
000440    03   ()支払取消処理年月       PIC  X(6).
000450    03   ()引渡処理年月           PIC  X(6).
000460    03   ()顧客コード             PIC  X(9).
000470    03   ()分割元連番             PIC S9(6)  SIGN LEADING SEPARATE.
000480    03   ()支払予定日２           PIC  X(8).
000490    03   ()振出日                 PIC  X(8).
000500    03   ()受取方法               PIC  X(1).
000510    03   ()連絡先                 PIC  X(60).
000520    03   ()依頼番号               PIC S9(10)  SIGN LEADING SEPARATE.
000530    03   ()経理締処理年月         PIC  X(6).
000540    03   ()経理締消費税補正額     PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()補正額計上処理年月日   PIC  X(8).
000560    03   ()特別処理区分           PIC  X(1).
000570    03   ()更新年月日             PIC  X(8).
000580    03   ()更新時間               PIC  X(8).
000590    03   ()更新者                 PIC  X(8).
000600    03   ()入力担当者コード       PIC  X(8).
000610    03   ()当初取引先コード       PIC  X(9).
000620    03   ()当初支払先コード       PIC  X(5).
000630    03   ()当初支払種類           PIC  X(2).
000640    03   ()当初契約番号           PIC  X(10).
000650    03   ()当初再リース回数       PIC S9(2)  SIGN LEADING SEPARATE.
000660    03   ()当初連番               PIC S9(6)  SIGN LEADING SEPARATE.
000670    03   ()約定支払日             PIC  X(8).
000680    03   ()連絡先電話番号         PIC  X(15).
000690    03   ()消費税率               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000700    03   ()消費税率区分           PIC  X(2).
000710    03   ()支払額月額             PIC S9(13)  SIGN LEADING SEPARATE.
000720    03   ()支払金額消費税月額     PIC S9(13)  SIGN LEADING SEPARATE.
000730    03   ()自動承認フラグ         PIC  X(1).
000740    03   ()支払依頼エントリ日     PIC  X(8).
000750    03   ()手形分割金額           PIC S9(13)  SIGN LEADING SEPARATE.
000760    03   ()手形分割抑止区分       PIC  X(1).
000770    03   ()コメント               PIC  X(40).
000780    03   ()受取手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000790    03   ()受取手数料消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000800    03   ()支払依頼承認日         PIC  X(8).
000810    03   ()支払依頼確定日         PIC  X(8).
000820    03   ()依頼承認処理年月       PIC  X(6).
000830    03   ()依頼確定処理年月       PIC  X(6).
000840    03   ()入金確認フラグ         PIC  X(1).
000850    03   ()請求書確認フラグ       PIC  X(1).
000860    03   ()支払依頼取消日         PIC  X(8).
000870    03   ()支払指示取消日         PIC  X(8).
000880    03   ()支払承認取消日         PIC  X(8).
000890    03   ()支払取消日             PIC  X(8).
000900    03   ()休日対応区分           PIC  X(1).
000910    03   ()支払金額消費税補正額   PIC S9(13)  SIGN LEADING SEPARATE.
000920    03   ()手数料相殺金額         PIC S9(13)  SIGN LEADING SEPARATE.
000930    03   ()手数料相殺金額消費税   PIC S9(13)  SIGN LEADING SEPARATE.
000940    03   ()無効フラグ             PIC  X(1).
000950    03   ()取消再依頼区分         PIC  X(1).
000960    03   ()登録年月日             PIC  X(8).
000970    03   ()登録時間               PIC  X(8).
000980    03   ()登録担当者             PIC  X(8).
