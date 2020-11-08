CREATE TABLE JYO_PRTWRK
(
    基準日                         CHAR(8),
    資産番号                       CHAR(9),
    資産種類                       CHAR(1),
    資産コード                     CHAR(6),
    資産名                         VARCHAR2(40),
    事業所コード                   CHAR(4),
    事業所名                       VARCHAR2(20),
    償却方法                       CHAR(6),
    増加理由                       CHAR(6),
    減少理由                       CHAR(6),
    事業供用日                     CHAR(8),
    取得年月                       CHAR(6),
    増加日                         CHAR(8),
    減少日                         CHAR(8),
    納付先                         CHAR(6),
    耐用年数                       NUMBER(3,0),
    経過月数                       NUMBER(2,0),
    償却率                         NUMBER(5,3),
    取得価額                       NUMBER(13,0),
    償却限度                       NUMBER(13,0),
    前期末簿価                     NUMBER(13,0),
    当期取得額                     NUMBER(13,0),
    当期除却額                     NUMBER(13,0),
    当期償却額                     NUMBER(13,0),
    当期末簿価                     NUMBER(13,0)
)
/
