CREATE TABLE D46KYR_TBL
(
    契約番号                       CHAR(10) NOT NULL,
    再リース回数                   NUMBER(2,0) NOT NULL,
    申請連番                       NUMBER(2,0) NOT NULL,
    解約承継区分                   CHAR(1) NOT NULL,
    解約連番                       NUMBER(2,0) NOT NULL,
    解約年月日                     CHAR(8) NOT NULL,
    解約区分                       CHAR(1) NOT NULL,
    解約理由                       CHAR(2) NOT NULL,
    承継種類                       CHAR(1) NOT NULL,
    協調転区分                     CHAR(1) NOT NULL,
    債務協調コード                 CHAR(2) NOT NULL,
    経過月数                       NUMBER(3,0) NOT NULL,
    契約件名                       VARCHAR2(40) NOT NULL,
    代表解約物件番号               NUMBER(4,0) NOT NULL,
    継続諸費用                     NUMBER(13,0) NOT NULL,
    残リース料                     NUMBER(13,0) NOT NULL,
    減額法１１０                   NUMBER(13,0) NOT NULL,
    減額法１０５                   NUMBER(13,0) NOT NULL,
    保険価格１１０                 NUMBER(13,0) NOT NULL,
    実質元本残１０５               NUMBER(13,0) NOT NULL,
    実質未回収元本残               NUMBER(13,0) NOT NULL,
    未徴収固定資産税               NUMBER(13,0) NOT NULL,
    未徴収保険料                   NUMBER(13,0) NOT NULL,
    未徴収合計額                   NUMBER(13,0) NOT NULL,
    実質元本残１０２               NUMBER(13,0) NOT NULL,
    解約計上粗利                   NUMBER(13,0) NOT NULL,
    法定定額償却額残高             NUMBER(13,0) NOT NULL,
    法定定率償却額残高             NUMBER(13,0) NOT NULL,
    解約物件耐用年数               NUMBER(2,0) NOT NULL,
    解約物件保険料率               NUMBER(10,8) NOT NULL,
    申請年月日                     CHAR(8) NOT NULL,
    解約処理年月                   CHAR(6) NOT NULL,
    取消区分                       CHAR(1) NOT NULL,
    解約取消エントリ日             CHAR(8) NOT NULL,
    解約取消処理年月               CHAR(6) NOT NULL,
    解約申請フラグ                 CHAR(1) NOT NULL,
    営業意見                       VARCHAR2(160) NOT NULL,
    解約以降調達利息約定           NUMBER(13,0) NOT NULL,
    解約以降調達利息売上           NUMBER(13,0) NOT NULL,
    登録年月日                     CHAR(8) NOT NULL,
    登録時間                       CHAR(8) NOT NULL,
    登録担当者                     CHAR(8) NOT NULL,
    更新年月日                     CHAR(8) NOT NULL,
    更新時間                       CHAR(8) NOT NULL,
    更新者                         CHAR(8) NOT NULL,
    入力担当者コード               CHAR(8) NOT NULL,
    CONSTRAINT PK266 PRIMARY KEY (契約番号, 再リース回数, 申請連番)
)
/
COMMENT ON TABLE D46KYR_TBL IS '解約履歴'
/
COMMENT ON COLUMN D46KYR_TBL.契約番号 IS 'コード仕様書(No.056)を参照　承継は承継元契約番号'
/
COMMENT ON COLUMN D46KYR_TBL.再リース回数 IS '再リースの回数を管理するコード　　　承継は、承継元'
/
COMMENT ON COLUMN D46KYR_TBL.申請連番 IS '同一契約内での解約履歴通し連番（解約、承継共通）'
/
COMMENT ON COLUMN D46KYR_TBL.解約承継区分 IS '０：解約　　１：承継'
/
COMMENT ON COLUMN D46KYR_TBL.解約連番 IS '同一契約内での解約、承継それぞれの連番'
/
COMMENT ON COLUMN D46KYR_TBL.解約年月日 IS '中途解約年月日　承継年月日'
/
COMMENT ON COLUMN D46KYR_TBL.解約区分 IS 'コード仕様書(No.067)を参照　承継区分　一部、全部'
/
COMMENT ON COLUMN D46KYR_TBL.解約理由 IS 'コード仕様書(No.068)を参照　承継種類　承継、請求分割、契約分割'
/
COMMENT ON COLUMN D46KYR_TBL.承継種類 IS 'コード仕様書（No.C05）を参照'
/
COMMENT ON COLUMN D46KYR_TBL.協調転区分 IS '協調、転であるかの識別   コード仕様書(No.058)'
/
COMMENT ON COLUMN D46KYR_TBL.債務協調コード IS '債務協調コード　コード仕様書（№B31）'
/
COMMENT ON COLUMN D46KYR_TBL.経過月数 IS '解約、承継年月日までの経過契約期間'
/
COMMENT ON COLUMN D46KYR_TBL.契約件名 IS '契約件名(全角)　一部解約、承継の場合更新される'
/
COMMENT ON COLUMN D46KYR_TBL.代表解約物件番号 IS '申請書表示の解約物件名称、処分内容を代表する物件番号'
/
COMMENT ON COLUMN D46KYR_TBL.継続諸費用 IS '採算費用展開（期中費用など）のうち継続部分（旧雑費）'
/
COMMENT ON COLUMN D46KYR_TBL.残リース料 IS '解約対象債権額合計。「残存リース料」'
/
COMMENT ON COLUMN D46KYR_TBL.減額法１１０ IS '契約単位の１１０％減額法による残債権'
/
COMMENT ON COLUMN D46KYR_TBL.減額法１０５ IS '契約単位の１０５％減額法による残債権'
/
COMMENT ON COLUMN D46KYR_TBL.保険価格１１０ IS '契約単位の１１０％保険価格計算による規定損失金'
/
COMMENT ON COLUMN D46KYR_TBL.実質元本残１０５ IS '契約単位の１０５％実質元本残'
/
COMMENT ON COLUMN D46KYR_TBL.実質未回収元本残 IS '契約単位の実質未回収元本残高'
/
COMMENT ON COLUMN D46KYR_TBL.未徴収固定資産税 IS '契約単位の未徴収固定資産税（未徴収ＴＡＸ）'
/
COMMENT ON COLUMN D46KYR_TBL.未徴収保険料 IS '契約単位の未徴収動産総合保険料'
/
COMMENT ON COLUMN D46KYR_TBL.未徴収合計額 IS '契約単位の未徴収合計額（丸め処理後）'
/
COMMENT ON COLUMN D46KYR_TBL.実質元本残１０２ IS '債権ごとの１０２％実質元本残'
/
COMMENT ON COLUMN D46KYR_TBL.解約計上粗利 IS '業計上に計上する解約採算粗利額'
/
COMMENT ON COLUMN D46KYR_TBL.法定定額償却額残高 IS '法定定額法による解約物件の理論簿価合計'
/
COMMENT ON COLUMN D46KYR_TBL.法定定率償却額残高 IS '法定定率法による解約物件の理論簿価合計'
/
COMMENT ON COLUMN D46KYR_TBL.解約物件耐用年数 IS '解約物件の耐用年数加重平均（申請書項目）'
/
COMMENT ON COLUMN D46KYR_TBL.解約物件保険料率 IS '解約物件の保険料率加重平均（申請書項目）'
/
COMMENT ON COLUMN D46KYR_TBL.申請年月日 IS '入力された申請書作成年月日'
/
COMMENT ON COLUMN D46KYR_TBL.解約処理年月 IS '中途解約計上年月　（解約確定が行われた日付）'
/
COMMENT ON COLUMN D46KYR_TBL.取消区分 IS '解約が取り消されているか否かを識別する区分    0:取消なし、１:取消あり'
/
COMMENT ON COLUMN D46KYR_TBL.解約取消エントリ日 IS '中途解約取消の入力日'
/
COMMENT ON COLUMN D46KYR_TBL.解約取消処理年月 IS '中途解約取消の処理年月'
/
COMMENT ON COLUMN D46KYR_TBL.解約申請フラグ IS '中途解約申請の進捗を示す区分　コード仕様（No.736）'
/
COMMENT ON COLUMN D46KYR_TBL.営業意見 IS '申請書表示の営業意見'
/
COMMENT ON COLUMN D46KYR_TBL.解約以降調達利息約定 IS '解約日以降の支払利息合計（適用金利、約定元本ベース）'
/
COMMENT ON COLUMN D46KYR_TBL.解約以降調達利息売上 IS '解約日以降の支払利息合計（適用金利、売上元本ベース）'
/
COMMENT ON COLUMN D46KYR_TBL.登録年月日 IS '初期登録を行った年月日'
/
COMMENT ON COLUMN D46KYR_TBL.登録時間 IS '初期登録を行った時間'
/
COMMENT ON COLUMN D46KYR_TBL.登録担当者 IS '初期登録を行った入力者の担当者コード'
/
COMMENT ON COLUMN D46KYR_TBL.更新年月日 IS '最終更新を行った年月日'
/
COMMENT ON COLUMN D46KYR_TBL.更新時間 IS '最終更新を行った時間'
/
COMMENT ON COLUMN D46KYR_TBL.更新者 IS 'データを作成、更新したＰＧのＩＤ'
/
COMMENT ON COLUMN D46KYR_TBL.入力担当者コード IS 'データ入力した担当者コード'
/
