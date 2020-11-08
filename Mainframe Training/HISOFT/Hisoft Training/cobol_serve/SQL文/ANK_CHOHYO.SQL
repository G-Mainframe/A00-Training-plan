CREATE TABLE ANK_CHOHYO
(
    連番                           NUMBER(4,0) NOT NULL,
    帳票１                         NUMBER(1,0),
    帳票２                         NUMBER(1,0),
    帳票３                         NUMBER(1,0),
    帳票４                         NUMBER(1,0),
    帳票５                         NUMBER(1,0),
    帳票６                         NUMBER(1,0),
    帳票７                         NUMBER(1,0),
    帳票８                         NUMBER(1,0),
    支払開始日                     CHAR(8),
    購入金額非表示区分             NUMBER(1,0),
    料率非表示区分                 NUMBER(1,0),
    特約文言非表示区分             NUMBER(1,0),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0021830 PRIMARY KEY (連番) USING INDEX
)
/
