CREATE TABLE COM_MSG
(
    メッセージＩＤ                 CHAR(6) NOT NULL,
    メッセージ                     VARCHAR2(100) NOT NULL,
    CONSTRAINT P_COM_MSG PRIMARY KEY (メッセージＩＤ) USING INDEX
)
/
