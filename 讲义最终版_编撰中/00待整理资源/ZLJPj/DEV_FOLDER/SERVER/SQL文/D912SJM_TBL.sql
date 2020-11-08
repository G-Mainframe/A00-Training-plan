DROPTABLE D912SJM_TBL;
CREATE TABLE D912SJM_TBL(
    レコード区分                      CHAR(1)          NOT NULL,
    契約番号                          CHAR(10)         NOT NULL,
    再リース回数                      NUMBER(2, 0)     NOT NULL,
    契約種類                          CHAR(3)          NOT NULL,
    連番                              NUMBER(3, 0)     NOT NULL,
    月次年月                          CHAR(6)          NOT NULL,
    期首年月                          CHAR(6)          NOT NULL,
    期末年月                          CHAR(6)          NOT NULL,
    当日年月日                        CHAR(8)          NOT NULL,
    債権残高区分                      CHAR(2)          NOT NULL,
    オープンブラインド区分            CHAR(1)          NOT NULL,
    契約区分                          CHAR(1)          NOT NULL,
    主契約区分                        CHAR(1)          NOT NULL,
    契約先コード                      CHAR(5)          NOT NULL,
    勘定処理コード                    CHAR(2)          NOT NULL,
    担当部課コード                    CHAR(4)          NOT NULL,
    担当者コード                      CHAR(8)          NOT NULL,
    グループコード                    CHAR(9)          NOT NULL,
    請求先コード                      CHAR(5)          NOT NULL,
    支払先コード                      CHAR(5)          NOT NULL,
    請求先取引先コード                CHAR(9)          NOT NULL,
    契約先取引先コード                CHAR(9)          NOT NULL,
    支払取引先コード                  CHAR(9)          NOT NULL,
    状態フラグ                        CHAR(1)          NOT NULL,
    債務協調区分                      CHAR(2)          NOT NULL,
    前払区分                          CHAR(1)          NOT NULL,
    前払充当区分                      CHAR(1)          NOT NULL,
    解約フラグ                        CHAR(1)          NOT NULL,
    担保区分                          CHAR(1)          NOT NULL,
    債権流動化区分                    CHAR(1)          NOT NULL,
    請求書作成区分                    CHAR(1)          NOT NULL,
    消費税区分                        CHAR(2)          NOT NULL,
    消費税徴収区分                    CHAR(1)          NOT NULL,
    請求回                            NUMBER(3, 0)     NOT NULL,
    当月分請求回                      NUMBER(3, 0)     NOT NULL,
    総回収回数                        NUMBER(3, 0)     NOT NULL,
    成約日                            CHAR(8)          NOT NULL,
    成約年月                          CHAR(6)          NOT NULL,
    成約取消年月                      CHAR(6)          NOT NULL,
    成約取消エントリ日                CHAR(8)          NOT NULL,
    検収処理年月                      CHAR(6)          NOT NULL,
    検収エントリ日                    CHAR(8)          NOT NULL,
    検収取消日                        CHAR(8)          NOT NULL,
    検収取消エントリ日                CHAR(8)          NOT NULL,
    検収取消処理年月                  CHAR(6)          NOT NULL,
    再リース処理年月                  CHAR(6)          NOT NULL,
    再リース取消エントリ日            CHAR(8)          NOT NULL,
    解約年月日                        CHAR(8)          NOT NULL,
    契約日                            CHAR(8)          NOT NULL,
    契約開始日                        CHAR(8)          NOT NULL,
    契約終了日                        CHAR(8)          NOT NULL,
    引渡年月日                        CHAR(8)          NOT NULL,
    前受リース料入金日                CHAR(8)          NOT NULL,
    入金日                            CHAR(8)          NOT NULL,
    期間                              NUMBER(3, 0)     NOT NULL,
    流動化先                          CHAR(7)          NOT NULL,
    否認区分                          CHAR(1)          NOT NULL,
    据置期間                          NUMBER(2, 0)     NOT NULL,
    消費税率                          NUMBER(10, 8)    NOT NULL,
    金利                              NUMBER(10, 8)    NOT NULL,
    前受充当開始年月                  CHAR(6)          NOT NULL,
    前受充当開始年月日                CHAR(8)          NOT NULL,
    前受充当月数                      NUMBER(2, 0)     NOT NULL,
    前受充当年月日                    CHAR(8)          NOT NULL,
    前受充当済月数                    NUMBER(2, 0)     NOT NULL,
    初回回収予定日                    CHAR(8)          NOT NULL,
    最終回収予定日                    CHAR(8)          NOT NULL,
    取得価額                          NUMBER(13, 0)    NOT NULL,
    契約金額                          NUMBER(13, 0)    NOT NULL,
    契約金額自社分                    NUMBER(13, 0)    NOT NULL,
    契約金額消費税                    NUMBER(13, 0)    NOT NULL,
    契約金額消費税自社分              NUMBER(13, 0)    NOT NULL,
    前払総額                          NUMBER(13, 0)    NOT NULL,
    前払金額自社分                    NUMBER(13, 0)    NOT NULL,
    前払総額消費税                    NUMBER(13, 0)    NOT NULL,
    前払金額消費税自社分              NUMBER(13, 0)    NOT NULL,
    元本総額                          NUMBER(13, 0)    NOT NULL,
    元本総額自社分                    NUMBER(13, 0)    NOT NULL,
    利息総額                          NUMBER(13, 0)    NOT NULL,
    利息総額自社分                    NUMBER(13, 0)    NOT NULL,
    諸費用総額                        NUMBER(13, 0)    NOT NULL,
    諸費用総額自社分                  NUMBER(13, 0)    NOT NULL,
    固定資産税総額                    NUMBER(13, 0)    NOT NULL,
    動総保険料総額                    NUMBER(13, 0)    NOT NULL,
    支払利息適用総額                  NUMBER(13, 0)    NOT NULL,
    支払利息一般総額                  NUMBER(13, 0)    NOT NULL,
    委託保守料総額                    NUMBER(13, 0)    NOT NULL,
    契約済未検収金額                  NUMBER(13, 0)    NOT NULL,
    契約済未検収消費税金額            NUMBER(13, 0)    NOT NULL,
    決裁済未成約金額                  NUMBER(13, 0)    NOT NULL,
    決裁済未成約消費税金額            NUMBER(13, 0)    NOT NULL,
    残価区分                          CHAR(1)          NOT NULL,
    残価設定額                        NUMBER(13, 0)    NOT NULL,
    自社残価設定額                    NUMBER(13, 0)    NOT NULL,
    税込残価設定額                    NUMBER(13, 0)    NOT NULL,
    税込残価設定額自社                NUMBER(13, 0)    NOT NULL,
    信用保険料残高金額                NUMBER(13, 0)    NOT NULL,
    信用保険料残高消費税金額          NUMBER(13, 0)    NOT NULL,
    当月計上額                        NUMBER(13, 0)    NOT NULL,
    当月計上額自社分                  NUMBER(13, 0)    NOT NULL,
    当月計上消費税額                  NUMBER(13, 0)    NOT NULL,
    当月計上消費税額自社分            NUMBER(13, 0)    NOT NULL,
    当月前受計上額                    NUMBER(13, 0)    NOT NULL,
    当月前受計上額自社分              NUMBER(13, 0)    NOT NULL,
    当月前受計上額消費税              NUMBER(13, 0)    NOT NULL,
    当月前受計上額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月計上元本                      NUMBER(13, 0)    NOT NULL,
    当月計上自社元本                  NUMBER(13, 0)    NOT NULL,
    当月計上利息                      NUMBER(13, 0)    NOT NULL,
    当月計上自社利息                  NUMBER(13, 0)    NOT NULL,
    当月計上諸費用総額                NUMBER(13, 0)    NOT NULL,
    当月計上諸費用自社分              NUMBER(13, 0)    NOT NULL,
    当月計上固定資産税                NUMBER(13, 0)    NOT NULL,
    当月計上動総保険料                NUMBER(13, 0)    NOT NULL,
    当月計上支払利息適用              NUMBER(13, 0)    NOT NULL,
    当月計上支払利息一般              NUMBER(13, 0)    NOT NULL,
    当月計上委託保守料                NUMBER(13, 0)    NOT NULL,
    前期末年月                        CHAR(6)          NOT NULL,
    前期末請求回                      NUMBER(3, 0)     NOT NULL,
    前期末債権残高                    NUMBER(13, 0)    NOT NULL,
    前期末債権残高自社分              NUMBER(13, 0)    NOT NULL,
    前期末消費税債権残高              NUMBER(13, 0)    NOT NULL,
    前期末消費税債権残高自社分        NUMBER(13, 0)    NOT NULL,
    前期末約定債権残高                NUMBER(13, 0)    NOT NULL,
    前期末約定債権残高自社分          NUMBER(13, 0)    NOT NULL,
    前期末約定消費税債権残高          NUMBER(13, 0)    NOT NULL,
    前期末約定消費税債権残高自社分    NUMBER(13, 0)    NOT NULL,
    前期末前受金残高                  NUMBER(13, 0)    NOT NULL,
    前期末前受金残高自社分            NUMBER(13, 0)    NOT NULL,
    前期末前受金消費税残高            NUMBER(13, 0)    NOT NULL,
    前期末前受金消費税残高自社分      NUMBER(13, 0)    NOT NULL,
    前期末約定元本残高                NUMBER(13, 0)    NOT NULL,
    前期末約定利息残高                NUMBER(13, 0)    NOT NULL,
    前期末実質元本残高                NUMBER(13, 0)    NOT NULL,
    前期末実質利息残高                NUMBER(13, 0)    NOT NULL,
    前期末売上残高                    NUMBER(13, 0)    NOT NULL,
    前期末売上残高消費税              NUMBER(13, 0)    NOT NULL,
    前期末諸費用残高                  NUMBER(13, 0)    NOT NULL,
    前期末諸費用残高自社分            NUMBER(13, 0)    NOT NULL,
    前期末割賦原価残高                NUMBER(13, 0)    NOT NULL,
    前期末割賦原価残高自社分          NUMBER(13, 0)    NOT NULL,
    前期末割賦原価未実現利益          NUMBER(13, 0)    NOT NULL,
    前期末割賦原価未実現利益自社分    NUMBER(13, 0)    NOT NULL,
    前期末固定資産税残高              NUMBER(13, 0)    NOT NULL,
    前期末動総保険料残高              NUMBER(13, 0)    NOT NULL,
    前期末支払利息適用残高            NUMBER(13, 0)    NOT NULL,
    前期末支払利息一般残高            NUMBER(13, 0)    NOT NULL,
    前期末委託保守料残高              NUMBER(13, 0)    NOT NULL,
    前期末売上元本残高                NUMBER(13, 0)    NOT NULL,
    前期末売上利息残高                NUMBER(13, 0)    NOT NULL,
    前期迄回収額                      NUMBER(13, 0)    NOT NULL,
    前期迄回収額自社分                NUMBER(13, 0)    NOT NULL,
    前期迄消費税回収額                NUMBER(13, 0)    NOT NULL,
    前期迄消費税回収額自社分          NUMBER(13, 0)    NOT NULL,
    前期迄回収予定額                  NUMBER(13, 0)    NOT NULL,
    前期迄回収予定額自社分            NUMBER(13, 0)    NOT NULL,
    前期迄回収予定額消費税            NUMBER(13, 0)    NOT NULL,
    前期迄回収予定額消費税自社分      NUMBER(13, 0)    NOT NULL,
    前期迄前受回収額                  NUMBER(13, 0)    NOT NULL,
    前期迄前受回収額自社分            NUMBER(13, 0)    NOT NULL,
    前期迄前受回収額消費税            NUMBER(13, 0)    NOT NULL,
    前期迄前受回収額消費税自社分      NUMBER(13, 0)    NOT NULL,
    前期迄未徴収金                    NUMBER(13, 0)    NOT NULL,
    前期迄未徴収金自社分              NUMBER(13, 0)    NOT NULL,
    前期迄未徴収金消費税              NUMBER(13, 0)    NOT NULL,
    前期迄未徴収金消費税自社分        NUMBER(13, 0)    NOT NULL,
    前期迄約定元本                    NUMBER(13, 0)    NOT NULL,
    前期迄約定利息                    NUMBER(13, 0)    NOT NULL,
    前期迄実質元本                    NUMBER(13, 0)    NOT NULL,
    前期迄実質利息                    NUMBER(13, 0)    NOT NULL,
    前期迄未徴収元本                  NUMBER(13, 0)    NOT NULL,
    前期迄未徴収利息                  NUMBER(13, 0)    NOT NULL,
    前期迄売上額                      NUMBER(13, 0)    NOT NULL,
    前期迄売上額消費税                NUMBER(13, 0)    NOT NULL,
    前期迄諸費用                      NUMBER(13, 0)    NOT NULL,
    前期迄諸費用自社分                NUMBER(13, 0)    NOT NULL,
    前期迄金融元本                    NUMBER(13, 0)    NOT NULL,
    前期迄金融元本自社分              NUMBER(13, 0)    NOT NULL,
    前期迄金融利息                    NUMBER(13, 0)    NOT NULL,
    前期迄金融利息自社分              NUMBER(13, 0)    NOT NULL,
    前期迄固定資産税                  NUMBER(13, 0)    NOT NULL,
    前期迄動総保険料                  NUMBER(13, 0)    NOT NULL,
    前期迄支払利息適用                NUMBER(13, 0)    NOT NULL,
    前期迄支払利息一般                NUMBER(13, 0)    NOT NULL,
    前期迄委託保守料                  NUMBER(13, 0)    NOT NULL,
    前期迄売上元本                    NUMBER(13, 0)    NOT NULL,
    前期迄売上利息                    NUMBER(13, 0)    NOT NULL,
    当期回収実績額                    NUMBER(13, 0)    NOT NULL,
    当期回収実績額自社分              NUMBER(13, 0)    NOT NULL,
    当期回収実績額消費税              NUMBER(13, 0)    NOT NULL,
    当期回収実績額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当期回収予定額                    NUMBER(13, 0)    NOT NULL,
    当期回収予定額自社分              NUMBER(13, 0)    NOT NULL,
    当期回収予定額消費税              NUMBER(13, 0)    NOT NULL,
    当期回収予定額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当期前受回収額                    NUMBER(13, 0)    NOT NULL,
    当期前受回収額自社分              NUMBER(13, 0)    NOT NULL,
    当期前受回収額消費税              NUMBER(13, 0)    NOT NULL,
    当期前受回収額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当期未徴収金                      NUMBER(13, 0)    NOT NULL,
    当期未徴収金自社分                NUMBER(13, 0)    NOT NULL,
    当期未徴収金消費税                NUMBER(13, 0)    NOT NULL,
    当期未徴収金消費税自社分          NUMBER(13, 0)    NOT NULL,
    当期約定元本                      NUMBER(13, 0)    NOT NULL,
    当期約定利息                      NUMBER(13, 0)    NOT NULL,
    当期実質元本                      NUMBER(13, 0)    NOT NULL,
    当期実質利息                      NUMBER(13, 0)    NOT NULL,
    当期未徴収元本                    NUMBER(13, 0)    NOT NULL,
    当期未徴収利息                    NUMBER(13, 0)    NOT NULL,
    当期売上額                        NUMBER(13, 0)    NOT NULL,
    当期売上額消費税                  NUMBER(13, 0)    NOT NULL,
    当期諸費用                        NUMBER(13, 0)    NOT NULL,
    当期諸費用自社分                  NUMBER(13, 0)    NOT NULL,
    当期金融元本                      NUMBER(13, 0)    NOT NULL,
    当期金融元本自社分                NUMBER(13, 0)    NOT NULL,
    当期金融利息                      NUMBER(13, 0)    NOT NULL,
    当期金融利息自社分                NUMBER(13, 0)    NOT NULL,
    当期固定資産税                    NUMBER(13, 0)    NOT NULL,
    当期動総保険料                    NUMBER(13, 0)    NOT NULL,
    当期支払利息適用                  NUMBER(13, 0)    NOT NULL,
    当期支払利息一般                  NUMBER(13, 0)    NOT NULL,
    当期委託保守料                    NUMBER(13, 0)    NOT NULL,
    当期売上元本                      NUMBER(13, 0)    NOT NULL,
    当期売上利息                      NUMBER(13, 0)    NOT NULL,
    前月末債権残高                    NUMBER(13, 0)    NOT NULL,
    前月末債権残高自社分              NUMBER(13, 0)    NOT NULL,
    前月末消費税債権残高              NUMBER(13, 0)    NOT NULL,
    前月末消費税債権残高自社分        NUMBER(13, 0)    NOT NULL,
    前月末約定債権残高                NUMBER(13, 0)    NOT NULL,
    前月末約定債権残高自社分          NUMBER(13, 0)    NOT NULL,
    前月末約定消費税債権残高          NUMBER(13, 0)    NOT NULL,
    前月末約定消費税債権残高自社分    NUMBER(13, 0)    NOT NULL,
    前月末前受金残高                  NUMBER(13, 0)    NOT NULL,
    前月末前受金残高自社分            NUMBER(13, 0)    NOT NULL,
    前月末前受金消費税残高            NUMBER(13, 0)    NOT NULL,
    前月末前受金消費税残高自社分      NUMBER(13, 0)    NOT NULL,
    前月末約定元本残高                NUMBER(13, 0)    NOT NULL,
    前月末約定利息残高                NUMBER(13, 0)    NOT NULL,
    前月末実質元本残高                NUMBER(13, 0)    NOT NULL,
    前月末実質利息残高                NUMBER(13, 0)    NOT NULL,
    前月末売上残高                    NUMBER(13, 0)    NOT NULL,
    前月末売上残高消費税              NUMBER(13, 0)    NOT NULL,
    前月末諸費用残高                  NUMBER(13, 0)    NOT NULL,
    前月末諸費用残高自社分            NUMBER(13, 0)    NOT NULL,
    前月末割賦原価残高                NUMBER(13, 0)    NOT NULL,
    前月末割賦原価残高自社分          NUMBER(13, 0)    NOT NULL,
    前月末割賦原価未実現利益          NUMBER(13, 0)    NOT NULL,
    前月末割賦原価未実現利益自社分    NUMBER(13, 0)    NOT NULL,
    前月末固定資産税残高              NUMBER(13, 0)    NOT NULL,
    前月末動総保険料残高              NUMBER(13, 0)    NOT NULL,
    前月末支払利息適用残高            NUMBER(13, 0)    NOT NULL,
    前月末支払利息一般残高            NUMBER(13, 0)    NOT NULL,
    前月末委託保守料残高              NUMBER(13, 0)    NOT NULL,
    前月末売上元本残高                NUMBER(13, 0)    NOT NULL,
    前月末売上利息残高                NUMBER(13, 0)    NOT NULL,
    前月迄回収額                      NUMBER(13, 0)    NOT NULL,
    前月迄回収額自社分                NUMBER(13, 0)    NOT NULL,
    前月迄消費税回収額                NUMBER(13, 0)    NOT NULL,
    前月迄消費税回収額自社分          NUMBER(13, 0)    NOT NULL,
    前月迄回収予定額                  NUMBER(13, 0)    NOT NULL,
    前月迄回収予定額自社分            NUMBER(13, 0)    NOT NULL,
    前月迄回収予定額消費税            NUMBER(13, 0)    NOT NULL,
    前月迄回収予定額消費税自社分      NUMBER(13, 0)    NOT NULL,
    前月迄前受回収額                  NUMBER(13, 0)    NOT NULL,
    前月迄前受回収額自社分            NUMBER(13, 0)    NOT NULL,
    前月迄前受回収額消費税            NUMBER(13, 0)    NOT NULL,
    前月迄前受回収額消費税自社分      NUMBER(13, 0)    NOT NULL,
    前月迄未徴収金                    NUMBER(13, 0)    NOT NULL,
    前月迄未徴収金自社分              NUMBER(13, 0)    NOT NULL,
    前月迄未徴収金消費税              NUMBER(13, 0)    NOT NULL,
    前月迄未徴収金消費税自社分        NUMBER(13, 0)    NOT NULL,
    前月迄約定元本                    NUMBER(13, 0)    NOT NULL,
    前月迄約定利息                    NUMBER(13, 0)    NOT NULL,
    前月迄実質元本                    NUMBER(13, 0)    NOT NULL,
    前月迄実質利息                    NUMBER(13, 0)    NOT NULL,
    前月迄未徴収元本                  NUMBER(13, 0)    NOT NULL,
    前月迄未徴収利息                  NUMBER(13, 0)    NOT NULL,
    前月迄売上額                      NUMBER(13, 0)    NOT NULL,
    前月迄売上額消費税                NUMBER(13, 0)    NOT NULL,
    前月迄諸費用                      NUMBER(13, 0)    NOT NULL,
    前月迄諸費用自社分                NUMBER(13, 0)    NOT NULL,
    前月迄金融元本                    NUMBER(13, 0)    NOT NULL,
    前月迄金融元本自社分              NUMBER(13, 0)    NOT NULL,
    前月迄金融利息                    NUMBER(13, 0)    NOT NULL,
    前月迄金融利息自社分              NUMBER(13, 0)    NOT NULL,
    前月迄固定資産税                  NUMBER(13, 0)    NOT NULL,
    前月迄動総保険料                  NUMBER(13, 0)    NOT NULL,
    前月迄支払利息適用                NUMBER(13, 0)    NOT NULL,
    前月迄支払利息一般                NUMBER(13, 0)    NOT NULL,
    前月迄委託保守料                  NUMBER(13, 0)    NOT NULL,
    前月迄売上元本                    NUMBER(13, 0)    NOT NULL,
    前月迄売上利息                    NUMBER(13, 0)    NOT NULL,
    前月迄社内金利利息適用            NUMBER(13, 0)    NOT NULL,
    前月迄社内金利利息一般            NUMBER(13, 0)    NOT NULL,
    当月末債権残高                    NUMBER(13, 0)    NOT NULL,
    当月末債権残高自社分              NUMBER(13, 0)    NOT NULL,
    当月末消費税債権残高              NUMBER(13, 0)    NOT NULL,
    当月末消費税債権残高自社分        NUMBER(13, 0)    NOT NULL,
    当月末約定債権残高                NUMBER(13, 0)    NOT NULL,
    当月末約定債権残高自社分          NUMBER(13, 0)    NOT NULL,
    当月末約定消費税債権残高          NUMBER(13, 0)    NOT NULL,
    当月末約定消費税債権残高自社分    NUMBER(13, 0)    NOT NULL,
    当月末前受金残高                  NUMBER(13, 0)    NOT NULL,
    当月末前受金残高自社分            NUMBER(13, 0)    NOT NULL,
    当月末前受金消費税残高            NUMBER(13, 0)    NOT NULL,
    当月末前受金消費税残高自社分      NUMBER(13, 0)    NOT NULL,
    当月末約定元本残高                NUMBER(13, 0)    NOT NULL,
    当月末約定利息残高                NUMBER(13, 0)    NOT NULL,
    当月末実質元本残高                NUMBER(13, 0)    NOT NULL,
    当月末実質利息残高                NUMBER(13, 0)    NOT NULL,
    当月末売上残高                    NUMBER(13, 0)    NOT NULL,
    当月末売上残高消費税              NUMBER(13, 0)    NOT NULL,
    当月末諸費用残高                  NUMBER(13, 0)    NOT NULL,
    当月末諸費用残高自社分            NUMBER(13, 0)    NOT NULL,
    当月末割賦原価残高                NUMBER(13, 0)    NOT NULL,
    当月末割賦原価残高自社分          NUMBER(13, 0)    NOT NULL,
    当月末割賦原価未実現利益          NUMBER(13, 0)    NOT NULL,
    当月末割賦原価未実現利益自社分    NUMBER(13, 0)    NOT NULL,
    当月末固定資産税残高              NUMBER(13, 0)    NOT NULL,
    当月末動総保険料残高              NUMBER(13, 0)    NOT NULL,
    当月末支払利息適用残高            NUMBER(13, 0)    NOT NULL,
    当月末支払利息一般残高            NUMBER(13, 0)    NOT NULL,
    当月末委託保守料残高              NUMBER(13, 0)    NOT NULL,
    当月末売上元本残高                NUMBER(13, 0)    NOT NULL,
    当月末売上利息残高                NUMBER(13, 0)    NOT NULL,
    当月末前受収益                    NUMBER(13, 0)    NOT NULL,
    当月末未収収益                    NUMBER(13, 0)    NOT NULL,
    当月迄回収額                      NUMBER(13, 0)    NOT NULL,
    当月迄回収額自社分                NUMBER(13, 0)    NOT NULL,
    当月迄消費税回収額                NUMBER(13, 0)    NOT NULL,
    当月迄消費税回収額自社分          NUMBER(13, 0)    NOT NULL,
    当月迄回収予定額                  NUMBER(13, 0)    NOT NULL,
    当月迄回収予定額自社分            NUMBER(13, 0)    NOT NULL,
    当月迄回収予定額消費税            NUMBER(13, 0)    NOT NULL,
    当月迄回収予定額消費税自社分      NUMBER(13, 0)    NOT NULL,
    当月迄前受回収額                  NUMBER(13, 0)    NOT NULL,
    当月迄前受回収額自社分            NUMBER(13, 0)    NOT NULL,
    当月迄前受回収額消費税            NUMBER(13, 0)    NOT NULL,
    当月迄前受回収額消費税自社分      NUMBER(13, 0)    NOT NULL,
    当月迄未徴収金                    NUMBER(13, 0)    NOT NULL,
    当月迄未徴収金自社分              NUMBER(13, 0)    NOT NULL,
    当月迄未徴収金消費税              NUMBER(13, 0)    NOT NULL,
    当月迄未徴収金消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月迄約定元本                    NUMBER(13, 0)    NOT NULL,
    当月迄約定利息                    NUMBER(13, 0)    NOT NULL,
    当月迄実質元本                    NUMBER(13, 0)    NOT NULL,
    当月迄実質利息                    NUMBER(13, 0)    NOT NULL,
    当月迄未徴収元本                  NUMBER(13, 0)    NOT NULL,
    当月迄未徴収利息                  NUMBER(13, 0)    NOT NULL,
    当月迄売上額                      NUMBER(13, 0)    NOT NULL,
    当月迄売上額消費税                NUMBER(13, 0)    NOT NULL,
    当月迄諸費用                      NUMBER(13, 0)    NOT NULL,
    当月迄諸費用自社分                NUMBER(13, 0)    NOT NULL,
    当月迄金融元本                    NUMBER(13, 0)    NOT NULL,
    当月迄金融元本自社分              NUMBER(13, 0)    NOT NULL,
    当月迄金融利息                    NUMBER(13, 0)    NOT NULL,
    当月迄金融利息自社分              NUMBER(13, 0)    NOT NULL,
    当月迄固定資産税                  NUMBER(13, 0)    NOT NULL,
    当月迄動総保険料                  NUMBER(13, 0)    NOT NULL,
    当月迄支払利息適用                NUMBER(13, 0)    NOT NULL,
    当月迄支払利息一般                NUMBER(13, 0)    NOT NULL,
    当月迄委託保守料                  NUMBER(13, 0)    NOT NULL,
    当月迄売上元本                    NUMBER(13, 0)    NOT NULL,
    当月迄売上利息                    NUMBER(13, 0)    NOT NULL,
    当月迄社内金利利息適用            NUMBER(13, 0)    NOT NULL,
    当月迄社内金利利息一般            NUMBER(13, 0)    NOT NULL,
    当月回収実績額                    NUMBER(13, 0)    NOT NULL,
    当月回収実績額自社分              NUMBER(13, 0)    NOT NULL,
    当月回収実績額消費税              NUMBER(13, 0)    NOT NULL,
    当月回収実績額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月回収予定額                    NUMBER(13, 0)    NOT NULL,
    当月回収予定額自社分              NUMBER(13, 0)    NOT NULL,
    当月回収予定額消費税              NUMBER(13, 0)    NOT NULL,
    当月回収予定額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月前受回収額                    NUMBER(13, 0)    NOT NULL,
    当月前受回収額自社分              NUMBER(13, 0)    NOT NULL,
    当月前受回収額消費税              NUMBER(13, 0)    NOT NULL,
    当月前受回収額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月未徴収金                      NUMBER(13, 0)    NOT NULL,
    当月未徴収金自社分                NUMBER(13, 0)    NOT NULL,
    当月未徴収金消費税                NUMBER(13, 0)    NOT NULL,
    当月未徴収金消費税自社分          NUMBER(13, 0)    NOT NULL,
    当月約定元本                      NUMBER(13, 0)    NOT NULL,
    当月約定利息                      NUMBER(13, 0)    NOT NULL,
    当月実質元本                      NUMBER(13, 0)    NOT NULL,
    当月実質利息                      NUMBER(13, 0)    NOT NULL,
    当月未徴収元本                    NUMBER(13, 0)    NOT NULL,
    当月未徴収利息                    NUMBER(13, 0)    NOT NULL,
    当月売上額                        NUMBER(13, 0)    NOT NULL,
    当月売上額消費税                  NUMBER(13, 0)    NOT NULL,
    当月諸費用                        NUMBER(13, 0)    NOT NULL,
    当月諸費用自社分                  NUMBER(13, 0)    NOT NULL,
    当月金融元本                      NUMBER(13, 0)    NOT NULL,
    当月金融元本自社分                NUMBER(13, 0)    NOT NULL,
    当月金融利息                      NUMBER(13, 0)    NOT NULL,
    当月金融利息自社分                NUMBER(13, 0)    NOT NULL,
    当月固定資産税                    NUMBER(13, 0)    NOT NULL,
    当月動総保険料                    NUMBER(13, 0)    NOT NULL,
    当月支払利息適用                  NUMBER(13, 0)    NOT NULL,
    当月支払利息一般                  NUMBER(13, 0)    NOT NULL,
    当月委託保守料                    NUMBER(13, 0)    NOT NULL,
    当月売上元本                      NUMBER(13, 0)    NOT NULL,
    当月売上利息                      NUMBER(13, 0)    NOT NULL,
    当月社内金利利息適用              NUMBER(13, 0)    NOT NULL,
    当月社内金利利息一般              NUMBER(13, 0)    NOT NULL,
    当月調整額                        NUMBER(13, 0)    NOT NULL,
    当月調整額自社分                  NUMBER(13, 0)    NOT NULL,
    当月消費税調整額                  NUMBER(13, 0)    NOT NULL,
    当月消費税調整額自社分            NUMBER(13, 0)    NOT NULL,
    当月約定調整額                    NUMBER(13, 0)    NOT NULL,
    当月約定調整額自社分              NUMBER(13, 0)    NOT NULL,
    当月約定調整額消費税              NUMBER(13, 0)    NOT NULL,
    当月約定調整額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月前受調整額                    NUMBER(13, 0)    NOT NULL,
    当月前受調整額自社分              NUMBER(13, 0)    NOT NULL,
    当月前受調整額消費税              NUMBER(13, 0)    NOT NULL,
    当月前受調整額消費税自社分        NUMBER(13, 0)    NOT NULL,
    当月約定元本調整額                NUMBER(13, 0)    NOT NULL,
    当月約定利息調整額                NUMBER(13, 0)    NOT NULL,
    当月実質元本調整額                NUMBER(13, 0)    NOT NULL,
    当月実質利息調整額                NUMBER(13, 0)    NOT NULL,
    当月売上調整額                    NUMBER(13, 0)    NOT NULL,
    当月売上調整額消費税              NUMBER(13, 0)    NOT NULL,
    当月諸費用調整額                  NUMBER(13, 0)    NOT NULL,
    当月諸費用調整額自社分            NUMBER(13, 0)    NOT NULL,
    当月金融元本調整額                NUMBER(13, 0)    NOT NULL,
    当月金融元本調整額自社分          NUMBER(13, 0)    NOT NULL,
    当月金融利息調整額                NUMBER(13, 0)    NOT NULL,
    当月金融利息調整額自社分          NUMBER(13, 0)    NOT NULL,
    当月固定資産税調整額              NUMBER(13, 0)    NOT NULL,
    当月動総保険料調整額              NUMBER(13, 0)    NOT NULL,
    当月支払利息調整額適用            NUMBER(13, 0)    NOT NULL,
    当月支払利息調整額一般            NUMBER(13, 0)    NOT NULL,
    当月委託保守料調整額              NUMBER(13, 0)    NOT NULL,
    当月売上元本調整額                NUMBER(13, 0)    NOT NULL,
    当月売上利息調整額                NUMBER(13, 0)    NOT NULL,
    登録年月日                        CHAR(8)          NOT NULL,
    登録時間                          CHAR(8)          NOT NULL,
    登録担当者                        CHAR(8)          NOT NULL,
    更新年月日                        CHAR(8)          NOT NULL,
    更新時間                          CHAR(8)          NOT NULL,
    更新者                            CHAR(8)          NOT NULL,
    CONSTRAINT PK370 PRIMARY KEY (レコード区分, 契約番号, 再リース回数, 契約種類, 連番)
) 
;


COMMENT ON TABLE D912SJM_TBL IS '月次債権情報テーブル'
;
COMMENT ON COLUMN D912SJM_TBL.レコード区分 IS '未使用　固定"1"'
;
COMMENT ON COLUMN D912SJM_TBL.契約番号 IS '債権．契約番号'
;
COMMENT ON COLUMN D912SJM_TBL.再リース回数 IS '債権．再リース回数'
;
COMMENT ON COLUMN D912SJM_TBL.契約種類 IS '債権．契約種類'
;
COMMENT ON COLUMN D912SJM_TBL.連番 IS '未使用　固定ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.月次年月 IS '業務日付管理マスタ．業務年月'
;
COMMENT ON COLUMN D912SJM_TBL.期首年月 IS '業務日付管理マスタ．業務期首'
;
COMMENT ON COLUMN D912SJM_TBL.期末年月 IS '業務日付管理マスタ．業務期末'
;
COMMENT ON COLUMN D912SJM_TBL.当日年月日 IS '業務日付管理マスタ．業務年月'
;
COMMENT ON COLUMN D912SJM_TBL.債権残高区分 IS '別紙「債権残高区分」参照'
;
COMMENT ON COLUMN D912SJM_TBL.オープンブラインド区分 IS '契約内容．オープンブラインド区分'
;
COMMENT ON COLUMN D912SJM_TBL.契約区分 IS '契約内容．契約区分'
;
COMMENT ON COLUMN D912SJM_TBL.主契約区分 IS '契約内容．主契約区分'
;
COMMENT ON COLUMN D912SJM_TBL.契約先コード IS '契約内容．契約先コード'
;
COMMENT ON COLUMN D912SJM_TBL.勘定処理コード IS '債権．勘定処理コード'
;
COMMENT ON COLUMN D912SJM_TBL.担当部課コード IS '契約内容．担当部課コード'
;
COMMENT ON COLUMN D912SJM_TBL.担当者コード IS '契約内容．担当者コード'
;
COMMENT ON COLUMN D912SJM_TBL.グループコード IS 'グループマスタ．グループコード'
;
COMMENT ON COLUMN D912SJM_TBL.請求先コード IS '契約内容．請求先コード'
;
COMMENT ON COLUMN D912SJM_TBL.支払先コード IS '買掛．支払支払先コード
　　（条件：MIN（買掛．買掛連番）　AND　ＭＩＮ（買掛．連番）'
;
COMMENT ON COLUMN D912SJM_TBL.請求先取引先コード IS '契約内容．請求取引先コード'
;
COMMENT ON COLUMN D912SJM_TBL.契約先取引先コード IS '契約内容．取引先コード'
;
COMMENT ON COLUMN D912SJM_TBL.支払取引先コード IS '買掛．支払取引先コード
　　（条件：MIN（買掛．買掛連番）　AND　ＭＩＮ（買掛．連番）　'
;
COMMENT ON COLUMN D912SJM_TBL.状態フラグ IS '契約内容．状態フラグ'
;
COMMENT ON COLUMN D912SJM_TBL.債務協調区分 IS '契約内容．債務協調コード'
;
COMMENT ON COLUMN D912SJM_TBL.前払区分 IS '債権．前払区分'
;
COMMENT ON COLUMN D912SJM_TBL.前払充当区分 IS '債権展開．前払充当区分（当月分）'
;
COMMENT ON COLUMN D912SJM_TBL.解約フラグ IS '債権．解約フラグ'
;
COMMENT ON COLUMN D912SJM_TBL.担保区分 IS '契約内容．担保区分'
;
COMMENT ON COLUMN D912SJM_TBL.債権流動化区分 IS '契約内容．債権流動化区分'
;
COMMENT ON COLUMN D912SJM_TBL.請求書作成区分 IS '契約内容．請求書作成区分'
;
COMMENT ON COLUMN D912SJM_TBL.消費税区分 IS '債権．最新消費税区分'
;
COMMENT ON COLUMN D912SJM_TBL.消費税徴収区分 IS '債権．消費税徴収区分'
;
COMMENT ON COLUMN D912SJM_TBL.請求回 IS '債権．請求回数　　　　　　'
;
COMMENT ON COLUMN D912SJM_TBL.当月分請求回 IS '債権展開．請求回（当月分）'
;
COMMENT ON COLUMN D912SJM_TBL.総回収回数 IS '契約内容．総回収回数'
;
COMMENT ON COLUMN D912SJM_TBL.成約日 IS '契約内容．成約年月日'
;
COMMENT ON COLUMN D912SJM_TBL.成約年月 IS '契約内容．成約処理年月'
;
COMMENT ON COLUMN D912SJM_TBL.成約取消年月 IS '契約内容．成約取消年月'
;
COMMENT ON COLUMN D912SJM_TBL.成約取消エントリ日 IS '契約内容．成約取消エントリ日'
;
COMMENT ON COLUMN D912SJM_TBL.検収処理年月 IS '契約内容．検収処理年月'
;
COMMENT ON COLUMN D912SJM_TBL.検収エントリ日 IS '契約内容．検収エントリ日'
;
COMMENT ON COLUMN D912SJM_TBL.検収取消日 IS '契約内容．検収取消日'
;
COMMENT ON COLUMN D912SJM_TBL.検収取消エントリ日 IS '契約内容．検収取消エントリ日'
;
COMMENT ON COLUMN D912SJM_TBL.検収取消処理年月 IS '契約内容．検収取消年月'
;
COMMENT ON COLUMN D912SJM_TBL.再リース処理年月 IS '契約内容．再リース処理年月'
;
COMMENT ON COLUMN D912SJM_TBL.再リース取消エントリ日 IS '契約内容．再リース取消エントリ日'
;
COMMENT ON COLUMN D912SJM_TBL.解約年月日 IS '契約内容．解約年月日　　　'
;
COMMENT ON COLUMN D912SJM_TBL.契約日 IS '契約内容．成約年月日'
;
COMMENT ON COLUMN D912SJM_TBL.契約開始日 IS '契約内容．契約開始日'
;
COMMENT ON COLUMN D912SJM_TBL.契約終了日 IS '契約内容．契約終了日'
;
COMMENT ON COLUMN D912SJM_TBL.引渡年月日 IS '契約内容．引渡年月日'
;
COMMENT ON COLUMN D912SJM_TBL.前受リース料入金日 IS '前払金．回収年月日'
;
COMMENT ON COLUMN D912SJM_TBL.入金日 IS '債権展開．回収年月日'
;
COMMENT ON COLUMN D912SJM_TBL.期間 IS '契約内容．期間'
;
COMMENT ON COLUMN D912SJM_TBL.流動化先 IS '契約内容．流動化先'
;
COMMENT ON COLUMN D912SJM_TBL.否認区分 IS '契約内容．否認区分'
;
COMMENT ON COLUMN D912SJM_TBL.据置期間 IS '契約内容．以降回収サイト'
;
COMMENT ON COLUMN D912SJM_TBL.消費税率 IS '債権展開．消費税率（当月分）'
;
COMMENT ON COLUMN D912SJM_TBL.金利 IS '債権展開．金利（当月分）'
;
COMMENT ON COLUMN D912SJM_TBL.前受充当開始年月 IS '前払金．充当開始年月'
;
COMMENT ON COLUMN D912SJM_TBL.前受充当開始年月日 IS '前受充当初回の債権展開．回収予定日'
;
COMMENT ON COLUMN D912SJM_TBL.前受充当月数 IS '前払金．充当月数'
;
COMMENT ON COLUMN D912SJM_TBL.前受充当年月日 IS '前払金．充当年月日'
;
COMMENT ON COLUMN D912SJM_TBL.前受充当済月数 IS '前払金．充当済月数'
;
COMMENT ON COLUMN D912SJM_TBL.初回回収予定日 IS '債権展開．回収予定日の１回目（最小）'
;
COMMENT ON COLUMN D912SJM_TBL.最終回収予定日 IS '債権展開．回収予定日の最終回（最大）'
;
COMMENT ON COLUMN D912SJM_TBL.取得価額 IS '債権．取得価額　　債権の契約種類に該当する物件の取得価格の累計'
;
COMMENT ON COLUMN D912SJM_TBL.契約金額 IS '債権．最新契約総額'
;
COMMENT ON COLUMN D912SJM_TBL.契約金額自社分 IS '債権．自社分契約金額'
;
COMMENT ON COLUMN D912SJM_TBL.契約金額消費税 IS '債権．最新消費税総額'
;
COMMENT ON COLUMN D912SJM_TBL.契約金額消費税自社分 IS '債権．自社分消費税総額'
;
COMMENT ON COLUMN D912SJM_TBL.前払総額 IS '前払金．前払金額'
;
COMMENT ON COLUMN D912SJM_TBL.前払金額自社分 IS '前払金．自社前払金額'
;
COMMENT ON COLUMN D912SJM_TBL.前払総額消費税 IS '前払金．前払金額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前払金額消費税自社分 IS '前払金．自社前払金額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.元本総額 IS '債権．元本総額'
;
COMMENT ON COLUMN D912SJM_TBL.元本総額自社分 IS '債権．元本総額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.利息総額 IS '債権．利息総額'
;
COMMENT ON COLUMN D912SJM_TBL.利息総額自社分 IS '債権．利息総額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.諸費用総額 IS '債権．諸費用総額'
;
COMMENT ON COLUMN D912SJM_TBL.諸費用総額自社分 IS '債権．諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.固定資産税総額 IS '債権．固定資産税総額'
;
COMMENT ON COLUMN D912SJM_TBL.動総保険料総額 IS '債権．動総保険料総額'
;
COMMENT ON COLUMN D912SJM_TBL.支払利息適用総額 IS '債権．支払利息適用総額'
;
COMMENT ON COLUMN D912SJM_TBL.支払利息一般総額 IS '債権．支払利息一般総額'
;
COMMENT ON COLUMN D912SJM_TBL.委託保守料総額 IS '債権．委託保守料総額'
;
COMMENT ON COLUMN D912SJM_TBL.契約済未検収金額 IS '①状態フラグ　＝　２（成約済）の場合
　　債権．最新契約総額
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.契約済未検収消費税金額 IS '①状態フラグ　＝　２（成約済）の場合
　　債権．最新消費税総額
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.決裁済未成約金額 IS '①状態フラグ　＝　１（決裁済）の場合
　　債権．最新契約総額
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.決裁済未成約消費税金額 IS '①状態フラグ　＝　１（決裁済）の場合
　　債権．最新消費税総額
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.残価区分 IS '物件．残価区分（最初にヒットした残価区分）'
;
COMMENT ON COLUMN D912SJM_TBL.残価設定額 IS '物件．残価設定額の債権単位のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.自社残価設定額 IS '物件．自社残価設定額の債権単位のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.税込残価設定額 IS '物件．税込残価設定額の債権単位のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.税込残価設定額自社 IS '税込残価設定額　－　物件．税込残価設定額他社の債権単位のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.信用保険料残高金額 IS '当月末債権残高　×　１／２　を物件単位に按分し、信用保険付き物件のみ集計'
;
COMMENT ON COLUMN D912SJM_TBL.信用保険料残高消費税金額 IS '当月末約定債権残高消費税　×　１／２　を物件単位に按分し、信用保険付き物件のみ集計'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上額 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．最新契約総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上額自社分 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．自社分最新契約総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上消費税額 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．最新消費税総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上消費税額自社分 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．自社分消費税総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受計上額 IS '①引渡年月日　＝　バッチ処理年月度　の場合
　　前払金．前払金額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受計上額自社分 IS '①引渡年月日　＝　バッチ処理年月度　の場合
　　前払金．自社前払金額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受計上額消費税 IS '①引渡年月日　＝　バッチ処理年月度　の場合
　　前払金．前払金額消費税
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受計上額消費税自社分 IS '①引渡年月日　＝　バッチ処理年月度　の場合
　　前払金．自社前払金額消費税
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上元本 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．元本総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上自社元本 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．自社元本総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上利息 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．利息総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上自社利息 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．利息総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上諸費用総額 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．諸費用総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上諸費用自社分 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．諸費用自社分
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上固定資産税 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．固定資産税総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上動総保険料 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．動総保険料総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上支払利息適用 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．支払利息適用総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上支払利息一般 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．支払利息一般総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月計上委託保守料 IS '①引渡年月　＝　バッチ処理年月の場合
　　債権．委託保守料総額
②上記以外
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.前期末年月 IS '業務日付管理．管理年＋3月　但し 1 ≦ 管理月 ≦ 3 の時、管理年－1＋3月'
;
COMMENT ON COLUMN D912SJM_TBL.前期末請求回 IS '４月月次処理時の前月分請求回'
;
COMMENT ON COLUMN D912SJM_TBL.前期末債権残高 IS '４月月次処理時の前月末債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末債権残高自社分 IS '４月月次処理時の前月末債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末消費税債権残高 IS '４月月次処理時の前月末消費税債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末消費税債権残高自社分 IS '４月月次処理時の前月末消費税債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定債権残高 IS '４月月次処理時の前月末約定債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定債権残高自社分 IS '４月月次処理時の前月末約定債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定消費税債権残高 IS '４月月次処理時の前月末約定消費税債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定消費税債権残高自社分 IS '４月月次処理時の前月末約定消費税債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末前受金残高 IS '４月月次処理時の前月末前受金残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末前受金残高自社分 IS '４月月次処理時の前月末前受金残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末前受金消費税残高 IS '４月月次処理時の前月末前受金消費税残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末前受金消費税残高自社分 IS '４月月次処理時の前月末前受金消費税残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定元本残高 IS '４月月次処理時の前月末約定元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末約定利息残高 IS '４月月次処理時の前月末約定利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末実質元本残高 IS '４月月次処理時の前月末実質元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末実質利息残高 IS '４月月次処理時の前月末実質利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末売上残高 IS '４月月次処理時の前月末売上残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末売上残高消費税 IS '４月月次処理時の前月末売上残高消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前期末諸費用残高 IS '４月月次処理時の前月末諸費用残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末諸費用残高自社分 IS '４月月次処理時の前月末諸費用残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末割賦原価残高 IS '４月月次処理時の前月末割賦原価残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末割賦原価残高自社分 IS '４月月次処理時の前月末割賦原価残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末割賦原価未実現利益 IS '４月月次処理時の前月末割賦原価未実現利益'
;
COMMENT ON COLUMN D912SJM_TBL.前期末割賦原価未実現利益自社分 IS '４月月次処理時の前月末割賦原価未実現利益自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期末固定資産税残高 IS '４月月次処理時の前月末固定資産税残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末動総保険料残高 IS '４月月次処理時の前月末動総保険料残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末支払利息適用残高 IS '４月月次処理時の前月末支払利息適用残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末支払利息一般残高 IS '４月月次処理時の前月末支払利息一般残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末委託保守料残高 IS '４月月次処理時の前月末委託保守料残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末売上元本残高 IS '４月月次処理時の前月末売上元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期末売上利息残高 IS '４月月次処理時の前月末売上利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収額 IS '４月月次処理時の前月迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収額自社分 IS '４月月次処理時の前月迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄消費税回収額 IS '４月月次処理時の前月迄消費税回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄消費税回収額自社分 IS '４月月次処理時の前月迄消費税回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収予定額 IS '４月月次処理時の前月迄回収予定額'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収予定額自社分 IS '４月月次処理時の前月迄回収予定額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収予定額消費税 IS '４月月次処理時の前月迄回収予定額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄回収予定額消費税自社分 IS '４月月次処理時の前月迄回収予定額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄前受回収額 IS '４月月次処理時の前月迄前受回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄前受回収額自社分 IS '４月月次処理時の前月迄前受回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄前受回収額消費税 IS '４月月次処理時の前月迄前受回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄前受回収額消費税自社分 IS '４月月次処理時の前月迄前受回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収金 IS '４月月次処理時の前月迄未徴収金'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収金自社分 IS '４月月次処理時の前月迄未徴収金自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収金消費税 IS '４月月次処理時の前月迄未徴収金消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収金消費税自社分 IS '４月月次処理時の前月迄未徴収金消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄約定元本 IS '４月月次処理時の前月迄約定元本'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄約定利息 IS '４月月次処理時の前月迄約定利息'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄実質元本 IS '４月月次処理時の前月迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄実質利息 IS '４月月次処理時の前月迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収元本 IS '４月月次処理時の前月迄未徴収元本'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄未徴収利息 IS '４月月次処理時の前月迄未徴収利息'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄売上額 IS '４月月次処理時の前月迄売上額'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄売上額消費税 IS '４月月次処理時の前月迄売上額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄諸費用 IS '４月月次処理時の前月迄諸費用'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄諸費用自社分 IS '４月月次処理時の前月迄諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄金融元本 IS '４月月次処理時の前月迄金融元本'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄金融元本自社分 IS '４月月次処理時の前月迄金融元本自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄金融利息 IS '４月月次処理時の前月迄金融利息'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄金融利息自社分 IS '４月月次処理時の前月迄金融利息自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄固定資産税 IS '４月月次処理時の前月迄固定資産税'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄動総保険料 IS '４月月次処理時の前月迄動総保険料'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄支払利息適用 IS '４月月次処理時の前月迄支払利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄支払利息一般 IS '４月月次処理時の前月迄支払利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄委託保守料 IS '４月月次処理時の前月迄委託保守料'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄売上元本 IS '４月月次処理時の前月末売上元本'
;
COMMENT ON COLUMN D912SJM_TBL.前期迄売上利息 IS '４月月次処理時の前月末売上利息'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収実績額 IS '当月迄回収額　－　前期迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収実績額自社分 IS '当月迄回収額自社分　－　前期迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収実績額消費税 IS '当月迄消費税回収額　－　前期迄消費税回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収実績額消費税自社分 IS '当月迄消費税回収額自社分　－　前期迄消費税回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収予定額 IS '当月迄回収予定額　－　前期迄回収予定額'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収予定額自社分 IS '当月迄回収予定額自社分　－　前期迄回収予定額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収予定額消費税 IS '当月迄回収予定額消費税　－　前期迄回収予定額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当期回収予定額消費税自社分 IS '当月迄回収予定額消費税自社分　－　前期迄回収予定額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期前受回収額 IS '当月迄前受回収額　－　前期迄前受回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当期前受回収額自社分 IS '当月迄前受回収額自社分　－　前期迄前受回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期前受回収額消費税 IS '当月迄前受回収額消費税　－　前期迄前受回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当期前受回収額消費税自社分 IS '当月迄前受回収額消費税自社分　－　前期迄前受回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収金 IS '当期回収予定額　－　当期回収実績額'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収金自社分 IS '当期回収予定額自社分　－　当期回収実績額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収金消費税 IS '当期回収予定額消費税　－　当期回収実績額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収金消費税自社分 IS '当期回収予定額消費税自社分　－　当期回収実績額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期約定元本 IS '当月迄約定元本　－　前期迄約定元本'
;
COMMENT ON COLUMN D912SJM_TBL.当期約定利息 IS '当月迄約定利息　－　前期迄約定利息'
;
COMMENT ON COLUMN D912SJM_TBL.当期実質元本 IS '当月迄実質元本　－　前期迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当期実質利息 IS '当月迄実質利息　－　前期迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収元本 IS '当期実質元本　－　当期実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当期未徴収利息 IS '当期約定利息　－　当期実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当期売上額 IS '当月迄売上額　－　前期迄売上額'
;
COMMENT ON COLUMN D912SJM_TBL.当期売上額消費税 IS '当月迄売上額消費税　－　前期迄売上額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当期諸費用 IS '当月迄諸費用　－　前期迄諸費用'
;
COMMENT ON COLUMN D912SJM_TBL.当期諸費用自社分 IS '当月迄諸費用自社分　－　前期迄諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期金融元本 IS '当月迄金融元本　－　前期迄金融元本'
;
COMMENT ON COLUMN D912SJM_TBL.当期金融元本自社分 IS '当月迄金融元本自社分　－　前期迄金融元本自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期金融利息 IS '当月迄金融利息　－　前期迄金融利息'
;
COMMENT ON COLUMN D912SJM_TBL.当期金融利息自社分 IS '当月迄金融利息自社分　－　前期迄金融利息自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当期固定資産税 IS '当月迄固定資産税　－　前期迄固定資産税'
;
COMMENT ON COLUMN D912SJM_TBL.当期動総保険料 IS '当月迄動総保険料　－　前期迄動総保険料'
;
COMMENT ON COLUMN D912SJM_TBL.当期支払利息適用 IS '当月迄支払利息適用　－　前期迄支払利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.当期支払利息一般 IS '当月迄支払利息一般　－　前期迄支払利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.当期委託保守料 IS '当月迄委託保守料　－　前期迄委託保守料'
;
COMMENT ON COLUMN D912SJM_TBL.当期売上元本 IS '当月迄売上元本　－　前期迄売上元本'
;
COMMENT ON COLUMN D912SJM_TBL.当期売上利息 IS '当月迄売上利息　－　前期迄売上利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月末債権残高 IS '月次処理時の当月末債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末債権残高自社分 IS '月次処理時の当月末債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末消費税債権残高 IS '月次処理時の当月末消費税債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末消費税債権残高自社分 IS '月次処理時の当月末消費税債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定債権残高 IS '月次処理時の当月末約定債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定債権残高自社分 IS '月次処理時の当月末約定債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定消費税債権残高 IS '月次処理時の当月末約定消費税債権残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定消費税債権残高自社分 IS '月次処理時の当月末約定消費税債権残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末前受金残高 IS '月次処理時の当月末前受金残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末前受金残高自社分 IS '月次処理時の当月末前受金残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末前受金消費税残高 IS '月次処理時の当月末前受金消費税残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末前受金消費税残高自社分 IS '月次処理時の当月末前受金消費税残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定元本残高 IS '月次処理時の当月末約定元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末約定利息残高 IS '月次処理時の当月末約定利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末実質元本残高 IS '月次処理時の当月末実質元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末実質利息残高 IS '月次処理時の当月末実質利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末売上残高 IS '月次処理時の当月末売上残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末売上残高消費税 IS '月次処理時の当月末売上残高消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前月末諸費用残高 IS '月次処理時の当月末諸費用残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末諸費用残高自社分 IS '月次処理時の当月末諸費用残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末割賦原価残高 IS '月次処理時の当月末割賦原価残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末割賦原価残高自社分 IS '月次処理時の当月末割賦原価残高自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末割賦原価未実現利益 IS '月次処理時の当月末割賦原価未実現利益'
;
COMMENT ON COLUMN D912SJM_TBL.前月末割賦原価未実現利益自社分 IS '月次処理時の当月末割賦原価未実現利益自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月末固定資産税残高 IS '月次処理時の当月末固定資産税残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末動総保険料残高 IS '月次処理時の当月末動総保険料残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末支払利息適用残高 IS '月次処理時の当月末支払利息適用残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末支払利息一般残高 IS '月次処理時の当月末支払利息一般残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末委託保守料残高 IS '月次処理時の当月末委託保守料残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末売上元本残高 IS '月次処理時の当月末売上元本残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月末売上利息残高 IS '月次処理時の当月末売上利息残高'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収額 IS '月次処理時の当月迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収額自社分 IS '月次処理時の当月迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄消費税回収額 IS '月次処理時の当月迄消費税回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄消費税回収額自社分 IS '月次処理時の当月迄消費税回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収予定額 IS '月次処理時の当月迄回収予定額'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収予定額自社分 IS '月次処理時の当月迄回収予定額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収予定額消費税 IS '月次処理時の当月迄回収予定額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄回収予定額消費税自社分 IS '月次処理時の当月迄回収予定額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄前受回収額 IS '月次処理時の当月迄前受回収額'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄前受回収額自社分 IS '月次処理時の当月迄前受回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄前受回収額消費税 IS '月次処理時の当月迄前受回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄前受回収額消費税自社分 IS '月次処理時の当月迄前受回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収金 IS '月次処理時の当月迄未徴収金'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収金自社分 IS '月次処理時の当月迄未徴収金自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収金消費税 IS '月次処理時の当月迄未徴収金消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収金消費税自社分 IS '月次処理時の当月迄未徴収金消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄約定元本 IS '月次処理時の当月迄約定元本'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄約定利息 IS '月次処理時の当月迄約定利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄実質元本 IS '月次処理時の当月迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄実質利息 IS '月次処理時の当月迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収元本 IS '月次処理時の当月迄未徴収元本'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄未徴収利息 IS '月次処理時の当月迄未徴収利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄売上額 IS '月次処理時の当月迄売上額'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄売上額消費税 IS '月次処理時の当月迄売上額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄諸費用 IS '月次処理時の当月迄諸費用'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄諸費用自社分 IS '月次処理時の当月迄諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄金融元本 IS '月次処理時の当月迄金融元本'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄金融元本自社分 IS '月次処理時の当月迄金融元本自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄金融利息 IS '月次処理時の当月迄金融利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄金融利息自社分 IS '月次処理時の当月迄金融利息自社分'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄固定資産税 IS '月次処理時の当月迄固定資産税'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄動総保険料 IS '月次処理時の当月迄動総保険料'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄支払利息適用 IS '月次処理時の当月迄支払利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄支払利息一般 IS '月次処理時の当月迄支払利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄委託保守料 IS '月次処理時の当月迄委託保守料'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄売上元本 IS '月次処理時の当月迄売上元本'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄売上利息 IS '月次処理時の当月迄売上利息'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄社内金利利息適用 IS '月次処理時の当月迄社内金利利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.前月迄社内金利利息一般 IS '月次処理時の当月迄社内金利利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.当月末債権残高 IS '契約金額　－　当月迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月末債権残高自社分 IS '契約金額自社分　－　当月迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末消費税債権残高 IS '契約金額消費税　－　当月迄回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月末消費税債権残高自社分 IS '契約金額消費税自社分　－　当月迄回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定債権残高 IS '契約金額　－　当月迄回収予定額'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定債権残高自社分 IS '契約金額自社分　－　当月迄回収予定額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定消費税債権残高 IS '契約金額消費税　－　当月迄回収予定額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定消費税債権残高自社分 IS '契約金額消費税自社分　－　当月迄回収予定額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末前受金残高 IS '前払総額　－　当月迄前受回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月末前受金残高自社分 IS '前払金額自社分　－　当月迄前受回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末前受金消費税残高 IS '前払総額消費税　－　当月迄前受回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月末前受金消費税残高自社分 IS '前払金額消費税自社分　－　当月迄前受回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定元本残高 IS '元本総額　－　当月迄約定元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月末約定利息残高 IS '利息総額　－　当月迄約定利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月末実質元本残高 IS '元本総額　－　当月迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月末実質利息残高 IS '利息総額　－　当月迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月末売上残高 IS '契約金額　－　当月迄売上額'
;
COMMENT ON COLUMN D912SJM_TBL.当月末売上残高消費税 IS '契約金額消費税　－　当月迄売上額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月末諸費用残高 IS '諸費用総額　－　当月迄諸費用'
;
COMMENT ON COLUMN D912SJM_TBL.当月末諸費用残高自社分 IS '諸費用自社分　－　当月迄諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末割賦原価残高 IS '元本総額　－　当月迄金融元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月末割賦原価残高自社分 IS '元本総額自社分　－　当月迄金融元本自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末割賦原価未実現利益 IS '利息総額　－　当月迄金融利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月末割賦原価未実現利益自社分 IS '利息総額自社分　－　当月迄金融利息自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月末固定資産税残高 IS '固定資産税総額　－　当月迄固定資産税'
;
COMMENT ON COLUMN D912SJM_TBL.当月末動総保険料残高 IS '動総保険料総額　－　当月迄動総保険料'
;
COMMENT ON COLUMN D912SJM_TBL.当月末支払利息適用残高 IS '支払利息適用総額　－　当月迄支払利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.当月末支払利息一般残高 IS '支払利息一般総額　－　当月迄支払利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.当月末委託保守料残高 IS '委託保守料総額　－　当月迄委託保守料'
;
COMMENT ON COLUMN D912SJM_TBL.当月末売上元本残高 IS '元本総額自社分　－　当月迄売上元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月末売上利息残高 IS '利息総額　－　当月迄売上利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月末前受収益 IS '①当月末約定債権残高自社分　＞　当月末売上残高　の場合
　　当月末約定債権残高自社分　－　当月末売上残高
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月末未収収益 IS '①当月末約定債権残高自社分　＜　当月末売上残高　の場合
　　当月末約定債権残高自社分　－　当月末売上残高　の絶対値
②それ以外の場合
　　ZERO'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収額 IS '回収履歴．入金額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収額自社分 IS '回収履歴．自社入金額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄消費税回収額 IS '回収履歴．入金額消費税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄消費税回収額自社分 IS '回収履歴．自社入金額消費税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収予定額 IS '債権展開．請求額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収予定額自社分 IS '債権展開．自社請求額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収予定額消費税 IS '債権展開．請求消費税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄回収予定額消費税自社分 IS '債権展開．自社請求消費税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄前受回収額 IS '債権展開．回収予定日　≦　バッチ処理年月度　且つ　債権展開．前払充当区分　＝　１の場合の
債権展開．回収額のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄前受回収額自社分 IS '債権展開．回収予定日　≦　バッチ処理年月度　且つ　債権展開．前払充当区分　＝　１の場合の
債権展開．自社回収額のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄前受回収額消費税 IS '債権展開．回収予定日　≦　バッチ処理年月度　且つ　債権展開．前払充当区分　＝　１の場合の
債権展開．回収額消費税のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄前受回収額消費税自社分 IS '債権展開．回収予定日　≦　バッチ処理年月度　且つ　債権展開．前払充当区分　＝　１の場合の
債権展開．自社回収消費税のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収金 IS '当月迄回収予定額　－　当月迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収金自社分 IS '当月迄回収予定額自社分　－　当月迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収金消費税 IS '当月迄回収予定額消費税　－　当月迄消費税回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収金消費税自社分 IS '当月迄回収予定額消費税自社分　－　当月迄消費税回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄約定元本 IS '債権展開．請求元本のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄約定利息 IS '債権展開．請求利息のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄実質元本 IS '回収履歴．元本入金額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄実質利息 IS '回収履歴．利息入金額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収元本 IS '当月迄約定元本　－　当月迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄未徴収利息 IS '当月迄約定利息　－　当月迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄売上額 IS '債権展開．売上額のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄売上額消費税 IS '債権展開．売上額消費税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄諸費用 IS '金融展開．諸費用のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄諸費用自社分 IS '金融展開．諸費用自社分のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄金融元本 IS '金融展開．元本のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄金融元本自社分 IS '金融展開．自社元本のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄金融利息 IS '金融展開．利息のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄金融利息自社分 IS '金融展開．自社利息のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄固定資産税 IS '債権展開．自社固定資産税のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄動総保険料 IS '債権展開．自社動総保険料のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄支払利息適用 IS '債権展開．自社分支払利息適用のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄支払利息一般 IS '債権展開．自社分支払利息一般のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄委託保守料 IS '債権展開．自社委託保守料のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄売上元本 IS '債権展開．売上元本のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄売上利息 IS '債権展開．自社売上利息のバッチ処理月度迄のサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄社内金利利息適用 IS '金融展開．自社社内金利利息適用　のバッチ処理月度までのサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月迄社内金利利息一般 IS '金融展開．自社社内金利利息一般　のバッチ処理月度までのサマリ'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収実績額 IS '当月迄回収額　－　前月迄回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収実績額自社分 IS '当月迄回収額自社分　－　前月迄回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収実績額消費税 IS '当月迄消費税回収額　－　前月迄消費税回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収実績額消費税自社分 IS '当月迄消費税回収額自社分　－　前月迄消費税回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収予定額 IS '当月迄回収予定額　－　前月迄回収予定額'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収予定額自社分 IS '当月迄回収予定額自社分　－　前月迄回収予定額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収予定額消費税 IS '当月迄回収予定額消費税　－　前月迄回収予定額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月回収予定額消費税自社分 IS '当月迄回収予定額消費税自社分　－　前月迄回収予定額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受回収額 IS '当月迄前受回収額　－　前月迄前受回収額'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受回収額自社分 IS '当月迄前受回収額自社分　－　前月迄前受回収額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受回収額消費税 IS '当月迄前受回収額消費税　－　前月迄前受回収額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受回収額消費税自社分 IS '当月迄前受回収額消費税自社分　－　前月迄前受回収額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収金 IS '当月回収予定額　－　当月回収実績額'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収金自社分 IS '当月回収予定額自社分　－　当月回収実績額自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収金消費税 IS '当月回収予定額消費税　－　当月回収実績額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収金消費税自社分 IS '当月回収予定額消費税自社分　－　当月回収実績額消費税自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定元本 IS '当月迄約定元本　－　前月迄約定元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定利息 IS '当月迄約定利息　－　前月迄約定利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月実質元本 IS '当月迄実質元本　－　前月迄実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月実質利息 IS '当月迄実質利息　－　前月迄実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収元本 IS '当月約定元本　－　当月実質元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月未徴収利息 IS '当月約定利息　－　当月実質利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上額 IS '当月迄売上額　－　前月迄売上額'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上額消費税 IS '当月迄売上額消費税　－　前月迄売上額消費税'
;
COMMENT ON COLUMN D912SJM_TBL.当月諸費用 IS '当月迄諸費用　－　前月迄諸費用'
;
COMMENT ON COLUMN D912SJM_TBL.当月諸費用自社分 IS '当月迄諸費用自社分　－　前月迄諸費用自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融元本 IS '当月迄金融元本　－　前月迄金融元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融元本自社分 IS '当月迄金融元本自社分　－　前月迄金融元本自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融利息 IS '当月迄金融利息　－　前月迄金融利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融利息自社分 IS '当月迄金融利息自社分　－　前月迄金融利息自社分'
;
COMMENT ON COLUMN D912SJM_TBL.当月固定資産税 IS '当月迄固定資産税　－　前月迄固定資産税'
;
COMMENT ON COLUMN D912SJM_TBL.当月動総保険料 IS '当月迄動総保険料　－　前月迄動総保険料'
;
COMMENT ON COLUMN D912SJM_TBL.当月支払利息適用 IS '当月迄支払利息適用　－　前月迄支払利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.当月支払利息一般 IS '当月迄支払利息一般　－　前月迄支払利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.当月委託保守料 IS '当月迄委託保守料　－　前月迄委託保守料'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上元本 IS '当月迄売上元本　－　前月迄売上元本'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上利息 IS '当月迄売上利息　－　前月迄売上利息'
;
COMMENT ON COLUMN D912SJM_TBL.当月社内金利利息適用 IS '当月迄社内金利利息適用　－　前月迄社内金利利息適用'
;
COMMENT ON COLUMN D912SJM_TBL.当月社内金利利息一般 IS '当月迄社内金利利息一般　－　前月迄社内金利利息一般'
;
COMMENT ON COLUMN D912SJM_TBL.当月調整額 IS '前月末債権残高　－　（当月末債権残高＋当月回収実績額）'
;
COMMENT ON COLUMN D912SJM_TBL.当月調整額自社分 IS '前月末債権残高自社分　－　（当月末債権残高自社分　＋　当月回収実績額自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月消費税調整額 IS '前月末消費税債権残高　－　（当月末消費税債権残高＋当月回収実績額消費税）'
;
COMMENT ON COLUMN D912SJM_TBL.当月消費税調整額自社分 IS '前月末消費税債権残高自社分　－　（当月末消費税債権残高自社分＋当月回収実績額消費税自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定調整額 IS '前月末約定債権残高　－　（当月末約定債権残高＋当月回収予定額）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定調整額自社分 IS '前月末約定債権残高自社分 　－　（当月末約定債権残高自社分＋当月回収予定額自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定調整額消費税 IS '前月末約定消費税債権残高　－　（当月末約定消費税債権残高＋当月回収予定額消費税）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定調整額消費税自社分 IS '前月末約定消費税債権残高自社分　－（当月末約定消費税債権残高自社分＋当月回収予定額消費税自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受調整額 IS '前月末前受金残高　－　（当月末前受金残高＋当月前受回収額）'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受調整額自社分 IS '前月末前受金残高自社分　－　（当月末前受金残高自社分＋当月前受回収額自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受調整額消費税 IS '前月末前受金消費税残高　－　（当月末前受金消費税残高＋当月前受回収額消費税）'
;
COMMENT ON COLUMN D912SJM_TBL.当月前受調整額消費税自社分 IS '前月末前受金消費税残高自社分　－　（当月末前受金消費税残高自社分＋当月前受回収額消費税自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定元本調整額 IS '前月末約定元本残高　－　（当月末約定元本残高＋当月約定元本）'
;
COMMENT ON COLUMN D912SJM_TBL.当月約定利息調整額 IS '前月末約定利息残高　－　（当月末約定利息残高＋当月約定利息）'
;
COMMENT ON COLUMN D912SJM_TBL.当月実質元本調整額 IS '前月末実質元本残高　－　（当月末実質元本残高＋当月実質元本）'
;
COMMENT ON COLUMN D912SJM_TBL.当月実質利息調整額 IS '前月末実質利息残高　－　（当月末実質利息残高＋当月実質利息）'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上調整額 IS '前月末売上残高　－　（当月末売上残高＋当月売上額）'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上調整額消費税 IS '前月末売上残高消費税　－　（当月末売上残高消費税＋当月売上額消費税）'
;
COMMENT ON COLUMN D912SJM_TBL.当月諸費用調整額 IS '前月末諸費用残高　－　（当月末諸費用残高＋当月諸費用）'
;
COMMENT ON COLUMN D912SJM_TBL.当月諸費用調整額自社分 IS '前月末諸費用残高自社分　－　（当月末諸費用残高自社分＋当月諸費用自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融元本調整額 IS '前月末割賦原価残高　－　（当月末割賦原価残高＋当月金融元本）'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融元本調整額自社分 IS '前月末割賦原価残高自社分　－　（当月末割賦原価残高自社分＋当月金融元本自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融利息調整額 IS '前月末割賦原価未実現利益　－　（当月末割賦原価未実現利益＋当月金融利息）'
;
COMMENT ON COLUMN D912SJM_TBL.当月金融利息調整額自社分 IS '前月末割賦原価未実現利益自社分　－　（当月末割賦原価未実現利益自社分＋当月金融利息自社分）'
;
COMMENT ON COLUMN D912SJM_TBL.当月固定資産税調整額 IS '前月末固定資産税残高　－　（当月末固定資産税残高＋当月固定資産税）'
;
COMMENT ON COLUMN D912SJM_TBL.当月動総保険料調整額 IS '前月末動総保険料残高　－　（当月末動総保険料残高＋当月動総保険料）'
;
COMMENT ON COLUMN D912SJM_TBL.当月支払利息調整額適用 IS '前月末支払利息適用残高　－　（当月末支払利息適用残高＋当月支払利息適用）'
;
COMMENT ON COLUMN D912SJM_TBL.当月支払利息調整額一般 IS '前月末支払利息一般残高　－　（当月末支払利息一般残高＋当月支払利息一般）'
;
COMMENT ON COLUMN D912SJM_TBL.当月委託保守料調整額 IS '前月末委託保守料残高　－　（当月末委託保守料残高＋当月委託保守料）'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上元本調整額 IS '前月末売上元本残高　－　（当月末売上元本残高＋当月売上元本）'
;
COMMENT ON COLUMN D912SJM_TBL.当月売上利息調整額 IS '前月末売上利息残高　－　（当月末売上利息残高＋当月売上利息）'
;
COMMENT ON COLUMN D912SJM_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D912SJM_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D912SJM_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D912SJM_TBL.更新年月日 IS '月次債権情報テーブルの更新年月日'
;
COMMENT ON COLUMN D912SJM_TBL.更新時間 IS '月次債権情報テーブルの更新時刻'
;
COMMENT ON COLUMN D912SJM_TBL.更新者 IS '月次債権情報テーブルを更新したPGID'
;