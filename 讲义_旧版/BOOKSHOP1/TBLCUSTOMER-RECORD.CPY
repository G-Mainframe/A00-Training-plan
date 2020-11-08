       01 WK-TBLCUSTOMER-RECORD.
          03 REC-1.
             05 CUSTOMERNO                    PIC X(4)  VALUE '1001'.
             05 CUSTOMERNAME                  PIC X(10) VALUE '张三'.
             05 CUSTOMERADDRESS               PIC X(20) VALUE '百下区'.
             05 CUSTOMERCITY                  PIC X(20) VALUE '南京'.
             05 CUSTOMERSTATE                 PIC X(20) VALUE '江苏'.
             05 CUSTOMERZIP                   PIC X(6)  VALUE '210000'.
             05 CUSTOMERREFERRED              PIC X(4)  VALUE SPACE.
          03 REC-2.
             05 CUSTOMERNO                    PIC X(4)  VALUE '1002'.
             05 CUSTOMERNAME                  PIC X(10) VALUE '李四'.
             05 CUSTOMERADDRESS               PIC X(20) VALUE '徐汇区'.
             05 CUSTOMERCITY                  PIC X(20) VALUE '上海'.
             05 CUSTOMERSTATE                 PIC X(20) VALUE '上海'.
             05 CUSTOMERZIP                   PIC X(6)  VALUE '110000'.
             05 CUSTOMERREFERRED              PIC X(4)  VALUE SPACE.
          03 REC-3.
             05 CUSTOMERNO                    PIC X(4)  VALUE '1003'.
             05 CUSTOMERNAME                  PIC X(10) VALUE '王五'.
             05 CUSTOMERADDRESS               PIC X(20) VALUE '朝阳区'.
             05 CUSTOMERCITY                  PIC X(20) VALUE '北京'.
             05 CUSTOMERSTATE                 PIC X(20) VALUE '北京'.
             05 CUSTOMERZIP                   PIC X(6)  VALUE '110000'.
             05 CUSTOMERREFERRED              PIC X(4)  VALUE SPACE.
       01 WK-TBLCUSTOMER-TABLE REDEFINES  WK-TBLCUSTOMER-RECORD.
          03 WK-TBLCUSTOMER    OCCURS  3 TIMES.
             COPY CUSTOMER.