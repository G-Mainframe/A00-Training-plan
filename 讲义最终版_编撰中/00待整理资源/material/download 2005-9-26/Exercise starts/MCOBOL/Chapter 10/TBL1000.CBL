       identification division.

       program-id. tbl1000.

       environment division.

       input-output section.

       file-control.
           select ratetab  assign to "c:\mcobol\data\ratetab.dat".
           select ratelist assign to "c:\mcobol\data\ratelist.prn".

       data division.

       file section.

       fd  ratetab.

       01  rate-table-record.

           05  rt-low-age              pic 99.
           05  rt-high-age             pic 99.
           05  rt-class-group          occurs 4 times.
               10  rt-class-number     pic 99.
               10  rt-insurance-rate   pic s99v99.

       fd  ratelist.

       01  print-area      pic x(40).

       working-storage section.

       01  switches.

           05  end-of-session-switch   pic x       value "n".
               88  end-of-session                  value "Y" "y".
           05  rate-table-eof-switch   pic x       value "n".
               88  rate-table-eof                  value "y".

       01  subscripts          comp.

           05  class-sub       pic s9.

       01  entry-fields.

           05  ef-age              pic 99.
           05  ef-class-number     pic 99.

       01  display-fields.

           05  df-insurance-rate   pic zz.99.

       01  rate-table.

           05  age-group               occurs 6 times
                                       indexed by age-index.
               10  low-age             pic 99.
               10  high-age            pic 99.
               10  class-group         occurs 4 times
                                       indexed by class-index.
                   15  class-number    pic 99.
                   15  insurance-rate  pic s99v99.

       01  age-rate-line.

           05  ar-low-age              pic 99.
           05  filler                  pic x       value "-".
           05  ar-high-age             pic 99.
           05  filler                  pic x(3)    value space.
           05  ar-class-data           occurs 4 times.
               10  ar-insurance-rate   pic z9.99.
               10  filler              pic x(3)    value space.

       procedure division.

       000-display-insurance-rates.

           open input  ratetab
                output ratelist.
           perform 100-load-rate-table.
           perform 200-display-insurance-rate
               until end-of-session.
           perform 300-print-rate-table.
           close ratetab
                 ratelist.
           stop run.

       100-load-rate-table.

       200-display-insurance-rate.

           display "----------------------------------------".
           display "End session?".
           accept  end-of-session-switch.
           display "----------------------------------------".
           if not end-of-session
               display "Testing 200-display-insurance rate."
               display "The accept, search, and display logic go here.".

       210-get-client-age.

           display "Enter client age (99).".
           accept  ef-age.

       220-search-age-group.

       230-get-client-class.

           display "Enter client class (99).".
           accept  ef-class-number.

       240-search-client-class.

       300-print-rate-table.

