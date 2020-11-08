000010************************************************
000020* 貸付金(基本)(CPBIS083)
000030************************************************
000040    03  ()契約ＮＯ               PIC  X(9).
000050    03  ()ユーザコード           PIC  X(8).
000060    03  ()請求先コード           PIC  X(8).
000070    03  ()事業所コード           PIC S9(4).
000080    03  ()担当者コード           PIC S9(4).
000090    03  ()契約日                 PIC  X(7).
000100    03  ()実行日                 PIC  X(7).
000110    03  ()勘定処理コード         PIC S9(2).
000120    03  ()社内金利               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000130    03  ()月利複利率基本         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000140    03  ()粗利益                 PIC S9(13)  SIGN LEADING SEPARATE.
000150    03  ()元本貸付金額           PIC S9(13)  SIGN LEADING SEPARATE.
000160    03  ()契約金額               PIC S9(13)  SIGN LEADING SEPARATE.
000170    03  ()受取手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000180    03  ()受取手数料消費税等額   PIC S9(13)  SIGN LEADING SEPARATE.
000190    03  ()期日                   PIC  X(7).
000200    03  ()新規書替区分           PIC S9(1).
000210    03  ()貸付種類               PIC S9(1).
000220    03  ()長短区分               PIC S9(1).
000230    03  ()元本元利区分           PIC S9(1).
000240    03  ()利払サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000250    03  ()据置期間               PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
000260    03  ()契約期間               PIC S9(3)  SIGN LEADING SEPARATE.
000270    03  ()支払日                 PIC  X(7).
000280    03  ()支払先コード           PIC  X(4).
000290    03  ()支払方法コード         PIC S9(2).
000300    03  ()支払先口座情報.
000310     05  ()支払銀行コード         PIC  X(7).
000320     05  ()支払口座番号           PIC  X(7).
000330     05  ()支払預金種類           PIC S9(1).
000340    03  ()契約条件.
000350     05  ()利率基数コード         PIC S9(1).
000360     05  ()利息端数処理ＣＤ       PIC S9(1).
000370     05  ()前取後取区分           PIC S9(1).
000380     05  ()片端両端区分           PIC S9(1).
000390     05  ()金利変動区分           PIC S9(1).
000400     05  ()連動金利区分           PIC S9(2).
000410     05  ()見直しサイクル         PIC S9(3)  SIGN LEADING SEPARATE.
000420     05  ()スプレッド             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000430     05  ()初回日割区分           PIC S9(1).
000440    03  ()利率確定期限           PIC  X(7).
000450    03  ()支払承認情報.
000460     05  ()承認ＮＯ               PIC  X(6).
000470     05  ()支払承認日             PIC  X(7).
000480     05  ()支払担当者コード       PIC  X(4).
000490    03  ()期限前決済情報.
000500     05  ()期限前決済日           PIC  X(7).
000510     05  ()戻し利息額             PIC S9(13)  SIGN LEADING SEPARATE.
000520     05  ()返済手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000530     05  ()返済手数料消費税額     PIC S9(13)  SIGN LEADING SEPARATE.
000540     05  ()決済時元本残高         PIC S9(13)  SIGN LEADING SEPARATE.
000550     05  ()決済時利息額           PIC S9(13)  SIGN LEADING SEPARATE.
000560     05  ()戻し利率               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000570     05  ()戻し日数               PIC S9(4)  SIGN LEADING SEPARATE.
000580     05  ()戻し利息相殺コード     PIC S9(1).
000590    03  ()期日管理実行日         PIC  X(7).
000600    03  FILLER           PIC  X(55).
000610    03  ()約定弁済区分           PIC S9(1).
000620    03  ()支払繰延月数           PIC S9(2)V9(2)  SIGN LEADING SEPARATE.
000630    03  ()支払先名               PIC  X(40).
000640    03  ()休日対応区分           PIC S9(1).
000650    03  ()入金日                 PIC S9(2)  SIGN LEADING SEPARATE.
000660    03  ()第１回内入日           PIC  X(7).
000670    03  ()内入サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000680    03  ()内入回数               PIC S9(3)  SIGN LEADING SEPARATE.
000690    03  ()第１回利払日           PIC  X(7).
000700    03  ()利払回数               PIC S9(3)  SIGN LEADING SEPARATE.
000710    03  ()約定日計算区分         PIC S9(1).
000720    03  ()わかち計算区分         PIC S9(1).
000730    03  ()金利変更基準日コード   PIC S9(1).
000740    03  ()利率                   PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000750    03  ()月利複利率実質         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000760    03  ()案件発生区分           PIC  X(1).
000770    03  ()稟議区分               PIC S9(1).
000780    03  ()借入方式               PIC S9(1).
000790    03  ()資金使途区分           PIC S9(1).
000800    03  ()物件名対象業務名       PIC  X(40).
000810    03  ()設置場所名             PIC  X(40).
000820    03  ()設置場所郵便番号       PIC  X(7).
000830    03  ()設置場所住所           PIC  X(100).
000840    03  ()銀行コード             PIC  X(7).
000850    03  ()口座番号               PIC  X(7).
000860    03  ()預金種類               PIC S9(1).
000870    03  ()書替元情報                        OCCURS 5.
000880     05  ()書替元契約番号         PIC  X(9).
000890     05  ()書替元元本残高         PIC S9(13)  SIGN LEADING SEPARATE.
000900     05  ()書替元利息額           PIC S9(13)  SIGN LEADING SEPARATE.
000910    03  FILLER           PIC  X(59).
000920    03  ()共通情報               PIC  X(35).
