CREATE TABLE KAI_IREI
(
    名寄せコード                   CHAR(8) NOT NULL,
    取引先名漢字                   VARCHAR2(60) NOT NULL,
    承認番号                       CHAR(5) NOT NULL,
    包括期限開始                   CHAR(8) NOT NULL,
    包括期限終了                   CHAR(8) NOT NULL,
    異例内容                       VARCHAR2(400) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_KAI_IREI PRIMARY KEY (名寄せコード) USING INDEX
)
/
