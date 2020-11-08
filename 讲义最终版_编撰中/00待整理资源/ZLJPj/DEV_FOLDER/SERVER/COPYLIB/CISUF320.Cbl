000010************************************************
000020* 契約内容個別情報ファイル(CISUF320)
000030************************************************
000040    03   ()契約番号               PIC  X(10).
000050    03   ()再リース回数           PIC S9(2)  SIGN LEADING SEPARATE.
000060    03   ()対抗要件               PIC  X(2).
000070    03   ()割引料                 PIC S9(13)  SIGN LEADING SEPARATE.
000080    03   ()受取手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000090    03   ()受取手数料消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000100    03   ()取立手数料             PIC S9(13)  SIGN LEADING SEPARATE.
000110    03   ()取立手数料消費税       PIC S9(13)  SIGN LEADING SEPARATE.
000120    03   ()利率基数区分           PIC  X(1).
000130    03   ()利息端数区分           PIC  X(1).
000140    03   ()片端両端区分           PIC  X(1).
000150    03   ()休日対応区分           PIC  X(1).
000160    03   ()利息計算区分           PIC  X(1).
000170    03   ()初回利息区分           PIC  X(1).
000180    03   ()実質年率               PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000190    03   ()スプレッド             PIC S9(2)V9(8)  SIGN LEADING SEPARATE.
000200    03   ()初回元本回収日         PIC  X(8).
000210    03   ()元本サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000220    03   ()元本回数               PIC S9(3)  SIGN LEADING SEPARATE.
000230    03   ()初回利息回収日         PIC  X(8).
000240    03   ()利息サイクル           PIC S9(2)  SIGN LEADING SEPARATE.
000250    03   ()利息回数               PIC S9(3)  SIGN LEADING SEPARATE.
000260    03   ()見直しサイクル         PIC S9(2)  SIGN LEADING SEPARATE.
000270    03   ()利率確定期限           PIC  X(8).
000280    03   ()第１回返済日           PIC  X(8).
000290    03   ()第２回返済日           PIC  X(8).
000300    03   ()裏付取引               PIC  X(60).
000310    03   ()手形裏書方法           PIC  X(1).
000320    03   ()担保コメント           PIC  X(40).
000330    03   ()確認コメント           PIC  X(40).
000340    03   ()新規書替区分           PIC  X(1).
000350    03   ()書替先契約番号         PIC  X(10).
000360    03   ()登録年月日             PIC  X(8).
000370    03   ()登録時間               PIC  X(8).
000380    03   ()登録担当者             PIC  X(8).
000390    03   ()更新年月日             PIC  X(8).
000400    03   ()更新時間               PIC  X(8).
000410    03   ()更新者                 PIC  X(8).
000420    03   ()入力担当者コード       PIC  X(8).
