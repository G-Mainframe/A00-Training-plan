      * ----------------------------------------------------------
      * 認証処理クラス
      * 
      * パラメタとしてUSERIDとPASSWDを受け取り、従業員ファイルに
      * 該当するユーザIDとパスワードが存在するか確認する
      * -USERIDとPASSWDが従業員ファイルに存在する→"OK"を返す
      * -USERIDとPASSWDが従業員ファイルにない    →"NG"を返す
      *   in :USERID PIC  N(05)
      *   in :PASSWD PIC  N(05)
      *   out:(なし)
      *   ret:CHK-FLG PIC X(02)
      * ----------------------------------------------------------
       IDENTIFICATION  DIVISION.
       CLASS-ID. clsFileAccess AS "Sample1.Class1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
      
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       END STATIC.
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
      * メソッドの宣言
       METHOD-ID. GETUSERDATA AS "GetUserData".
       ENVIRONMENT DIVISION.      
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT 従業員ファイル ASSIGN TO EMPDATA
            ORGANIZATION IS LINE SEQUENTIAL. 
      
       DATA DIVISION.
       FILE SECTION.
          FD 従業員ファイル.
          01 EMPDATA-R.
            02 EMPCODE   PIC N(3).
            02 EMPID     PIC N(5).
            02 EMPPWD    PIC N(5).
       WORKING-STORAGE SECTION.
       01 END-FLG PIC X(03).     
       LINKAGE SECTION.
       01 USERID PIC  N(05).
       01 PASSWD PIC  N(05).
       01 CHK-FLG PIC X(02).             
      
       PROCEDURE DIVISION USING USERID PASSWD RETURNING CHK-FLG.
           MOVE SPACE TO END-FLG.
      *ファイルの読み込み
           OPEN INPUT 従業員ファイル.
           READ 従業員ファイル AT END MOVE "END" TO END-FLG
           END-READ.
           MOVE "NG" TO CHK-FLG
           PERFORM UNTIL END-FLG = "END"
      *USERIDとPASSWDがファイルに存在するか確認
             IF EMPID = USERID THEN
               IF EMPPWD = PASSWD THEN
                  MOVE "OK" TO CHK-FLG
                  EXIT PERFORM
               END-IF
             END-IF
       
      *ファイルの読み込み
             READ 従業員ファイル AT END MOVE "END" TO END-FLG
             END-READ      
           END-PERFORM             
           CLOSE 従業員ファイル.
      
       END METHOD GETUSERDATA.
      
       END OBJECT.
       END CLASS clsFileAccess.
      