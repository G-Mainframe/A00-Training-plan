CREATE TABLE POK_KEIYAKU_KONYUM
(
    メーカーコード                 CHAR(2) NOT NULL,
    購入先名                       VARCHAR2(60),
    購入先住所                     VARCHAR2(100),
    ディーラーコード               CHAR(5),
    支払条件文言                   VARCHAR2(50),
    CONSTRAINT SYS_C0028233 PRIMARY KEY (メーカーコード) USING INDEX
)
/
