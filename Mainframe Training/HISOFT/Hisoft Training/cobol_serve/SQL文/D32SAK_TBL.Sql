DROP TABLE D32SAK_TBL;
CREATE TABLE D32SAK_TBL(
    契約番号                      CHAR(10)         NOT NULL,
    再リース回数                  NUMBER(2, 0)     NOT NULL,
    契約種類                      CHAR(3)          NOT NULL,
    契約件名                      VARCHAR2(40)     NOT NULL,
    請求件名                      VARCHAR2(60)     NOT NULL,
    変則払                        CHAR(1)          NOT NULL,
    当初月額料金                  NUMBER(13, 0)    NOT NULL,
    当初消費税区分                CHAR(2)          NOT NULL,
    当初消費税額                  NUMBER(13, 0)    NOT NULL,
    当初契約総額                  NUMBER(13, 0)    NOT NULL,
    当初消費税総額                NUMBER(13, 0)    NOT NULL,
    最新月額料金                  NUMBER(13, 0)    NOT NULL,
    最新消費税区分                CHAR(2)          NOT NULL,
    最新消費税額                  NUMBER(13, 0)    NOT NULL,
    最新契約総額                  NUMBER(13, 0)    NOT NULL,
    最新消費税総額                NUMBER(13, 0)    NOT NULL,
    保守無償期間                  NUMBER(3, 0)     NOT NULL,
    状態フラグ                    CHAR(1)          NOT NULL,
    解約フラグ                    CHAR(1)          NOT NULL,
    解約年月日                    CHAR(8)          NOT NULL,
    解約区分                      CHAR(1)          NOT NULL,
    解約理由                      CHAR(2)          NOT NULL,
    解約回数                      NUMBER(2, 0)     NOT NULL,
    最新履歴解約日                CHAR(8)          NOT NULL,
    回収額                        NUMBER(13, 0)    NOT NULL,
    消費税回収額                  NUMBER(13, 0)    NOT NULL,
    最新回収日                    CHAR(8)          NOT NULL,
    管理債権レベル                CHAR(1)          NOT NULL,
    割賦原価総額                  NUMBER(13, 0)    NOT NULL,
    割賦利益総額                  NUMBER(13, 0)    NOT NULL,
    取得価額                      NUMBER(13, 0)    NOT NULL,
    遡及解約フラグ                CHAR(1)          NOT NULL,
    解約処理年月                  CHAR(6)          NOT NULL,
    解約エントリ日                CHAR(8)          NOT NULL,
    満了フラグ                    CHAR(1)          NOT NULL,
    満了年月日                    CHAR(8)          NOT NULL,
    解約申請フラグ                CHAR(1)          NOT NULL,
    解約申請日                    CHAR(8)          NOT NULL,
    回収条件変更フラグ            CHAR(1)          NOT NULL,
    回収条件変更回数              NUMBER(2, 0)     NOT NULL,
    回収条件変更日                CHAR(8)          NOT NULL,
    前払区分                      CHAR(1)          NOT NULL,
    次回再リース料                NUMBER(13, 0)    NOT NULL,
    再リース料金区分              CHAR(1)          NOT NULL,
    保守有無フラグ                CHAR(1)          NOT NULL,
    再リース自動作成フラグ        CHAR(1)          NOT NULL,
    再リース自動作成年月日        CHAR(8)          NOT NULL,
    更新年月日                    CHAR(8)          NOT NULL,
    更新時間                      CHAR(8)          NOT NULL,
    更新者                        CHAR(8)          NOT NULL,
    当初取得額                    NUMBER(13, 0)    NOT NULL,
    取得額現価                    NUMBER(13, 0)    NOT NULL,
    前払月数                      NUMBER(2, 0)     NOT NULL,
    次回再リース料消費税          NUMBER(13, 0)    NOT NULL,
    次回再リース料消費税区分      CHAR(2)          NOT NULL,
    請求回数                      NUMBER(3, 0)     NOT NULL,
    総回収回数                    NUMBER(3, 0)     NOT NULL,
    合算先契約種類                CHAR(3)          NOT NULL,
    今回再リース料金区分          CHAR(1)          NOT NULL,
    再リース手数料                NUMBER(13, 0)    NOT NULL,
    自振請求ストップ申請年月日    CHAR(8)          NOT NULL,
    自振請求ストップ申請部課      CHAR(4)          NOT NULL,
    自振請求ストップ申請者        CHAR(8)          NOT NULL,
    自振請求ストップ開始年月      CHAR(6)          NOT NULL,
    自振請求ストップ終了年月      CHAR(6)          NOT NULL,
    自振請求ストップ理由          CHAR(2)          NOT NULL,
    自振ストップエントリ日        CHAR(8)          NOT NULL,
    自振特別請求申請年月日        CHAR(8)          NOT NULL,
    自振特別請求申請部課          CHAR(4)          NOT NULL,
    自振特別請求申請者            CHAR(8)          NOT NULL,
    自振特別請求開始年月          CHAR(6)          NOT NULL,
    自振特別請求終了年月          CHAR(6)          NOT NULL,
    自振特別請求申請金額          NUMBER(13, 0)    NOT NULL,
    自振特別エントリ日            CHAR(8)          NOT NULL,
    支払次回再リース料            NUMBER(13, 0)    NOT NULL,
    委託保守区分                  CHAR(1)          NOT NULL,
    委託保守相当月額料金          NUMBER(13, 0)    NOT NULL,
    入力担当者コード              CHAR(8)          NOT NULL,
    その他契約種類区分            CHAR(1)          NOT NULL,
    取引先コード                  CHAR(9)          NOT NULL,
    請求先コード                  CHAR(5)          NOT NULL,
    粗利益額                      NUMBER(13, 0)    NOT NULL,
    粗利益額_表                   NUMBER(13, 0)    NOT NULL,
    手形受取日                    CHAR(8)          NOT NULL,
    手形枚数                      NUMBER(3, 0)     NOT NULL,
    自社分月額料金                NUMBER(13, 0)    NOT NULL,
    自社分月額消費税              NUMBER(13, 0)    NOT NULL,
    自社分契約総額                NUMBER(13, 0)    NOT NULL,
    自社分消費税総額              NUMBER(13, 0)    NOT NULL,
    他社購入額                    NUMBER(13, 0)    NOT NULL,
    残価設定額                    NUMBER(13, 0)    NOT NULL,
    他社残価設定額                NUMBER(13, 0)    NOT NULL,
    他社回収額                    NUMBER(13, 0)    NOT NULL,
    他社回収額消費税              NUMBER(13, 0)    NOT NULL,
    他社割賦原価総額              NUMBER(13, 0)    NOT NULL,
    他社割賦利益総額              NUMBER(13, 0)    NOT NULL,
    再リース手数料回収額          NUMBER(13, 0)    NOT NULL,
    再リース手数料回収日          CHAR(8)          NOT NULL,
    売却代手数料                  NUMBER(13, 0)    NOT NULL,
    再リース自社残価設定額        NUMBER(13, 0)    NOT NULL,
    再リース他社残価設定額        NUMBER(13, 0)    NOT NULL,
    当初割賦原価総額              NUMBER(13, 0)    NOT NULL,
    当初割賦利益総額              NUMBER(13, 0)    NOT NULL,
    当初割賦原価総額自社          NUMBER(13, 0)    NOT NULL,
    当初割賦利益総額自社          NUMBER(13, 0)    NOT NULL,
    当初諸費用総額                NUMBER(13, 0)    NOT NULL,
    債務勘定処理コード            CHAR(2)          NOT NULL,
    消費税長期_実績               NUMBER(13, 0)    NOT NULL,
    勘定処理コード                CHAR(2)          NOT NULL,
    債権買取区分                  CHAR(1)          NOT NULL,
    当初月額料金総額分            NUMBER(13, 0)    NOT NULL,
    当初消費税額総額分            NUMBER(13, 0)    NOT NULL,
    最新月額料金総額分            NUMBER(13, 0)    NOT NULL,
    最新消費税額総額分            NUMBER(13, 0)    NOT NULL,
    最新契約総額総額分            NUMBER(13, 0)    NOT NULL,
    最新消費税総額総額分          NUMBER(13, 0)    NOT NULL,
    取得価額総額分                NUMBER(13, 0)    NOT NULL,
    当初取得額総額分              NUMBER(13, 0)    NOT NULL,
    次回再リース料総額分          NUMBER(13, 0)    NOT NULL,
    次回再リース料消費税総額分    NUMBER(13, 0)    NOT NULL,
    残価回収サイト                NUMBER(4, 2)     NOT NULL,
    リスケ前契約総額              NUMBER(13, 0)    NOT NULL,
    消費税徴収区分                CHAR(1)          NOT NULL,
    登録年月日                    CHAR(8)          NOT NULL,
    登録時間                      CHAR(8)          NOT NULL,
    登録担当者                    CHAR(8)          NOT NULL,
    自振請求金額変更理由          CHAR(2)          NOT NULL,
    自社分次回再リース料          NUMBER(13, 0)    NOT NULL,
    自社分次回再リース料消費税    NUMBER(13, 0)    NOT NULL,
    設置場所区分                  NUMBER(1, 0)     NOT NULL,
    当初契約総額総額分            NUMBER(13, 0)    NOT NULL,
    当初消費税総額総額分          NUMBER(13, 0)    NOT NULL,
    自社購入額                    NUMBER(13, 0)    NOT NULL,
    自社残価設定額                NUMBER(13, 0)    NOT NULL,
    自社元本総額                  NUMBER(13, 0)    NOT NULL,
    自社売上利息総額              NUMBER(13, 0)    NOT NULL,
    自社利息総額                  NUMBER(13, 0)    NOT NULL,
    自社諸費用総額                NUMBER(13, 0)    NOT NULL,
    自社固定資産税総額            NUMBER(13, 0)    NOT NULL,
    自社動総保険総額              NUMBER(13, 0)    NOT NULL,
    自社委託保守料総額            NUMBER(13, 0)    NOT NULL,
    自社その他諸費用総額          NUMBER(13, 0)    NOT NULL,
    自社分支払費用適用合計        NUMBER(13, 0)    NOT NULL,
    自社分支払費用一般合計        NUMBER(13, 0)    NOT NULL,
    元本総額                      NUMBER(13, 0)    NOT NULL,
    利息総額                      NUMBER(13, 0)    NOT NULL,
    諸費用総額                    NUMBER(13, 0)    NOT NULL,
    CONSTRAINT PK12_8 PRIMARY KEY (契約番号, 再リース回数, 契約種類)
) 
;


COMMENT ON TABLE D32SAK_TBL IS '債権 '
;
COMMENT ON COLUMN D32SAK_TBL.契約番号 IS '契約番号'
;
COMMENT ON COLUMN D32SAK_TBL.再リース回数 IS '再リース回数'
;
COMMENT ON COLUMN D32SAK_TBL.契約種類 IS '商品を管理するコード       コード仕様書（No.040）'
;
COMMENT ON COLUMN D32SAK_TBL.契約件名 IS '債権単位の契約件名(全角)'
;
COMMENT ON COLUMN D32SAK_TBL.請求件名 IS '債権単位に請求書の明細を出力するときの件名(全角)    （No.74）'
;
COMMENT ON COLUMN D32SAK_TBL.変則払 IS '変則払いが有るか否かを識別する '
;
COMMENT ON COLUMN D32SAK_TBL.当初月額料金 IS '契約時の月額料金'
;
COMMENT ON COLUMN D32SAK_TBL.当初消費税区分 IS '契約時の消費税区分'
;
COMMENT ON COLUMN D32SAK_TBL.当初消費税額 IS '契約時の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.当初契約総額 IS '契約時の契約総額'
;
COMMENT ON COLUMN D32SAK_TBL.当初消費税総額 IS '契約時の契約総額の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.最新月額料金 IS '契約時以降の最新月額料金(一部解約時は一部解約後の料金)'
;
COMMENT ON COLUMN D32SAK_TBL.最新消費税区分 IS '契約時以降の最新消費税区分(一部解約時は一部解約後の消費税率区分)'
;
COMMENT ON COLUMN D32SAK_TBL.最新消費税額 IS '契約時以降の最新月額料金の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.最新契約総額 IS '最新状態の契約総額'
;
COMMENT ON COLUMN D32SAK_TBL.最新消費税総額 IS '最新状態の最新契約総額の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.保守無償期間 IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.状態フラグ IS '契約の状態を表す。(契約内容と同じ)      コード仕様書（No.721）'
;
COMMENT ON COLUMN D32SAK_TBL.解約フラグ IS '債権単位に解約済か否かを識別する。    コード仕様書（No.722）'
;
COMMENT ON COLUMN D32SAK_TBL.解約年月日 IS '解約フラグ=1の場合の解約日'
;
COMMENT ON COLUMN D32SAK_TBL.解約区分 IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.解約理由 IS '中途解約時の理由     コード仕様書（No.068）'
;
COMMENT ON COLUMN D32SAK_TBL.解約回数 IS '解約の回数　　（一部解約の場合、複数回有り）'
;
COMMENT ON COLUMN D32SAK_TBL.最新履歴解約日 IS '解約履歴の最新日付'
;
COMMENT ON COLUMN D32SAK_TBL.回収額 IS '回収済の総額(税抜き)'
;
COMMENT ON COLUMN D32SAK_TBL.消費税回収額 IS '回収済の消費税総額'
;
COMMENT ON COLUMN D32SAK_TBL.最新回収日 IS '直近の回収年月日'
;
COMMENT ON COLUMN D32SAK_TBL.管理債権レベル IS '管理債権レベル　 コード仕様書（№867）'
;
COMMENT ON COLUMN D32SAK_TBL.割賦原価総額 IS '割賦原価の総額　　*割賦契約、立替は必須'
;
COMMENT ON COLUMN D32SAK_TBL.割賦利益総額 IS '割賦利益の総額　　*割賦契約、立替は必須'
;
COMMENT ON COLUMN D32SAK_TBL.取得価額 IS '債権の契約種類に該当する物件の取得価額の累計'
;
COMMENT ON COLUMN D32SAK_TBL.遡及解約フラグ IS '遡及解約があるか否かの識別　　'
;
COMMENT ON COLUMN D32SAK_TBL.解約処理年月 IS '解約した年月'
;
COMMENT ON COLUMN D32SAK_TBL.解約エントリ日 IS '中途解約確定した業務年月'
;
COMMENT ON COLUMN D32SAK_TBL.満了フラグ IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.満了年月日 IS '契約内容の満了予定日'
;
COMMENT ON COLUMN D32SAK_TBL.解約申請フラグ IS '中途解約の申請有無を識別   コード仕様書（No.736）'
;
COMMENT ON COLUMN D32SAK_TBL.解約申請日 IS '中途解約の申請日'
;
COMMENT ON COLUMN D32SAK_TBL.回収条件変更フラグ IS '回収条件の変更有無を識別　　'
;
COMMENT ON COLUMN D32SAK_TBL.回収条件変更回数 IS '回収条件を変更した回数'
;
COMMENT ON COLUMN D32SAK_TBL.回収条件変更日 IS '回収条件を変更した日付'
;
COMMENT ON COLUMN D32SAK_TBL.前払区分 IS '前受リース料があるか否かを識別   コード仕様書（No.702）'
;
COMMENT ON COLUMN D32SAK_TBL.次回再リース料 IS '次回再リース料'
;
COMMENT ON COLUMN D32SAK_TBL.再リース料金区分 IS '再リース料が年額か月額かを識別      コード仕様書(No.060)'
;
COMMENT ON COLUMN D32SAK_TBL.保守有無フラグ IS '保守の有無を識別'
;
COMMENT ON COLUMN D32SAK_TBL.再リース自動作成フラグ IS '再リース契約を自動作成するか否かを識別'
;
COMMENT ON COLUMN D32SAK_TBL.再リース自動作成年月日 IS '再リース契約を自動作成した年月日'
;
COMMENT ON COLUMN D32SAK_TBL.更新年月日 IS '債権テーブルの更新日付'
;
COMMENT ON COLUMN D32SAK_TBL.更新時間 IS '債権テーブルの更新時刻'
;
COMMENT ON COLUMN D32SAK_TBL.更新者 IS '債権テーブルの更新したＰＧのＩＤ'
;
COMMENT ON COLUMN D32SAK_TBL.当初取得額 IS '契約時の物件購入金額'
;
COMMENT ON COLUMN D32SAK_TBL.取得額現価 IS '物件の取得額現価'
;
COMMENT ON COLUMN D32SAK_TBL.前払月数 IS '前受リース料がある場合の前受月数'
;
COMMENT ON COLUMN D32SAK_TBL.次回再リース料消費税 IS '次回再リース料消費税'
;
COMMENT ON COLUMN D32SAK_TBL.次回再リース料消費税区分 IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.請求回数 IS '請求した回数'
;
COMMENT ON COLUMN D32SAK_TBL.総回収回数 IS '回収する回数'
;
COMMENT ON COLUMN D32SAK_TBL.合算先契約種類 IS '請求書を合算で出力する際の合算先の契約種類　　コード仕様書(No.040)'
;
COMMENT ON COLUMN D32SAK_TBL.今回再リース料金区分 IS '今回の再リース料金が年額か月額かを識別 コード仕様書(No.060)'
;
COMMENT ON COLUMN D32SAK_TBL.再リース手数料 IS '再リース手数料'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ申請年月日 IS '自振請求停止の申請日'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ申請部課 IS '自振請求停止の申請部課コード'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ申請者 IS '自振請求停止の申請者'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ開始年月 IS '自振請求の停止開始日'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ終了年月 IS '自振請求の停止終了日'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求ストップ理由 IS '自振請求の停止理由'
;
COMMENT ON COLUMN D32SAK_TBL.自振ストップエントリ日 IS '自振請求停止のエントリ日'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求申請年月日 IS '特別請求の申請年月日'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求申請部課 IS '特別請求の申請部課コード'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求申請者 IS '特別請求の申請者'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求開始年月 IS '特別請求の開始年月'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求終了年月 IS '特別請求の終了年月'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別請求申請金額 IS '特別請求の申請金額'
;
COMMENT ON COLUMN D32SAK_TBL.自振特別エントリ日 IS '自振特別請求のエントリ日'
;
COMMENT ON COLUMN D32SAK_TBL.支払次回再リース料 IS '協調/転（幹事）時の他リース会社へ支払う次回再リース料'
;
COMMENT ON COLUMN D32SAK_TBL.委託保守区分 IS '委託保守付きの債権か否かを識別     コード仕様書（No.830）'
;
COMMENT ON COLUMN D32SAK_TBL.委託保守相当月額料金 IS '委託保守相当月額料金(リース料に対するメンテ料相当分)'
;
COMMENT ON COLUMN D32SAK_TBL.入力担当者コード IS '債権テーブルの更新担当者コード'
;
COMMENT ON COLUMN D32SAK_TBL.その他契約種類区分 IS '通常契約種類かその他契約種類かを識別   コード仕様書（No.873）'
;
COMMENT ON COLUMN D32SAK_TBL.取引先コード IS '請求先取引先コード'
;
COMMENT ON COLUMN D32SAK_TBL.請求先コード IS '請求先請求先コード'
;
COMMENT ON COLUMN D32SAK_TBL.粗利益額 IS '債権単位の粗利益額'
;
COMMENT ON COLUMN D32SAK_TBL.粗利益額_表 IS '債権単位の表の粗利益額'
;
COMMENT ON COLUMN D32SAK_TBL.手形受取日 IS '手形の受取日'
;
COMMENT ON COLUMN D32SAK_TBL.手形枚数 IS '受取った手形の枚数'
;
COMMENT ON COLUMN D32SAK_TBL.自社分月額料金 IS '協調(幹事)の場合、自社分の月額料金(月額料金 - 協調の支払額)'
;
COMMENT ON COLUMN D32SAK_TBL.自社分月額消費税 IS '協調(幹事)の場合、自社分の消費税(消費税 - 協調の支払消費税)'
;
COMMENT ON COLUMN D32SAK_TBL.自社分契約総額 IS '協調(幹事)の場合、自社分の契約総額(契約総額 -  協調の支払額総額)'
;
COMMENT ON COLUMN D32SAK_TBL.自社分消費税総額 IS '協調(幹事)の場合、自社分の契約総額(消費税総額 -  協調の支払消費税総額)'
;
COMMENT ON COLUMN D32SAK_TBL.他社購入額 IS '債権の契約種類に該当する物件の他社購入額の累計'
;
COMMENT ON COLUMN D32SAK_TBL.残価設定額 IS '債権の契約種類に該当する物件の残価設定の累計'
;
COMMENT ON COLUMN D32SAK_TBL.他社残価設定額 IS '債権の契約種類に該当する物件の他社残価設定の累計'
;
COMMENT ON COLUMN D32SAK_TBL.他社回収額 IS '協調(幹事)の場合、他社売上に対する回収額'
;
COMMENT ON COLUMN D32SAK_TBL.他社回収額消費税 IS '協調(幹事)の場合、他社売上に対する回収額消費税'
;
COMMENT ON COLUMN D32SAK_TBL.他社割賦原価総額 IS '割賦原価の総額　－　自社割賦原価の総額　　*割賦契約、立替は必須'
;
COMMENT ON COLUMN D32SAK_TBL.他社割賦利益総額 IS '割賦利益の総額　－　自社割賦利益の総額　　*割賦契約、立替は必須'
;
COMMENT ON COLUMN D32SAK_TBL.再リース手数料回収額 IS '再リース手数料の回収額'
;
COMMENT ON COLUMN D32SAK_TBL.再リース手数料回収日 IS '再リース手数料の回収日'
;
COMMENT ON COLUMN D32SAK_TBL.売却代手数料 IS '裏会社への売却する際の手数料'
;
COMMENT ON COLUMN D32SAK_TBL.再リース自社残価設定額 IS '再リース時の自社分の残価設定額'
;
COMMENT ON COLUMN D32SAK_TBL.再リース他社残価設定額 IS '再リース時の他社分の残価設定額'
;
COMMENT ON COLUMN D32SAK_TBL.当初割賦原価総額 IS '検収時点の割賦原価の総額'
;
COMMENT ON COLUMN D32SAK_TBL.当初割賦利益総額 IS '検収時点の割賦利益の総額(諸費用総額を含む)※割賦展開のΣ利息+諸費用'
;
COMMENT ON COLUMN D32SAK_TBL.当初割賦原価総額自社 IS '検収時点の割賦原価の総額(自社持分)'
;
COMMENT ON COLUMN D32SAK_TBL.当初割賦利益総額自社 IS '検収時点の割賦利益の総額(諸費用総額を含む)※割賦展開のΣ利息+諸費用(自社持分)'
;
COMMENT ON COLUMN D32SAK_TBL.当初諸費用総額 IS '諸費用(動産保険、固定資産、等)の割賦展開の合計'
;
COMMENT ON COLUMN D32SAK_TBL.債務勘定処理コード IS '債務(協調、斡旋)側の勘定処理コード'
;
COMMENT ON COLUMN D32SAK_TBL.消費税長期_実績 IS '割賦(総額型)の時、未収入金（消費税長期）の計上済合計。（承継で雑損雑益計上した場合はこの項目に加算する。規定損失金計上は対象外）'
;
COMMENT ON COLUMN D32SAK_TBL.勘定処理コード IS '勘定処理コード　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D32SAK_TBL.債権買取区分 IS '債権を買取ったかどうかを識別'
;
COMMENT ON COLUMN D32SAK_TBL.当初月額料金総額分 IS '協調幹事で持分請求時の総額分、契約時の月額料金'
;
COMMENT ON COLUMN D32SAK_TBL.当初消費税額総額分 IS '協調幹事で持分請求時の総額分、契約時の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.最新月額料金総額分 IS '協調幹事で持分請求時の総額分、契約時以降の最新月額料金(一部解約時は一部解約後の料金)'
;
COMMENT ON COLUMN D32SAK_TBL.最新消費税額総額分 IS '協調幹事で持分請求時の総額分、契約時以降の最新月額料金の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.最新契約総額総額分 IS '協調幹事で持分請求時の総額分、契約時以降の契約総額'
;
COMMENT ON COLUMN D32SAK_TBL.最新消費税総額総額分 IS '協調幹事で持分請求時の総額分、契約時以降の契約総額の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.取得価額総額分 IS '協調幹事で持分請求時の総額分、債権の契約種類に該当する物件の取得価額の累計'
;
COMMENT ON COLUMN D32SAK_TBL.当初取得額総額分 IS '協調幹事で持分請求時の総額分、契約時の物件購入金額'
;
COMMENT ON COLUMN D32SAK_TBL.次回再リース料総額分 IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.次回再リース料消費税総額分 IS '未使用'
;
COMMENT ON COLUMN D32SAK_TBL.残価回収サイト IS '残価の回収サイト'
;
COMMENT ON COLUMN D32SAK_TBL.リスケ前契約総額 IS 'リスケジュール前の契約総額'
;
COMMENT ON COLUMN D32SAK_TBL.消費税徴収区分 IS '月額消費税を一括で回収するか分割で回収するかを識別'
;
COMMENT ON COLUMN D32SAK_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D32SAK_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D32SAK_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D32SAK_TBL.自振請求金額変更理由 IS '自振事前変更で引落金額を変更する際に入力する理由'
;
COMMENT ON COLUMN D32SAK_TBL.自社分次回再リース料 IS '協調(幹事)の場合、自社分の次回再リース料'
;
COMMENT ON COLUMN D32SAK_TBL.自社分次回再リース料消費税 IS '協調(幹事)の場合、自社分の次回再リース料消費税'
;
COMMENT ON COLUMN D32SAK_TBL.設置場所区分 IS '債権の契約種類に該当する物件の設置場所を識別する。コード仕様書（No.929）'
;
COMMENT ON COLUMN D32SAK_TBL.当初契約総額総額分 IS '協調幹事で持分請求時の総額分、契約時の契約総額'
;
COMMENT ON COLUMN D32SAK_TBL.当初消費税総額総額分 IS '協調幹事で持分請求時の総額分、契約時の契約総額の消費税額'
;
COMMENT ON COLUMN D32SAK_TBL.自社購入額 IS '債権の契約種類毎に該当する物件の自社購入額の累計'
;
COMMENT ON COLUMN D32SAK_TBL.自社残価設定額 IS '債権の契約種類に該当する物件の自社残価設定額の累計'
;
COMMENT ON COLUMN D32SAK_TBL.自社元本総額 IS '債権展開で回収済みの元本合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社売上利息総額 IS '債権展開で回収済みの利息合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社利息総額 IS '債権展開で回収済の自社分合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社諸費用総額 IS '債権展開で回収済の自社分消費税合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社固定資産税総額 IS '債権展開の自社売上元本の合計　また　金融展開の自社元本の合計　（債権自社元本として同額）'
;
COMMENT ON COLUMN D32SAK_TBL.自社動総保険総額 IS '債権展開の自社売上利息の合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社委託保守料総額 IS '金融展開の自社利息の合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社その他諸費用総額 IS '金融展開の自社諸費用の合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社分支払費用適用合計 IS '債権展開の自社固定資産税の合計'
;
COMMENT ON COLUMN D32SAK_TBL.自社分支払費用一般合計 IS '債権展開の自社動総保険料の合計'
;
COMMENT ON COLUMN D32SAK_TBL.元本総額 IS '債権展開の自社委託保守料の合計'
;
COMMENT ON COLUMN D32SAK_TBL.利息総額 IS '債権展開の自社その他費用の合計'
;
COMMENT ON COLUMN D32SAK_TBL.諸費用総額 IS '債権展開の自社支払費用適用の合計'
;