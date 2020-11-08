000010************************************************
000020* (PAY_BILPRT)
000030************************************************
000040 01  ()REGJPN           PIC  X(6).
000050 01  ()CTLNUM           PIC  X(9).
000060 01  ()DATNUM           PIC  X(4).
000070 01  ()BILNUM           PIC  X(9).
000080 01  ()DRWJPN           PIC  X(6).
000090 01  ()DUEJPN           PIC  X(6).
000100 01  ()SEPNUM           PIC  X(1).
000110 01  ()CLTNAM           PIC  X(44).
000120 01  ()SNDTYP           PIC  X(1).
000130 01  ()CNTNUM           PIC  X(9).
000140 01  ()ZIPCOD           PIC  X(7).
000150 01  ()MALNAM           PIC  X(42).
000160 01  ()MALNM2           PIC  X(42).
000170 01  ()MALADR           PIC  X(42).
000180 01  ()MALAD2           PIC  X(42).
000190 01  ()MALAD3           PIC  X(42).
000200 01  ()ADRTYP           PIC  X(1).
000210 01  ()DAYBGN           PIC  X(8).
000220 01  ()DAYEND           PIC  X(8).
000230 01  ()SNDDAY           PIC  X(8).
000240 01  ()DIVCOD           PIC  X(4).
000250 01  ()DOCTYP           PIC  X(1).
000260 01  ()SEPCNT           PIC S9(1) COMP-3.
000270 01  ()TAXTYP           PIC S9(6) COMP-3.
000280 01  ()BILCNT           PIC S9(4) COMP-3.
000290 01  ()TAXCNT           PIC S9(4) COMP-3.
000300 01  ()BILAMT           PIC S9(13) COMP-3.
000310 01  ()TAXAMT           PIC S9(13) COMP-3.
000320 01  ()TOTAMT           PIC S9(13) COMP-3.
