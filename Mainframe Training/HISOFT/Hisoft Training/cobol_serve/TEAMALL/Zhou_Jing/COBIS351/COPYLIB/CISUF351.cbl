000010************************************************
000020* 債権採算ファイル(CISUF351)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()契約種類               PIC  X(3).
000070    03   ()回収サイト             PIC S9(2)  SIGN LEADING SEPARATE.
000080    03   ()回収日                 PIC S9(2)  SIGN LEADING SEPARATE.
000090    03   ()回収方法               PIC  X(1).
000100    03   ()基本利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000110    03   ()実質利回り             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000120    03   ()粗利額                 PIC S9(13)  SIGN LEADING SEPARATE.
000130    03   ()基本利回り総額         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000140    03   ()売上基本利回り         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000150    03   ()一般基本利回り         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000160    03   ()一般実質利回り         PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000170    03   ()一般粗利額             PIC S9(13)  SIGN LEADING SEPARATE.
000180    03   ()固定資産税             PIC S9(13)  SIGN LEADING SEPARATE.
000190    03   ()動総保険料             PIC S9(13)  SIGN LEADING SEPARATE.
000200    03   ()委託保守料             PIC S9(13)  SIGN LEADING SEPARATE.
000210    03   ()固定資産税現価         PIC S9(13)  SIGN LEADING SEPARATE.
000220    03   ()動総保険料現価         PIC S9(13)  SIGN LEADING SEPARATE.
000230    03   ()委託保守料現価         PIC S9(13)  SIGN LEADING SEPARATE.
000240    03   ()一般固定資産税現価     PIC S9(13)  SIGN LEADING SEPARATE.
000250    03   ()一般動総保険料現価     PIC S9(13)  SIGN LEADING SEPARATE.
000260    03   ()一般委託保守料現価     PIC S9(13)  SIGN LEADING SEPARATE.
000270    03   ()前受メリット           PIC S9(13)  SIGN LEADING SEPARATE.
000280    03   ()一般前受メリット       PIC S9(13)  SIGN LEADING SEPARATE.
000290    03   ()繰延メリット           PIC S9(13)  SIGN LEADING SEPARATE.
000300    03   ()一般繰延メリット       PIC S9(13)  SIGN LEADING SEPARATE.
000310    03   ()基本リース料総額       PIC S9(13)  SIGN LEADING SEPARATE.
000320    03   ()基本リース料１回分     PIC S9(13)  SIGN LEADING SEPARATE.
000330    03   ()固定資産税費用総額     PIC S9(13)  SIGN LEADING SEPARATE.
000340    03   ()固定資産税費用１回分   PIC S9(13)  SIGN LEADING SEPARATE.
000350    03   ()動総保険料費用総額     PIC S9(13)  SIGN LEADING SEPARATE.
000360    03   ()動総保険料費用１回分   PIC S9(13)  SIGN LEADING SEPARATE.
000370    03   ()リース料総額           PIC S9(13)  SIGN LEADING SEPARATE.
000380    03   ()リース料１回分         PIC S9(13)  SIGN LEADING SEPARATE.
000390    03   ()前受メリット総額       PIC S9(13)  SIGN LEADING SEPARATE.
000400    03   ()前受メリット１回分     PIC S9(13)  SIGN LEADING SEPARATE.
000410    03   ()繰延メリット総額       PIC S9(13)  SIGN LEADING SEPARATE.
000420    03   ()繰延メリット１回分     PIC S9(13)  SIGN LEADING SEPARATE.
000430    03   ()実質リース料総額       PIC S9(13)  SIGN LEADING SEPARATE.
000440    03   ()実質リース料１回分     PIC S9(13)  SIGN LEADING SEPARATE.
000450    03   ()実質リース料現価       PIC S9(13)  SIGN LEADING SEPARATE.
000460    03   ()初期費用               PIC S9(13)  SIGN LEADING SEPARATE.
000470    03   ()期中費用現価           PIC S9(13)  SIGN LEADING SEPARATE.
000480    03   ()基本リース料総額当社   PIC S9(13)  SIGN LEADING SEPARATE.
000490    03   ()基本リース料１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000500    03   ()固定資産税費用総額当社 PIC S9(13)  SIGN LEADING SEPARATE.
000510    03   ()固定資産税費用１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000520    03   ()動総保険料費用総額当社 PIC S9(13)  SIGN LEADING SEPARATE.
000530    03   ()動総保険料費用１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000540    03   ()リース料総額当社       PIC S9(13)  SIGN LEADING SEPARATE.
000550    03   ()リース料１回分当社     PIC S9(13)  SIGN LEADING SEPARATE.
000560    03   ()前受メリット総額当社   PIC S9(13)  SIGN LEADING SEPARATE.
000570    03   ()前受メリット１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000580    03   ()繰延メリット総額当社   PIC S9(13)  SIGN LEADING SEPARATE.
000590    03   ()繰延メリット１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000600    03   ()実質リース料総額当社   PIC S9(13)  SIGN LEADING SEPARATE.
000610    03   ()実質リース料１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000620    03   ()実質リース料現価当社   PIC S9(13)  SIGN LEADING SEPARATE.
000630    03   ()残価回収現価当社       PIC S9(13)  SIGN LEADING SEPARATE.
000640    03   ()初期費用当社           PIC S9(13)  SIGN LEADING SEPARATE.
000650    03   ()期中費用現価当社       PIC S9(13)  SIGN LEADING SEPARATE.
000660    03   ()残価回収現価           PIC S9(13)  SIGN LEADING SEPARATE.
000670    03   ()粗利益全体             PIC S9(13)  SIGN LEADING SEPARATE.
000680    03   ()一般実質リース料現価   PIC S9(13)  SIGN LEADING SEPARATE.
000690    03   ()一般残価回収現価       PIC S9(13)  SIGN LEADING SEPARATE.
000700    03   ()一般期中費用現価       PIC S9(13)  SIGN LEADING SEPARATE.
000710    03   ()一般粗利額全体         PIC S9(13)  SIGN LEADING SEPARATE.
000720    03   ()一般実質リース料現価当社 PIC S9(13)  SIGN LEADING SEPARATE.
000730    03   ()一般残価回収現価当社   PIC S9(13)  SIGN LEADING SEPARATE.
000740    03   ()一般期中費用現価当社   PIC S9(13)  SIGN LEADING SEPARATE.
000750    03   ()当社持分比率           PIC S9(3)  SIGN LEADING SEPARATE.
000760    03   ()基本元本金額           PIC S9(13)  SIGN LEADING SEPARATE.
000770    03   ()リース料現価           PIC S9(13)  SIGN LEADING SEPARATE.
000780    03   ()リース料現価当社       PIC S9(13)  SIGN LEADING SEPARATE.
000790    03   ()その他諸費用           PIC S9(13)  SIGN LEADING SEPARATE.
000800    03   ()その他諸費用現価       PIC S9(13)  SIGN LEADING SEPARATE.
000810    03   ()一般その他諸費用現価   PIC S9(13)  SIGN LEADING SEPARATE.
000820    03   ()委託保険料費用総額     PIC S9(13)  SIGN LEADING SEPARATE.
000830    03   ()委託保険料費用１回分   PIC S9(13)  SIGN LEADING SEPARATE.
000840    03   ()その他諸費用総額       PIC S9(13)  SIGN LEADING SEPARATE.
000850    03   ()その他諸費用１回分     PIC S9(13)  SIGN LEADING SEPARATE.
000860    03   ()委託保険料費用総額当社 PIC S9(13)  SIGN LEADING SEPARATE.
000870    03   ()委託保険料費用１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000880    03   ()その他諸費用総額当社   PIC S9(13)  SIGN LEADING SEPARATE.
000890    03   ()その他諸費用１回分当社 PIC S9(13)  SIGN LEADING SEPARATE.
000900    03   ()更新年月日             PIC  X(8).
000910    03   ()更新時間               PIC  X(8).
000920    03   ()更新者                 PIC  X(8).
000930    03   ()登録年月日             PIC  X(8).
000940    03   ()登録時間               PIC  X(8).
000950    03   ()登録担当者             PIC  X(8).
000960    03   ()入力担当者コード       PIC  X(8).
