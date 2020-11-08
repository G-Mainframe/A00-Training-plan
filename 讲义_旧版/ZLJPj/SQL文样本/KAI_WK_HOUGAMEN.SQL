CREATE TABLE KAI_WK_HOUGAMEN
(
    NO                             NUMBER(3,0) NOT NULL,
    未徴収金残高                   NUMBER(13,0) NOT NULL,
    未徴収金回収方法               CHAR(20) NOT NULL,
    回収予定日                     CHAR(8) NOT NULL,
    処分先                         VARCHAR2(80) NOT NULL,
    売却決済条件                   VARCHAR2(4) NOT NULL,
    新契約NO                       CHAR(9) NOT NULL,
    その他                         VARCHAR2(80) NOT NULL,
    消費税調整                     VARCHAR2(2) NOT NULL,
    過剰リース料回収方法           VARCHAR2(8) NOT NULL,
    指示                           VARCHAR2(80) NOT NULL,
    返金先                         VARCHAR2(8) NOT NULL,
    銀行                           VARCHAR2(30) NOT NULL,
    支店                           VARCHAR2(30) NOT NULL,
    預金種類                       VARCHAR2(4) NOT NULL,
    口座NO                         CHAR(7) NOT NULL,
    預金名義                       VARCHAR2(80) NOT NULL,
    期日未到来手形                 VARCHAR2(100) NOT NULL,
    営業部店意見                   VARCHAR2(400) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    報告NO                         CHAR(8) NOT NULL,
    取引先区分                     CHAR(1) NOT NULL,
    CONSTRAINT PK_WK_HOUGAMEN PRIMARY KEY (契約番号) USING INDEX
)
/
