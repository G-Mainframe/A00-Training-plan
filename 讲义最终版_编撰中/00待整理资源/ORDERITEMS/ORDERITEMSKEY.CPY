             07  ORDERITEM-KEY                PIC X(256).
             07  ORDERITEM-I000-KEY           REDEFINES ORDERITEM-KEY.
             07  ITEM-KEY                     PIC X(256).
             07  ITEM-I000-KEY                REDEFINES ITEM-KEY.
               09  ORDERITEM-I000.
                 11  ORDERNO              PIC X(004).
               09  ITEM-I000.
                 11  ITEMNO              PIC X(002).
               09  FILLER                    PIC X(252).
             07  ORDERITEM-S000-KEY           REDEFINES ORDERITEM-KEY.
               09  ORDERITEM-I000.
                  11  ORDERNO              PIC X(004).
             07  ITEM-S000-KEY           REDEFINES ITEM-KEY.
               09  ORDERITEM-I000.
                 11  ITEMNO              PIC X(002).
               09  FILLER                    PIC X(252).