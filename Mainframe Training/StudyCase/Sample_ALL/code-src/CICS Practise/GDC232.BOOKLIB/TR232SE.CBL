       01   TR232MAI.                                                   00000010
           02 FILLER    PIC X(12).                                      00000020
           02 T01-ML    COMP PIC S9(4).                                 00000030
           02 T01-MF    PIC X.                                          00000040
           02 FILLER REDEFINES T01-MF.                                  00000050
             03 T01-MA  PIC X.                                          00000060
           02 T01-MI    PIC X(10).                                      00000070
           02 FILLER    PIC X.                                          00000080
           02 T02-ML    COMP PIC S9(4).                                 00000090
           02 T02-MF    PIC X.                                          00000100
           02 FILLER REDEFINES T02-MF.                                  00000110
             03 T02-MA  PIC X.                                          00000120
           02 T02-MI    PIC X(10).                                      00000130
       01   TR232MAO REDEFINES TR232MAI.                                00000140
           02 FILLER    PIC X(12).                                      00000150
           02 FILLER    PIC X(3).                                       00000160
           02 T01-MO    PIC X(10).                                      00000170
           02 FILLER    PIC X.                                          00000180
           02 FILLER    PIC X(3).                                       00000190
           02 T02-MO    PIC X(10).                                      00000200
