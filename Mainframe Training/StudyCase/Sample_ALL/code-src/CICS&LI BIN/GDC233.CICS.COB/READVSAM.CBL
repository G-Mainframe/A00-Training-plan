000100 IDENTIFICATION DIVISION.                                         00010000
000200 PROGRAM-ID. READVSAM.                                            00020000
000300****************************************                          00030000
000400*         THIS IS THE CICS TEST PROGRAM.                          00040000
000500*         WE JUST USED MAPSET(LB03SET)                            00050000
000600*         AND MAP(LB03MAP)                                        00060000
000700*         VSAM FILE : GDC233.VSAM03                               00070002
000800****************************************                          00080000
000900*                                                                 00090000
001000 ENVIRONMENT DIVISION.                                            00100000
001100*                                                                 00110000
001200***************                                                   00120000
001300 DATA DIVISION.                                                   00130000
001400***************                                                   00140000
001500 WORKING-STORAGE SECTION.                                         00150000
001600 01  COMM-AREA.                                                   00160000
001700     05      WS-COMM             PIC X(4)  VALUE SPACE.           00170000
001800*                                                                 00200002
001900 01  WS-FILE.                                                     00210002
002000     10 FL-CNO                   PIC X(6)  VALUE SPACE.           00220002
002100     10 FL-NAME                  PIC X(20) VALUE SPACE.           00230002
002200     10 FILLER                   PIC X(54) VALUE SPACE.           00240002
002300                                                                  00250002
002400 77  W-I                         PIC X     VALUE 'I'.             00260002
002500 77  TRANSID                     PIC X(4)  VALUE 'LB03'.          00270002
002600 77  CUR-POS                     PIC S9    VALUE -1.              00280002
002700 77  WK-ABSTIME      COMP-3      PIC S9(15) VALUE ZERO.           00290002
002800 77  WS-LEN          COMP        PIC S9(4) VALUE ZERO.            00300002
002900 77  WS-RESP         COMP        PIC S9(8) VALUE ZERO.
003000                                                                  00310000
003100*****************************************************             00320002
003200*                   TIME FORMAT                                   00330002
003300*****************************************************             00340002
003400 01  CRNT-TIME.
003500     10  CRNT-HH                 PIC 99.
003600     10  CRNT-MM                 PIC 99.
003700     10  CRNT-SS                 PIC 99.
003800 01  CRNT-DATE.
003900     10  CRNT-YR                 PIC 9999.
004000     10  CRNT-MO                 PIC 99.
004100     10  CRNT-DY                 PIC 99.
004200*
004300 01  CRNT-DATE-8-E.                                               00350000
004400     10  CRNT-YR-8-E             PIC 9999  VALUE 0.               00360000
004500     10  FILLER                  PIC X     VALUE '/'.             00370000
004600     10  CRNT-MO-8-E             PIC 99    VALUE 0.               00380000
004700     10  FILLER                  PIC X     VALUE '/'.             00390000
004800     10  CRNT-DY-8-E             PIC 99    VALUE 0.               00400000
004900 01  CRNT-TIME-8-E.                                               00410000
005000     10  CRNT-HH-8-E             PIC 99    VALUE 0.               00420000
005100     10  FILLER                  PIC X     VALUE ':'.             00430000
005200     10  CRNT-MM-8-E             PIC 99    VALUE 0.               00440000
005300     10  FILLER                  PIC X     VALUE ':'.             00450000
005400     10  CRNT-SS-8-E             PIC 99    VALUE 0.               00460000
005500*                                                                 00470000
005600********************************************************          00480000
005700* HERE WE CAN DEFINE SOME INFOR FOR SENDING TO CUSTOMER           00490000
005800********************************************************          00500000
005900 01  MSG-WORK.                                                    00510000
006000     05   MSG-ABEND.                                              00520000
006100          10    FILLER                   PIC X(40) VALUE          00530000
006200                ' PROGRAM ABNORMAL END '.                         00540000
006300          10    MSG-ABEND-CD.                                     00550000
006400                20    MSG-ABEND-CD-1     PIC X(02) VALUE SPACE.   00560000
006500                20    MSG-ABEND-CD-2     PIC X(02) VALUE SPACE.   00570000
006600     05   MSG-KEY-ERR                    PIC X(28) VALUE          00580000
006700          ' THE FUNCTION KEY IS ERROR '.                          00590000
006800     05   MSG-WELCOME-TERM               PIC X(38) VALUE          00600000
006900          ' WELCOME THE FIRST CICS MAP '.                         00610000
007000     05   MSG-END                        PIC X(40) VALUE          00620002
007100          ' PROGRAM IS FINISHED! '.                               00630002
007200*                                                                 00640000
007300     COPY DFHAID.                                                 00650000
007400     COPY DFHBMSCA.                                               00660000
007500     COPY LB03SET.                                                00670000
007600*                                                                 00680000
007700 LINKAGE SECTION.                                                 00690000
007800 01  DFHCOMMAREA.                                                 00700000
007900     10    FILLER                     PIC X OCCURS 0 TO 32700     00710000
008000                                      DEPENDING ON EIBCALEN.      00720003
008100*                                                                 00730000
008200 PROCEDURE DIVISION.                                              00740000
008300****************************************************************  00750000
008400*    M                A              I               N         *  00760000
008500****************************************************************  00770000
008600 100-BEGIN-READVSAM.                                              00780000
008700     PERFORM 200-HANDLE-COND     THRU    200-END-HANDLE-COND.     00790000
008800     PERFORM 200-GET-DATE        THRU    200-END-GET-DATE.        00800000
008900     IF      EIBAID              =       DFHCLEAR                 00810000
009000                                 OR      DFHPF3                   00820002
009100             MOVE    LOW-VALUES  TO      LB03MAPO                 00830002
009200             MOVE    MSG-END     TO      MSG-MO                   00840002
009300             EXEC    CICS        SEND    CONTROL ERASE            00850002
009400             END-EXEC                                             00860002
009500             EXEC    CICS        RETURN  END-EXEC                 00870002
009600     END-IF.                                                      00880002
009700*                                                                 00890000
009800* // INITIALIZE MAP //*                                           00900000
009900*                                                                 00910000
010000     IF      EIBCALEN            =       ZERO                     00920000
010100             MOVE    LOW-VALUE   TO      LB03MAPO                 00930000
010200*            MOVE    LOW-VALUE   TO      LB03MAPI                 00940000
010300             MOVE    CUR-POS     TO      FUNC-ML                  00950000
010400             MOVE    TRANSID     TO      TRANSID-MO               00960000
010700             EXEC    CICS     ENTER  TRACEID(01) FROM(TRANSID-MO) 01000000
010800             END-EXEC                                             01010000
010500             MOVE    MSG-WELCOME-TERM                             00980000
010600                                 TO      MSG-MO                   00990002
                   MOVE    DFHGREEN    TO      MSG-MA
010700             EXEC    CICS     ENTER  TRACEID(02) FROM(MSG-MO)     01000000
010800             END-EXEC                                             01010000
010900             PERFORM 500-SEND-MAP                                 01020002
011000                                 THRU    500-END-SEND-MAP         01030002
011100     END-IF.                                                      01040002
011200*                                                                 01050002
011300* // RECEIVE THE MAP INFORMATION//*                               01060000
011400*                                                                 01070000
011500 120-RECEIVE-PROCESS.                                             01080000
011600     EXEC    CICS    RECEIVE     MAP('LB03MAP')                   01090000
011700                                 MAPSET('LB03SET')                01100000
011800                                 INTO(LB03MAPI)                   01110000
011900     END-EXEC.                                                    01120002
012000*                                                                 01130002
012100* // WE CAN EXTEND OUR LOGIC PROGRAM FROM HERE //*                01140002
012200*                                                                 01150002
012300 140-EDIT-MAP.                                                    01160002
012400     PERFORM 200-EDIT-FUNC       THRU    200-END-EDIT-FUNC.       01170002
012500*
012600 180-SEND-MAP.                                                    01180002
012700     PERFORM 500-SEND-MAP        THRU    500-END-SEND-MAP.        01190002
012800*                                                                 01200002
012900* // END PROGRAM //*                                              01210002
013000*                                                                 01220002
013100 190-RETRUN-CICS.                                                 01230002
013200     EXEC    CICS    RETURN      END-EXEC.                        01240002
013300     GOBACK.                                                      01250002
013400*                                                                 01260002
013500****************                                                  01270002
013600*   200-300                                                       01280002
013700****************                                                  01290002
013800*                                                                 01300002
013900 200-HANDLE-COND.                                                 01310002
014000     EXEC    CICS    HANDLE      CONDITION                        01320002
014100                                 ERROR(200-HANDLE-ERROR)          01330002
014200     END-EXEC.                                                    01340002
014300     GO                          TO      200-END-HANDLE-COND.     01350002
014400 200-HANDLE-ERROR.                                                01360002
014500     EXEC    CICS    ASSIGN      ABCODE(MSG-ABEND-CD)             01370002
014600     END-EXEC.                                                    01380002
014700     MOVE    MSG-ABEND           TO   MSG-MO.                     01390002
014800     EXEC    CICS    SEND        MAP('LB03MAP')                   01400002
014900                                 MAPSET('LB03SET')                01410002
015000                                 FROM(LB03MAPO)                   01420002
015100                                 ERASE                            01430002
015200                                 FREEKB                           01440002
015300                                 CURSOR                           01450002
015400                                 ALARM                            01460002
015500                                 FRSET                            01470002
015600     END-EXEC.                                                    01480002
015700     EXEC    CICS    SEND        CONTROL   ERASE                  01490002
015800     END-EXEC.                                                    01500002
015900     EXEC    CICS    RETURN      END-EXEC.                        01510002
016000 200-END-HANDLE-COND.                                             01520002
016100     EXIT.                                                        01530002
016200*                                                                 01540002
016300 200-GET-DATE.                                                    01550002
016400     EXEC    CICS ASKTIME                                         01560002
016500                  ABSTIME(WK-ABSTIME)                             01570002
016600     END-EXEC.                                                    01580002
016700     EXEC    CICS FORMATTIME                                      01590002
016800                  ABSTIME(WK-ABSTIME)                             01600002
016900                  YYYYMMDD(CRNT-DATE)                             01610002
017000                  TIME(CRNT-TIME)                                 01620002
017100     END-EXEC.                                                    01630002
017200     MOVE    CRNT-YR             TO      CRNT-YR-8-E.             01640002
017300     MOVE    CRNT-MO             TO      CRNT-MO-8-E.             01650002
017400     MOVE    CRNT-DY             TO      CRNT-DY-8-E.             01660002
017500     MOVE    CRNT-HH             TO      CRNT-HH-8-E.             01670002
017600     MOVE    CRNT-MM             TO      CRNT-MM-8-E.             01680002
017700     MOVE    CRNT-SS             TO      CRNT-SS-8-E.             01690002
017800 200-END-GET-DATE.                                                01700002
017900     EXIT.                                                        01710002
018000*                                                                 01720002
018100*  // CHECK AND EDIT FUNCTION KEY //*                             01730002
018200*                                                                 01740002
018300 200-EDIT-FUNC.                                                   01750002
018400     IF     (EIBAID  NOT =       DFHENTER                         01760002
018500                     AND         DFHPF3)                          01770002
018600             MOVE    MSG-KEY-ERR TO      MSG-MO                   01780002
018700             MOVE    CUR-POS     TO      FUNC-ML                  01790002
018800             PERFORM 500-SEND-MAP                                 01800002
018900                                 THRU    500-END-SEND-MAP         01810002
019000     END-IF.                                                      01820002
019100     IF      FUNC-MI NOT =       W-I                              01830002
019200             MOVE    CUR-POS     TO      FUNC-ML                  01840002
019300             MOVE  ' THE FUNCTION KEY MUST BE I !'                01850002
019400                                 TO      MSG-MO                   01860002
019500*            MOVE  DFHUNIMD      TO      FUNC-MA                  01870002
019600             PERFORM 500-SEND-MAP                                 01880002
019700                                 THRU    500-END-SEND-MAP         01890002
019800     END-IF.                                                      01900002
019900     IF      ID-MI               =       SPACE OR LOW-VALUE       01910002
020000             MOVE    CUR-POS     TO      ID-ML                    01920002
020100             MOVE   'ID IS NOT FOR BLANK! '                       01930002
020200                                 TO      MSG-MO                   01940002
020300*            MOVE  DFHUNIMD      TO      ID-MA                    01950002
020400             PERFORM 500-SEND-MAP                                 01960002
020500                                 THRU    500-END-SEND-MAP         01970002
020600     END-IF.                                                      01980002
020700     IF      FUNC-MI             =       W-I                      01990002
020800             PERFORM 300-INQUIRE-USER                             02000002
020900                                 THRU    300-END-INQUIRE-USER     02010002
021000     END-IF.                                                      02020002
021100 200-END-EDIT-FUNC.                                               02030002
021200     EXIT.                                                        02040002
021300*******************                                               02050002
021400* 200-300                                                         02060002
021500*******************                                               02070002
021600*                                                                 02080002
021700 300-INQUIRE-USER.                                                02090002
021800     MOVE    ID-MI               TO      FL-CNO.                  02100002
021900     EXEC    CICS    READ  DATASET('VSAM03')                      02110002
022000                           INTO(WS-FILE)                          02120002
022100                           RIDFLD(FL-CNO)                         02130002
022200                           RESP(WS-RESP)                          02140002
022300     END-EXEC.                                                    02150002
022400     EXEC    CICS    ENTER       TRACEID(04) FROM(FL-NAME)        02160002
022500     END-EXEC                                                     02170002
022600     EXEC    CICS    ENTER       TRACEID(05) FROM(FL-CNO)         02180002
022700     END-EXEC                                                     02190002
022800     IF      WS-RESP NOT EQUAL   DFHRESP(NORMAL)                  02200002
022900             MOVE    LOW-VALUES  TO      LB03MAPO                 02210002
023000             MOVE    SPACES      TO      WS-COMM                  02220002
023100             MOVE    'READ ERROR !'                               02230002
023200                                 TO      MSG-MO
023300             PERFORM                     500-SEND-MAP             02240002
023400                                 THRU    500-END-SEND-MAP         02250002
023500     END-IF.                                                      02260002
023600     IF      WS-RESP EQUAL       DFHRESP(NORMAL)                  02270002
023700             MOVE    LOW-VALUES  TO      LB03MAPO                 02280002
023800             MOVE    FL-CNO      TO      ID-MO                    02290002
023900             MOVE    FL-NAME     TO      NAME-MO                  02300002
024000             MOVE    'READ IS OK!'                                02310002
024100                                 TO      MSG-MO                   02320002
024200             MOVE    FL-CNO      TO      WS-COMM                  02330002
024300             PERFORM                     500-SEND-MAP             02340002
024400                                 THRU    500-END-SEND-MAP         02350002
024500     END-IF.                                                      02360002
024600 300-END-INQUIRE-USER.                                            02370002
024700     EXIT.                                                        02380002
024800*                                                                 02390002
024900*  // SEND MAP FROM 500 LEVEL //*                                 02400002
025000*                                                                 02410002
025100 500-SEND-MAP.                                                    02420002
025200     MOVE    CRNT-DATE-8-E       TO      DATE-MO.                 02430002
025300     MOVE    CRNT-TIME-8-E       TO      TIME-MO.                 02440002
025400     EXEC    CICS    SEND        MAP('LB03MAP')                   02450002
025500                                 MAPSET('LB03SET')                02460002
025600                                 FROM(LB03MAPO)                   02470002
025700                                 ERASE                            02480002
025800                                 FREEKB                           02490002
025900                                 CURSOR                           02500002
026000                                 ALARM                            02510002
026100                                 FRSET                            02520002
026200     END-EXEC.                                                    02530002
026300     EXEC    CICS    RETURN      TRANSID(TRANSID)
026400                                 COMMAREA(COMM-AREA)
026500     END-EXEC.
026600 500-END-SEND-MAP.                                                02540002
026700     EXIT.                                                        02550002
