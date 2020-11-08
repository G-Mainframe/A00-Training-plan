000010************************************************
000020* 物件ファイル(CISUF392)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()契約種類               PIC  X(3).
000060    03   ()物件番号               PIC S9(4)  SIGN LEADING SEPARATE.
000070    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000080    03   ()Ｆ型名                 PIC  X(25).
000090    03   ()取得年月日             PIC  X(8).
000100    03   ()解約年月日             PIC  X(8).
000110    03   ()移動年月日             PIC  X(8).
000120    03   ()売廃年月日             PIC  X(8).
000130    03   ()状態フラグ             PIC  X(1).
000140    03   ()解約フラグ             PIC  X(1).
000150    03   ()移動フラグ             PIC  X(1).
000160    03   ()売廃フラグ             PIC  X(1).
000170    03   ()承継フラグ             PIC  X(1).
000180    03   ()解約申請フラグ         PIC  X(1).
000190    03   ()解約理由               PIC  X(2).
000200    03   ()移動理由               PIC  X(2).
000210    03   ()売廃理由               PIC  X(2).
000220    03   ()製造者名               PIC  X(60).
000230    03   ()取得価額               PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()取得消費税額           PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()相殺金額               PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()相殺金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000270    03   ()相殺契約番号           PIC  X(10).
000280    03   ()差引金額               PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()差引金額消費税         PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()残価設定額             PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()資産種類               PIC  X(7).
000320    03   ()数量                   PIC S9(5)  SIGN LEADING SEPARATE.
000330    03   ()単位                   PIC  X(1).
000340    03   ()税法区分               PIC  X(1).
000350    03   ()耐用年数               PIC S9(2)  SIGN LEADING SEPARATE.
000360    03   ()物件種類               PIC  X(2).
000370    03   ()ソフト区分             PIC  X(1).
000380    03   ()少額資産区分           PIC  X(1).
000390    03   ()中古資産区分           PIC  X(1).
000400    03   ()会社償却区分           PIC  X(1).
000410    03   ()固定資産税区分         PIC  X(1).
000420    03   ()信用保険区分           PIC  X(1).
000430    03   ()機械類分類コード       PIC  X(2).
000440    03   ()ディーラ取引先コード   PIC  X(9).
000450    03   ()ディーラコード         PIC  X(5).
000460    03   ()支払サイト             PIC S9(2)  SIGN LEADING SEPARATE.
000470    03   ()支払日                 PIC S9(2)  SIGN LEADING SEPARATE.
000480    03   ()支払方法               PIC  X(1).
000490    03   ()手形サイト             PIC S9(3)  SIGN LEADING SEPARATE.
000500    03   ()納付先コード           PIC  X(6).
000510    03   ()住所２                 PIC  X(60).
000520    03   ()住所３                 PIC  X(60).
000530    03   ()物件リース料           PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()旧契約番号             PIC  X(10).
000550    03   ()旧物件番号             PIC S9(4)  SIGN LEADING SEPARATE.
000560    03   ()処分先取引先コード     PIC  X(9).
000570    03   ()処分先コード           PIC  X(5).
000580    03   ()売却代金               PIC S9(13)  SIGN LEADING SEPARATE.
000590    03   ()売却代回収日           PIC  X(8).
000600    03   ()売却代回収方法         PIC  X(1).
000610    03   ()保険事故フラグ         PIC  X(1).
000620    03   ()保険事故回数           PIC S9(3)  SIGN LEADING SEPARATE.
000630    03   ()事故年月日             PIC  X(8).
000640    03   ()事故台数               PIC S9(3)  SIGN LEADING SEPARATE.
000650    03   ()ユーザ向値引額         PIC S9(13)  SIGN LEADING SEPARATE.
000660    03   ()当社向値引額           PIC S9(13)  SIGN LEADING SEPARATE.
000670    03   ()分割年月日             PIC  X(8).
000680    03   ()定額－月額償却費       PIC S9(13)  SIGN LEADING SEPARATE.
000690    03   ()定額－月額償却費端数   PIC S9(13)  SIGN LEADING SEPARATE.
000700    03   ()見積物件番号           PIC S9(4)  SIGN LEADING SEPARATE.
000710    03   ()再リース予定フラグ     PIC  X(1).
000720    03   ()再リース料金           PIC S9(13)  SIGN LEADING SEPARATE.
000730    03   ()再リース残価           PIC S9(13)  SIGN LEADING SEPARATE.
000740    03   ()旧物件料金             PIC S9(13)  SIGN LEADING SEPARATE.
000750    03   ()旧残価設定額           PIC S9(13)  SIGN LEADING SEPARATE.
000760    03   ()自他社区分             PIC  X(1).
000770    03   ()取引先コード           PIC  X(9).
000780    03   ()支払先コード           PIC  X(5).
000790    03   ()設置場所コード         PIC  X(11).
000800    03   ()保険会社区分           PIC  X(4).
000810    03   ()定価                   PIC S9(13)  SIGN LEADING SEPARATE.
000820    03   ()レンタル倍率           PIC S9(2)V9(3)  SIGN LEADING SEPARATE.
000830    03   ()レンタル料             PIC S9(13)  SIGN LEADING SEPARATE.
000840    03   ()売廃エントリ日         PIC  X(8).
000850    03   ()売廃処理年月           PIC  X(6).
000860    03   ()売廃取消区分           PIC  X(1).
000870    03   ()売廃取消エントリ日     PIC  X(8).
000880    03   ()売廃取消処理年月       PIC  X(6).
000890    03   ()解約処理年月           PIC  X(6).
000900    03   ()解約取消処理年月       PIC  X(6).
000910    03   ()貯蔵品評価額           PIC S9(13)  SIGN LEADING SEPARATE.
000920    03   ()承継元契約番号         PIC  X(10).
000930    03   ()承継元物件番号         PIC S9(4)  SIGN LEADING SEPARATE.
000940    03   ()承継年月日             PIC  X(8).
000950    03   ()承継処理年月           PIC  X(6).
000960    03   ()処分予定               PIC  X(1).
000970    03   ()満了エントリ日         PIC  X(8).
000980    03   ()満了処理年月           PIC  X(6).
000990    03   ()満了取消エントリ日     PIC  X(8).
001000    03   ()満了取消処理年月       PIC  X(6).
001010    03   ()解約区分               PIC  X(1).
001020    03   ()売廃区分               PIC  X(1).
001030    03   ()協調取引先コード       PIC  X(9).
001040    03   ()協調支払先コード       PIC  X(5).
001050    03   ()更新年月日             PIC  X(8).
001060    03   ()更新時間               PIC  X(8).
001070    03   ()更新者                 PIC  X(8).
001080    03   ()連番                   PIC S9(3)  SIGN LEADING SEPARATE.
001090    03   ()貯蔵品区分             PIC  X(1).
001100    03   ()取得額丸め単位         PIC  X(1).
001110    03   ()リース料丸め単位       PIC  X(1).
001120    03   ()分割元物件番号         PIC S9(4)  SIGN LEADING SEPARATE.
001130    03   ()分割処理年月           PIC  X(6).
001140    03   ()委託保守料支払総額     PIC S9(13)  SIGN LEADING SEPARATE.
001150    03   ()工事費等組込区分       PIC  X(1).
001160    03   ()工事費等               PIC S9(13)  SIGN LEADING SEPARATE.
001170    03   ()海外設置場所区分       PIC  X(1).
001180    03   ()保証会社               PIC  X(9).
001190    03   ()物件名称               PIC  X(60).
001200    03   ()承継二次済フラグ       PIC  X(1).
001210    03   ()他社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
001220    03   ()委託保守区分           PIC  X(1).
001230    03   ()委託保守料月額料金     PIC S9(13)  SIGN LEADING SEPARATE.
001240    03   ()物件処分区分           PIC  X(1).
001250    03   ()入力担当者コード       PIC  X(8).
001260    03   ()郵便番号               PIC  X(7).
001270    03   ()物件処分連番           PIC S9(3)  SIGN LEADING SEPARATE.
001280    03   ()見積－見積番号－担当者 PIC  X(2).
001290    03   ()見積－見積番号－連番   PIC S9(7)  SIGN LEADING SEPARATE.
001300    03   ()見積－物件番号         PIC S9(3)  SIGN LEADING SEPARATE.
001310    03   ()二次契約予約フラグ     PIC  X(1).
001320    03   ()登録番号               PIC  X(8).
001330    03   ()物件処分申請状態フラグ PIC  X(1).
001340    03   ()他社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
001350    03   ()他社再リース残価       PIC S9(13)  SIGN LEADING SEPARATE.
001360    03   ()旧他社残価設定額       PIC S9(13)  SIGN LEADING SEPARATE.
001370    03   ()物件処分申請連番       PIC S9(2)  SIGN LEADING SEPARATE.
001380    03   ()承継予約フラグ         PIC  X(1).
001390    03   ()再リース委託保守区分   PIC  X(1).
001400    03   ()再リース委託保守料支払総額 PIC S9(13)  SIGN LEADING SEPARATE.
001410    03   ()再リース委託保守料月額料金 PIC S9(13)  SIGN LEADING SEPARATE.
001420    03   ()旧委託保守区分         PIC  X(1).
001430    03   ()旧委託保守料支払総額   PIC S9(13)  SIGN LEADING SEPARATE.
001440    03   ()旧委託保守料月額料金   PIC S9(13)  SIGN LEADING SEPARATE.
001450    03   ()物件区分               PIC  X(2).
001460    03   ()種類区分               PIC  X(2).
001470    03   ()メーカー区分           PIC  X(3).
001480    03   ()機械番号               PIC  X(20).
001490    03   ()物件名カナ             PIC  X(60).
001500    03   ()住所１                 PIC  X(60).
001510    03   ()設置場所名             PIC  X(80).
001520    03   ()設置場所名カナ         PIC  X(80).
001530    03   ()短縮申請区分           PIC  X(1).
001540    03   ()残価区分               PIC  X(1).
001550    03   ()採算物件作成連番       PIC S9(4)  SIGN LEADING SEPARATE.
001560    03   ()指定電子計算機         PIC  X(40).
001570    03   ()電子計算機所有者       PIC  X(40).
001580    03   ()物件分割申請フラグ     PIC  X(1).
001590    03   ()償却資産税率           PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
001600    03   ()リファレンス番号１     PIC  X(16).
001610    03   ()リファレンス番号２     PIC  X(16).
001620    03   ()リファレンス番号３     PIC  X(16).
001630    03   ()リファレンス番号４     PIC  X(16).
001640    03   ()登録年月日             PIC  X(8).
001650    03   ()登録時間               PIC  X(8).
001660    03   ()登録担当者             PIC  X(8).
001670    03   ()税込残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
001680    03   ()税込残価設定額他社     PIC S9(13)  SIGN LEADING SEPARATE.
001690    03   ()物件リース料消費税     PIC S9(13)  SIGN LEADING SEPARATE.
001700    03   ()他社購入区分           PIC  X(1).
001710    03   ()自社リース料           PIC S9(13)  SIGN LEADING SEPARATE.
001720    03   ()他社リース料           PIC S9(13)  SIGN LEADING SEPARATE.
001730    03   ()所有リース会社         PIC  X(9).
001740    03   ()特例期間               PIC S9(2)  SIGN LEADING SEPARATE.
001750    03   ()特例率－分子           PIC S9(2)  SIGN LEADING SEPARATE.
001760    03   ()特例率－分母           PIC S9(3)  SIGN LEADING SEPARATE.
001770    03   ()特例課税標準額         PIC S9(13)  SIGN LEADING SEPARATE.
001780    03   ()固税負担区分           PIC  X(1).
001790    03   ()固税税区分             PIC  X(1).
001800    03   ()債権買取区分           PIC  X(1).
001810    03   ()債権買取金額           PIC S9(13)  SIGN LEADING SEPARATE.
001820    03   ()売却委託手数料         PIC S9(13)  SIGN LEADING SEPARATE.
001830    03   ()引取負担区分           PIC  X(1).
001840    03   ()引取費用               PIC S9(13)  SIGN LEADING SEPARATE.
001850    03   ()売却見積フラグ         PIC  X(1).
001860    03   ()付保率                 PIC S9(2)  SIGN LEADING SEPARATE.
001870    03   ()通知書発送日           PIC  X(8).
001880    03   ()符号                   PIC  X(5).
001890    03   ()信用保険料             PIC S9(13)  SIGN LEADING SEPARATE.
001900    03   ()機種名番号             PIC  X(2).
001910    03   ()自社購入額             PIC S9(13)  SIGN LEADING SEPARATE.
001920    03   ()損害保険区分           PIC  X(1).
001930    03   ()賠償保険区分           PIC  X(1).
001940    03   ()解約取消年月日         PIC  X(8).
001950    03   ()承継取消年月日         PIC  X(8).
001960    03   ()承継取消処理年月       PIC  X(6).
001970    03   ()動総率                 PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
001980    03   ()保守区分               PIC  X(1).
001990    03   ()解約申請連番           PIC S9(3)  SIGN LEADING SEPARATE.
002000    03   ()当初残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
002010    03   ()当初他社残価設定額     PIC S9(13)  SIGN LEADING SEPARATE.
002020    03   ()自社残価設定額         PIC S9(13)  SIGN LEADING SEPARATE.
002030    03   ()信用保険コード         PIC  X(6).
002040    03   ()動総付保区分           PIC  X(1).
002050    03   ()貯蔵品識別区分         PIC  X(1).
002060    03   ()非稼動資産固税申告区分 PIC  X(1).
