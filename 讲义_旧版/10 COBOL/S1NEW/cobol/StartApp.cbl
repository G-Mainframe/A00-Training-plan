      * ---------------------------------------------------
      *    IDE Sample Program
      * ---------------------------------------------------
       Identification Division.
       Program-ID.  StartApp.

       Data Division.
       Working-Storage Section.

       01 Program-pass-fields.
          05 Temp-name         Pic x(30).

       01 Program-other-fields.
          05 Input-name         Pic x(30).
          05 Char-count         Pic 99 Value ZEROS.

       01 Program-flags.
          05 Loop-flag          Pic 9(01).
             88 Loop-done       Value 1.
       01 PGMID                 PIC X(8) VALUE ALL SPACE.
       Procedure Division.

           Initialize Program-pass-fields
                      Program-other-fields
                      Program-flags.

           Perform until Loop-done
               Display " "
               Display "Enter a name or Q to quit:"
               Move Spaces to Input-name
               Accept Input-name
               IF Input-name = Spaces
                 Move "Q" to Input-name
               End-IF

               Move 1 to Char-count
               Inspect Input-name Tallying Char-count For Leading Spaces
               Move Input-name(Char-count: 30 - Char-count) to Temp-name

               If function upper-case (Temp-name) = "Q"
                     or Temp-name = Spaces
                  Set Loop-done to true
               Else
                  MOVE  'PrintApp'    TO PGMID
                  Call PGMID using Program-pass-fields
               End-if
           End-perform.

           Goback.






