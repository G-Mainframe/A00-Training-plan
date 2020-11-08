000010************************************************
000020* 取引先マスター（事業所別債権残レコード）(CPBIS058)
000030************************************************
000040    03  ()取引先コード           PIC  X(8).
000050    03  ()事業所コード           PIC S9(4).
000060    03  ()債権残高情報リース     PIC S9(13)  SIGN LEADING SEPARATE.
000070    03  ()債権残高情報割賦       PIC S9(13)  SIGN LEADING SEPARATE.
000080    03  ()債権残高情報金消       PIC S9(13)  SIGN LEADING SEPARATE.
000090    03  ()債権残高情報ファクタリング PIC S9(13)  SIGN LEADING SEPARATE.
000100    03  ()債権残高情報支払保証   PIC S9(13)  SIGN LEADING SEPARATE.
000110    03  ()債権残高情報斡旋       PIC S9(13)  SIGN LEADING SEPARATE.
000120    03  ()債権残高情報手数料     PIC S9(13)  SIGN LEADING SEPARATE.
000130    03  ()債権残高情報再リース   PIC S9(13)  SIGN LEADING SEPARATE.
000140    03  ()債権残高情報合計額     PIC S9(13)  SIGN LEADING SEPARATE.
000150    03  FILLER           PIC  X(33).
