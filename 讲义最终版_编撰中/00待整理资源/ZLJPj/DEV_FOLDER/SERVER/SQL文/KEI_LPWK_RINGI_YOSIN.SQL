CREATE TABLE KEI_LPWK_RINGI_YOSIN
(
    契約番号                       CHAR(9) NOT NULL,
    ＷＫ連番                       NUMBER(3,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    名寄せコード                   CHAR(8),
    与信先名                       VARCHAR2(60),
    保証担保内容                   VARCHAR2(30),
    保全範囲                       VARCHAR2(20),
    負担割合                       NUMBER(3,0),
    リース残高名寄せ               NUMBER(13,0),
    割賦残高名寄せ                 NUMBER(13,0),
    貸付残高名寄せ                 NUMBER(13,0),
    未検収残高名寄せ               NUMBER(13,0),
    未徴収残高名寄せ               NUMBER(13,0),
    取引先名                       VARCHAR2(60),
    契約日                         CHAR(8),
    CONSTRAINT SYS_C0025561 PRIMARY KEY (契約番号, ＷＫ連番, 端末番号) USING INDEX
)
/
