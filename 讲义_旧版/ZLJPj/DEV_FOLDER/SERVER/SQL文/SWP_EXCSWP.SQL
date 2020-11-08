CREATE TABLE SWP_EXCSWP
(
    管理番号                       CHAR(4) NOT NULL,
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    銀行名                         VARCHAR2(50) NOT NULL,
    締結日                         CHAR(8) NOT NULL,
    幣種コード                     CHAR(3) NOT NULL,
    想定元本                       NUMBER(13,0) NOT NULL,
    元本残高                       NUMBER(13,0) NOT NULL,
    約定弁済額                     NUMBER(13,0) NOT NULL,
    最終弁済額                     NUMBER(13,0) NOT NULL,
    弁済回数                       NUMBER(3,0) NOT NULL,
    受取固定変動区分               CHAR(1) NOT NULL,
    受取利率基数                   CHAR(3) NOT NULL,
    受取金利                       NUMBER(8,6) NOT NULL,
    支払固定変動区分               CHAR(1) NOT NULL,
    支払利率基数                   CHAR(3) NOT NULL,
    支払金利                       NUMBER(8,6) NOT NULL,
    マージン                       NUMBER(8,6) NOT NULL,
    休日処理区分                   CHAR(1) NOT NULL,
    月末固定区分                   CHAR(1) NOT NULL,
    端数処理区分                   CHAR(1) NOT NULL,
    円換算相場                     NUMBER(6,2),
    計算開始日                     CHAR(8) NOT NULL,
    最終期日                       CHAR(8),
    契約月数                       NUMBER(3,0) NOT NULL,
    利払サイクル                   CHAR(2) NOT NULL,
    利払据置月数                   CHAR(2) NOT NULL,
    資金原価区分                   CHAR(1),
    備考                           VARCHAR2(50),
    更新標識                       CHAR(1)
)
/
CREATE UNIQUE INDEX SWP_EXCSWP
ON SWP_EXCSWP
(管理番号)
/
