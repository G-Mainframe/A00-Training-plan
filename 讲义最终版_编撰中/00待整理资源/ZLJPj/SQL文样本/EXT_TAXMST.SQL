DROP TABLE EXT_TAXMST;
CREATE TABLE EXT_TAXMST(
    基準年                        CHAR(4)          NOT NULL,
    納付先コード                  CHAR(6)          NOT NULL,
    納付先名                      VARCHAR2(40)     NOT NULL,
    銀行コード                    CHAR(4)          NOT NULL,
    銀行名漢字                    VARCHAR2(30)     NOT NULL,
    銀行名カナ                    VARCHAR2(15)     NOT NULL,
    報償金区分                    NUMBER(1, 0)     NOT NULL,
    納付方法                      NUMBER(1, 0)     NOT NULL,
    自動引落                      CHAR(1)          NOT NULL,
    納付期限１                    CHAR(8)          NOT NULL,
    納付期限２                    CHAR(8)          NOT NULL,
    納付期限３                    CHAR(8)          NOT NULL,
    納付期限４                    CHAR(8)          NOT NULL,
    納付日１                      CHAR(8)          NOT NULL,
    納付日２                      CHAR(8)          NOT NULL,
    納付日３                      CHAR(8)          NOT NULL,
    納付日４                      CHAR(8)          NOT NULL,
    報償金入金日                  CHAR(8)          NOT NULL,
    不動産税区分                  NUMBER(1, 0)     NOT NULL,
    処理区分                      NUMBER(1, 0)     NOT NULL,
    作業区分                      NUMBER(2, 0)     NOT NULL,
    更新標識                      NUMBER(1, 0)     NOT NULL,
    税率                          NUMBER(9, 7)     NOT NULL,
    課税標準額                    NUMBER(13, 0)    NOT NULL,
    税額                          NUMBER(13, 0)    NOT NULL,
    報償金                        NUMBER(13, 0)    NOT NULL,
    納付金額１                    NUMBER(13, 0)    NOT NULL,
    納付金額２                    NUMBER(13, 0)    NOT NULL,
    納付金額３                    NUMBER(13, 0)    NOT NULL,
    納付金額４                    NUMBER(13, 0)    NOT NULL,
    不動産税額                    NUMBER(13, 0)    NOT NULL,
    不動産税報償金                NUMBER(13, 0)    NOT NULL,
    分割納付限度                  NUMBER(13, 0)    NOT NULL,
    理論金額                      NUMBER(13, 0)    NOT NULL,
    決定額                        NUMBER(13, 0)    NOT NULL,
    不動産報奨金入金日            CHAR(8)          NOT NULL,
    課税標準額_土地建物           NUMBER(13, 0)    NOT NULL,
    決定額_土地建物               NUMBER(13, 0)    NOT NULL,
    理論金額_土地建物             NUMBER(13, 0)    NOT NULL,
    集約申告先コード              CHAR(6)          NOT NULL,
    課税標準額_通知書             NUMBER(13, 0)    NOT NULL,
    課税標準額_土地建物_通知書    NUMBER(13, 0)    NOT NULL,
    課税標準額_土地_通知書        NUMBER(13, 0)    NOT NULL,
    課税標準額_建物_通知書        NUMBER(13, 0)    NOT NULL,
    登録年月日                    CHAR(8)          NOT NULL,
    登録時間                      CHAR(8)          NOT NULL,
    登録担当者                    CHAR(8)          NOT NULL,
    更新年月日                    CHAR(8)          NOT NULL,
    更新時間                      CHAR(8)          NOT NULL,
    入力担当者コード              CHAR(8)          NOT NULL,
    更新者                        CHAR(8)          NOT NULL,
    決定額_合計                   NUMBER(13, 0)    NOT NULL,
    備考                          VARCHAR2(60)     NOT NULL,
    CONSTRAINT PK253 PRIMARY KEY (基準年, 納付先コード)
) 
;


COMMENT ON TABLE EXT_TAXMST IS '納税マスタ'
;
COMMENT ON COLUMN EXT_TAXMST.基準年 IS '納税する年'
;
COMMENT ON COLUMN EXT_TAXMST.納付先コード IS '納税する納付先コード'
;
COMMENT ON COLUMN EXT_TAXMST.納付先名 IS '納付先の名称（全角）'
;
COMMENT ON COLUMN EXT_TAXMST.銀行コード IS '金融機関コード仕様書（No021）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.銀行名漢字 IS '銀行名(全角）'
;
COMMENT ON COLUMN EXT_TAXMST.銀行名カナ IS '未使用　銀行名(半角カナ）'
;
COMMENT ON COLUMN EXT_TAXMST.報償金区分 IS '報奨金コード　コード仕様書（No.C19）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.納付方法 IS '課税／区分　納付方法　コード仕様書（No.A90）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.自動引落 IS '自動引落　コード仕様書（No.A85）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.納付期限１ IS '第１期の納付期限'
;
COMMENT ON COLUMN EXT_TAXMST.納付期限２ IS '第２期の納付期限'
;
COMMENT ON COLUMN EXT_TAXMST.納付期限３ IS '第３期の納付期限'
;
COMMENT ON COLUMN EXT_TAXMST.納付期限４ IS '第４期の納付期限'
;
COMMENT ON COLUMN EXT_TAXMST.納付日１ IS '第１期の納付日（予定）'
;
COMMENT ON COLUMN EXT_TAXMST.納付日２ IS '第２期の納付日（予定）'
;
COMMENT ON COLUMN EXT_TAXMST.納付日３ IS '第３期の納付日（予定）'
;
COMMENT ON COLUMN EXT_TAXMST.納付日４ IS '第４期の納付日（予定）'
;
COMMENT ON COLUMN EXT_TAXMST.報償金入金日 IS '償却資産の報奨金入金日（実績）'
;
COMMENT ON COLUMN EXT_TAXMST.不動産税区分 IS '不動産税区分　コード仕様書（No.A91）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.処理区分 IS '固定資産税処理区分　コード仕様書（No.A78）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.作業区分 IS '作業区分　コード仕様書（No.A80）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.更新標識 IS '更新標識　コード仕様書（No.A79）を参照'
;
COMMENT ON COLUMN EXT_TAXMST.税率 IS '固定資産税の税率'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額 IS '課税標準額（申告）'
;
COMMENT ON COLUMN EXT_TAXMST.税額 IS '納付税額'
;
COMMENT ON COLUMN EXT_TAXMST.報償金 IS '納付額を全納する際の報奨金額'
;
COMMENT ON COLUMN EXT_TAXMST.納付金額１ IS '第１期の納付金額'
;
COMMENT ON COLUMN EXT_TAXMST.納付金額２ IS '第２期の納付金額'
;
COMMENT ON COLUMN EXT_TAXMST.納付金額３ IS '第３期の納付金額'
;
COMMENT ON COLUMN EXT_TAXMST.納付金額４ IS '第４期の納付金額'
;
COMMENT ON COLUMN EXT_TAXMST.不動産税額 IS '未使用　「理論金額＿土地建物」と「決定額＿土地建物」に変更'
;
COMMENT ON COLUMN EXT_TAXMST.不動産税報償金 IS '不動産税の報奨金'
;
COMMENT ON COLUMN EXT_TAXMST.分割納付限度 IS '分割納付・一括納付を判定する際の限度額'
;
COMMENT ON COLUMN EXT_TAXMST.理論金額 IS '課税標準額、税率より計算した理論上の納付額'
;
COMMENT ON COLUMN EXT_TAXMST.決定額 IS '償却資産の税額（納付書）'
;
COMMENT ON COLUMN EXT_TAXMST.不動産報奨金入金日 IS '不動産資産資産の報奨金入金日（実績）'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額_土地建物 IS '未使用　土地建物の固定資産税の基となる基準額'
;
COMMENT ON COLUMN EXT_TAXMST.決定額_土地建物 IS '不動産の税額（土地建物）'
;
COMMENT ON COLUMN EXT_TAXMST.理論金額_土地建物 IS '未使用　課税標準額（土地建物）、税率より計算した理論上の納付額'
;
COMMENT ON COLUMN EXT_TAXMST.集約申告先コード IS '政令指定都市で集約して納付をする際の納付先コード'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額_通知書 IS '納付書の償却資産の課税標準額'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額_土地建物_通知書 IS '納付書の不動産評価額'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額_土地_通知書 IS '納付書の評価額（土地）'
;
COMMENT ON COLUMN EXT_TAXMST.課税標準額_建物_通知書 IS '納付書の評価額（家屋）'
;
COMMENT ON COLUMN EXT_TAXMST.登録年月日 IS '初期登録した日付'
;
COMMENT ON COLUMN EXT_TAXMST.登録時間 IS '初期登録した時間'
;
COMMENT ON COLUMN EXT_TAXMST.登録担当者 IS '初期登録した入力担当者コード'
;
COMMENT ON COLUMN EXT_TAXMST.更新年月日 IS '更新した時の日付'
;
COMMENT ON COLUMN EXT_TAXMST.更新時間 IS '更新した時の時間'
;
COMMENT ON COLUMN EXT_TAXMST.入力担当者コード IS '更新した時の入力担当者コード（バッチの場合は、プログラムのＩＤ）'
;
COMMENT ON COLUMN EXT_TAXMST.更新者 IS '更新した時のプログラムのＩＤ'
;
COMMENT ON COLUMN EXT_TAXMST.決定額_合計 IS '償却資産税額と不動産税額の合計'
;
COMMENT ON COLUMN EXT_TAXMST.備考 IS '納税処理の備考'
;
