      ******************************************************************
      *                                                                *
      * MODULE NAME    CBLDBGEX.CBL                                    *
      *                                                                *
      * STATEMENT      IBM WebSphere Developer for System z            *
      *                5724-L44                                        *
      *                (c) Copyright IBM Corp. 2006                    *
      *                                                                *
      * DISCLAIMER OF WARRANTIES                                       *
      * You may copy, modify, and distribute these samples, or their   *
      * modifications, in any form, internally or as part of your      *
      * application or related documentation. These samples have not   *
      * been tested under all conditions and are provided to you by    *
      * IBM without obligation of support of any kind. IBM PROVIDES    *
      * THESE SAMPLES "AS IS" SUBJECT TO ANY STATUTORY WARRANTIES THAT *
      * CANNOT BE EXCLUDED. IBM MAKES NO WARRANTIES OR CONDITIONS,     *
      * EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO, THE   *
      * IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS   *
      * FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT REGARDING THESE *
      * SAMPLES OR TECHNICAL SUPPORT, IF ANY.                          *
      * You will indemnify IBM or third parties that provide IBM       *
      * products ("Third Parties") from and against any third party    *
      * claim arising out of the use, modification or distribution of  *
      * these samples with your application. You may not use the same  *
      * path name as the original files/modules. You must not alter or *
      * delete any copyright information in the Samples.               *
      *                                                                *
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID.    "CBLDBGEX".
       AUTHOR.        Programmer.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *************************************************************
       01 Program-Work-Fields.
                05 Input-name         Pic x(30).
                05 Output-name        Pic x(37).
       01 Program-flags.
                05 Loop-flag          Pic 9(01).
                   88 Loop-done       Value 1.

       01 BRANCHFLAG PIC 99.

       LINKAGE SECTION.
       PROCEDURE DIVISION.
              Initialize Program-work-fields
                                 BRANCHFLAG
                                 Program-flags.
              Display "CBLDBGEX STARTING"
              MOVE 2 TO BRANCHFLAG.
              IF BRANCHFLAG > 1
                   DISPLAY "BRANCHFLAG GREATER THAN 1"
                   PERFORM SEEYA
              ELSE
                   DISPLAY "BRANCHFLAG <= 1"
                   PERFORM GOODBYE.
              GOBACK.
       SEEYA.

              DISPLAY "PROGRAM IS ENDING -- SEEYA".

       GOODBYE.

              DISPLAY "PROGRAM IS ENDING -- GOODBYE".
       End Program CBLDBGEX.
