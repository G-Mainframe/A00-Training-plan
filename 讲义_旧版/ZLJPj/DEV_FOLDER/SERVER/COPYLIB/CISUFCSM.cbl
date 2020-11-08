000010************************************************
000020* 企業概要ファイル(CISUFCSM)
000030************************************************
000040    03   ()企業コード             PIC S9(9)  SIGN LEADING SEPARATE.
000050    03   ()法人格コード           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()検索用カナ商号         PIC  X(20).
000070    03   ()検索用漢字商号         PIC  X(20).
000080    03   ()漢字商号               PIC  X(60).
000090    03   ()郵便番号               PIC  X(7).
000100    03   ()企業所在地バーコード番号 PIC  X(23).
000110    03   ()帝国住所コード         PIC S9(10)  SIGN LEADING SEPARATE.
000120    03   ()漢字所在地             PIC  X(100).
000130    03   ()企業電話番号           PIC  X(13).
000140    03   ()帝国データバンク産業分類コード１ PIC  X(5).
000150    03   ()帝国データバンク産業分類コード２ PIC  X(5).
000160    03   ()帝国データバンク産業分類コード３ PIC  X(5).
000170    03   ()帝国データバンク産業分類コード４ PIC  X(5).
000180    03   ()帝国データバンク産業分類コード５ PIC  X(5).
000190    03   ()資本金                 PIC S9(11)  SIGN LEADING SEPARATE.
000200    03   ()従業員数               PIC S9(7)  SIGN LEADING SEPARATE.
000210    03   ()創業年月               PIC S9(6)  SIGN LEADING SEPARATE.
000220    03   ()設立年月               PIC S9(6)  SIGN LEADING SEPARATE.
000230    03   ()評点                   PIC S9(3)  SIGN LEADING SEPARATE.
000240    03   ()調査年月日             PIC S9(8)  SIGN LEADING SEPARATE.
000250    03   ()ＣＯＳＭＯＳ２更新年月日 PIC S9(8)  SIGN LEADING SEPARATE.
000260    03   ()事業所ファイル収録フラグ PIC S9(1)  SIGN LEADING SEPARATE.
000270    03   ()事業所数               PIC S9(5)  SIGN LEADING SEPARATE.
000280    03   ()決算期年月             PIC S9(6)  SIGN LEADING SEPARATE.
000290    03   ()売上高                 PIC S9(11)  SIGN LEADING SEPARATE.
000300    03   ()利益未詳フラグ         PIC S9(1)  SIGN LEADING SEPARATE.
000310    03   ()税引後利益             PIC S9(12)  SIGN LEADING SEPARATE.
000320    03   ()配当率                 PIC S9(3)  SIGN LEADING SEPARATE.
000330    03   ()自己資本比率           PIC S9(3)  SIGN LEADING SEPARATE.
000340    03   ()決算書有無フラグ       PIC S9(1)  SIGN LEADING SEPARATE.
000350    03   ()法人申告所得額         PIC S9(11)  SIGN LEADING SEPARATE.
000360    03   ()最新法人申告決算年月   PIC S9(6)  SIGN LEADING SEPARATE.
000370    03   ()最新法人申告所得額     PIC S9(11)  SIGN LEADING SEPARATE.
000380    03   ()全国社数               PIC S9(7)  SIGN LEADING SEPARATE.
000390    03   ()全国ランキング         PIC S9(7)  SIGN LEADING SEPARATE.
000400    03   ()都道府県別社数         PIC S9(7)  SIGN LEADING SEPARATE.
000410    03   ()都道府県別ランキング   PIC S9(7)  SIGN LEADING SEPARATE.
000420    03   ()役職名                 PIC  X(20).
000430    03   ()カナ氏名               PIC  X(20).
000440    03   ()漢字氏名               PIC  X(40).
000450    03   ()自宅郵便番号           PIC  X(7).
000460    03   ()自宅バーコード番号     PIC  X(23).
000470    03   ()自宅帝国住所コード     PIC S9(10)  SIGN LEADING SEPARATE.
000480    03   ()自宅住所               PIC  X(100).
000490    03   ()自宅電話番号           PIC  X(13).
000500    03   ()生年月日               PIC S9(8)  SIGN LEADING SEPARATE.
000510    03   ()出身県コード           PIC S9(2)  SIGN LEADING SEPARATE.
000520    03   ()出身校コード           PIC S9(4)  SIGN LEADING SEPARATE.
000530    03   ()性別フラグ             PIC S9(1)  SIGN LEADING SEPARATE.
000540    03   ()取引銀行コード１       PIC S9(7)  SIGN LEADING SEPARATE.
000550    03   ()取引銀行コード２       PIC S9(7)  SIGN LEADING SEPARATE.
000560    03   ()取引銀行コード３       PIC S9(7)  SIGN LEADING SEPARATE.
000570    03   ()取引銀行コード４       PIC S9(7)  SIGN LEADING SEPARATE.
000580    03   ()取引銀行コード５       PIC S9(7)  SIGN LEADING SEPARATE.
000590    03   ()取引銀行コード６       PIC S9(7)  SIGN LEADING SEPARATE.
000600    03   ()取引銀行コード７       PIC S9(7)  SIGN LEADING SEPARATE.
000610    03   ()取引銀行コード８       PIC S9(7)  SIGN LEADING SEPARATE.
000620    03   ()取引銀行コード９       PIC S9(7)  SIGN LEADING SEPARATE.
000630    03   ()取引銀行コード１０     PIC S9(7)  SIGN LEADING SEPARATE.
000640    03   ()主要仕入先漢字企業名１ PIC  X(30).
000650    03   ()主要仕入先漢字企業名２ PIC  X(30).
000660    03   ()主要仕入先漢字企業名３ PIC  X(30).
000670    03   ()主要仕入先漢字企業名４ PIC  X(30).
000680    03   ()主要仕入先漢字企業名５ PIC  X(30).
000690    03   ()主要販売先漢字企業名１ PIC  X(30).
000700    03   ()主要販売先漢字企業名２ PIC  X(30).
000710    03   ()主要販売先漢字企業名３ PIC  X(30).
000720    03   ()主要販売先漢字企業名４ PIC  X(30).
000730    03   ()主要販売先漢字企業名５ PIC  X(30).
000740    03   ()親企業漢字企業名       PIC  X(30).
000750    03   ()外資企業フラグ         PIC S9(1)  SIGN LEADING SEPARATE.
000760    03   ()出版物フラグ           PIC S9(1)  SIGN LEADING SEPARATE.
000770    03   ()役員役職名１           PIC  X(8).
000780    03   ()役員役職名２           PIC  X(8).
000790    03   ()役員役職名３           PIC  X(8).
000800    03   ()役員役職名４           PIC  X(8).
000810    03   ()役員役職名５           PIC  X(8).
000820    03   ()役員役職名６           PIC  X(8).
000830    03   ()役員役職名７           PIC  X(8).
000840    03   ()役員役職名８           PIC  X(8).
000850    03   ()役員役職名９           PIC  X(8).
000860    03   ()役員役職名１０         PIC  X(8).
000870    03   ()役員漢字氏名１         PIC  X(16).
000880    03   ()役員漢字氏名２         PIC  X(16).
000890    03   ()役員漢字氏名３         PIC  X(16).
000900    03   ()役員漢字氏名４         PIC  X(16).
000910    03   ()役員漢字氏名５         PIC  X(16).
000920    03   ()役員漢字氏名６         PIC  X(16).
000930    03   ()役員漢字氏名７         PIC  X(16).
000940    03   ()役員漢字氏名８         PIC  X(16).
000950    03   ()役員漢字氏名９         PIC  X(16).
000960    03   ()役員漢字氏名１０       PIC  X(16).
000970    03   ()株式公開フラグ         PIC S9(1)  SIGN LEADING SEPARATE.
000980    03   ()額面株価フラグ         PIC S9(1)  SIGN LEADING SEPARATE.
000990    03   ()証券固有名コード       PIC  X(5).
001000    03   ()株主数                 PIC S9(7)  SIGN LEADING SEPARATE.
001010    03   ()株主名１               PIC  X(30).
001020    03   ()株主名２               PIC  X(30).
001030    03   ()株主名３               PIC  X(30).
001040    03   ()株主名４               PIC  X(30).
001050    03   ()株主名５               PIC  X(30).
001060    03   ()持株数１               PIC S9(11)  SIGN LEADING SEPARATE.
001070    03   ()持株数２               PIC S9(11)  SIGN LEADING SEPARATE.
001080    03   ()持株数３               PIC S9(11)  SIGN LEADING SEPARATE.
001090    03   ()持株数４               PIC S9(11)  SIGN LEADING SEPARATE.
001100    03   ()持株数５               PIC S9(11)  SIGN LEADING SEPARATE.
001110    03   ()目的                   PIC  X(100).
001120    03   ()帝国データバンク産業分類名称１ PIC  X(18).
001130    03   ()帝国データバンク産業分類名称２ PIC  X(18).
001140    03   ()帝国データバンク産業分類名称３ PIC  X(18).
001150    03   ()帝国データバンク産業分類名称４ PIC  X(18).
001160    03   ()帝国データバンク産業分類名称５ PIC  X(18).
001170    03   ()取引銀行１             PIC  X(30).
001180    03   ()取引銀行２             PIC  X(30).
001190    03   ()取引銀行３             PIC  X(30).
001200    03   ()取引銀行４             PIC  X(30).
001210    03   ()取引銀行５             PIC  X(30).
001220    03   ()取引銀行６             PIC  X(30).
001230    03   ()取引銀行７             PIC  X(30).
001240    03   ()取引銀行８             PIC  X(30).
001250    03   ()取引銀行９             PIC  X(30).
001260    03   ()取引銀行１０           PIC  X(30).
001270    03   ()代表者出身県           PIC  X(8).
001280    03   ()代表者出身校           PIC  X(30).
