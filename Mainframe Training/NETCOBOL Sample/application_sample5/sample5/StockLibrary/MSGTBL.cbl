      *---メッセージテーブル------------
         01  MSG-AREA.
      *    NO.01
           03  FILLER                  PIC  N(20) VALUE
                  NC"　　　　　　　　　　　　　　　　　　　　".
      *    NO.02
           03  FILLER                  PIC  N(20) VALUE
                  NC"社員コードに、間違いがあります　　　　　".
      *    NO.03
           03  FILLER                  PIC  N(20) VALUE
                  NC"パスワードに、間違いがあります　　　　　".
      *    NO.04
           03  FILLER                  PIC  N(20) VALUE
                  NC"年月の値に誤りがあります　　　　　　　　".
      *    NO.05
           03  FILLER                  PIC  N(20) VALUE
                  NC"商品コードに、間違いがあります。　　　　".
      *    NO.06
           03  FILLER                  PIC  N(20) VALUE
                  NC"前頁はありません　　　　　　　　　　　　".
      *    NO.07
           03  FILLER                  PIC  N(20) VALUE
                  NC"次頁はありません　　　　　　　　　　　　".
      *    NO.08
           03  FILLER                  PIC  N(20) VALUE
                  NC"該当の入出庫明細がありません　　　　　　".
      *    NO.09
           03  FILLER                  PIC  N(20) VALUE
                  NC"データベースにアクセスできません　　　　".
      *--      
         01 MSG-TBL   REDEFINES  MSG-AREA.
           03  MSG-DSP OCCURS 9 TIMES.
             05  FILLER                PIC N(20).
