       01  M-AREA.     
         03  M-Y                       PIC  9(04).
         03  M-M                       PIC  9(02).
         03  M-SYOCD                   PIC  9(05).      
         03  M-TANKA                   PIC  9(08).
         03  M-GENKA                   PIC  9(08).
         *>ñæç◊10ÉåÉRÅ[Éh
         03  M-DENPYO OCCURS 10.
           05  M-NODATE                PIC  9(08).
           05  M-DENBAN                PIC  9(12).
           05  M-KUBUN                 PIC  9(02).
           05  M-KUBUNN                PIC  N(02).
           05  M-KAKAKU                PIC  9(08).
           05  M-ISU                   PIC  9(06).
           05  M-OSU                   PIC  9(06).