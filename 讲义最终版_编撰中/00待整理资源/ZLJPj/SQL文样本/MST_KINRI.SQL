CREATE TABLE MST_KINRI
(
    リース期間                     CHAR(3) NOT NULL,
    リース期間別社内金利_１        NUMBER(10,8) NOT NULL,
    適用日_１                      CHAR(8) NOT NULL,
    リース期間別社内金利_２        NUMBER(10,8) NOT NULL,
    適用日_２                      CHAR(8) NOT NULL,
    リース期間別社内金利_３        NUMBER(10,8) NOT NULL,
    適用日_３                      CHAR(8) NOT NULL,
    リース期間別社内金利_４        NUMBER(10,8) NOT NULL,
    適用日_４                      CHAR(8) NOT NULL,
    リース期間別社内金利_５        NUMBER(10,8) NOT NULL,
    適用日_５                      CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_KINRI PRIMARY KEY (リース期間) USING INDEX
)
/
