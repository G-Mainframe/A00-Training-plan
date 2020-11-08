000010*****************************************************************
000020*   手形テーブル(Pay_Bilmst)      489 バイト                    *
000030*****************************************************************
000040     03  REGJPN                      PIC  X(006).
000050     03  CTLNUM                      PIC  X(009).
000060     03  DATNUM                      PIC  X(004).
000070     03  UNICOD                      PIC  X(003).
000080     03  BILNUM                      PIC  X(009).
000090     03  BNKCOD                      PIC  X(004).
000100     03  BRCCOD                      PIC  X(003).
000110     03  DRWDAY                      PIC  X(008).
000120     03  DRWJPN                      PIC  X(006).
000130     03  ISUDAY                      PIC  X(008).
000140     03  ISUJPN                      PIC  X(006).
000150     03  DUEDAY                      PIC  X(008).
000160     03  DUEJPN                      PIC  X(006).
000170     03  CLTSWT                      PIC  X(001).
000180     03  CLTNAM                      PIC  X(044).
000190     03  ISUTYP                      PIC  X(001).
000200     03  ISUTRM                      PIC  X(002).
000210     03  SEQNUM                      PIC  X(005).
000220     03  SEPNUM                      PIC  X(001).
000230     03  SEPPUT                      PIC  X(001).
000240     03  SNDTYP                      PIC  X(001).
000250     03  CNTNUM                      PIC  X(010).
000260     03  ZIPCOD                      PIC  X(007).
000270     03  MALNAM                      PIC  X(042).
000280     03  MALNM2                      PIC  X(042).
000290     03  MALADR                      PIC  X(042).
000300     03  MALAD2                      PIC  X(042).
000310     03  MALAD3                      PIC  X(042).
000320     03  ADRTYP                      PIC  X(001).
000330     03  DAYBGN                      PIC  X(008).
000340     03  DAYEND                      PIC  X(008).
000350     03  PUTFLG                      PIC  X(002).
000360     03  CNTCNT                      PIC S9(003) PACKED-DECIMAL.
000370     03  SEPCNT                      PIC S9(001) PACKED-DECIMAL.
000380     03  SEQCNT                      PIC S9(001) PACKED-DECIMAL.
000390     03  BILAMT                      PIC S9(013) PACKED-DECIMAL.
000400     03  TAXAMT                      PIC S9(013) PACKED-DECIMAL.
000410     03  TOTAMT                      PIC S9(013) PACKED-DECIMAL.
000420     03  REGYMD                      PIC  X(008).
000430     03  REGTIM                      PIC  X(006).
000440     03  REGPSN                      PIC  X(008).
000450     03  MODDAY                      PIC  X(008).
000460     03  MODTIM                      PIC  X(006).
000470     03  MODPSN                      PIC  X(008).
000480     03  REGKBN                      PIC  X(001).
000490     03  REGDAY                      PIC  X(008).
000500     03  DRWKBN                      PIC  X(001).
000510     03  ISUKBN                      PIC  X(001).
000520     03  DUEKBN                      PIC  X(001).
000530     03  INPPSN                      PIC  X(008).
