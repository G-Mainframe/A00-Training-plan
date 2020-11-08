CREATE TABLE KAI_WK_IREISINSEI
(
    担当部店                       VARCHAR2(20) NOT NULL,
    解約日                         CHAR(8) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    契約先名                       VARCHAR2(60) NOT NULL,
    異例申請内容営業               VARCHAR2(400) NOT NULL,
    営業部担当意見営業             VARCHAR2(400) NOT NULL,
    異例申請内容総合               VARCHAR2(400) NOT NULL,
    営業部担当意見総合             VARCHAR2(400) NOT NULL,
    異例申請内容事務               VARCHAR2(400) NOT NULL,
    営業部担当意見事務             VARCHAR2(400) NOT NULL,
    CONSTRAINT PK_WK_IREISINSEI PRIMARY KEY (契約番号) USING INDEX
)
/
