       Identification Division.
       Program-ID.  PRINTAPP.

       Data Division.
       Working-Storage Section.
       01 Work-Parms.
          05 In-Len               PIC S9(4) BINARY.
          05 Char-count           Pic 99 Value ZEROS.
          05 Out-Name             PIC X(100).

          Linkage Section.
       01 Recvd-Parms.
          05 In-name         Pic x(30).


       Procedure Division using Recvd-Parms.
             Move spaces to Out-Name.

             Move 0 to Char-count
             Inspect Function Reverse(In-Name)
                Tallying Char-count For Leading Spaces
             Compute In-Len = 30 - Char-count

             Move "Thanks to " to Out-Name (1:10).
             Move In-name(1:In-Len) to Out-Name(11:In-Len)
             Move " for succeeding!" to Out-Name ((11 + In-Len):16).
             Display Out-name.
             Goback.
