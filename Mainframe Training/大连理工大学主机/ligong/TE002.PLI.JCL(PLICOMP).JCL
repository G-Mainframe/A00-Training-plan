//TE002C   JOB  (TESTING),'TE002',CLASS=B,
//           MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*******************************************************************//
//*                                                                 *//
//* ENTERPRISE PL/I V3.3 COMPILING AND LINK-EDIT JCL                *//
//*                                                                 *//
//*                                         2005.12.28              *//
//*                                             L.Y.P               *//
//*******************************************************************//
//*
//APPLIB JCLLIB ORDER=(TE002.PLI.PROCLIB)
//COMP     EXEC IBMZCPL2,
// SRCLIB='TE002.PLI.TEST',
// SRC='TES1',
// PGMLIB='TE002.PLI.LOAD',
// GOPGM='TEST1'
//LKED.SYSIN    DD  *
  ENTRY CEESTART
  NAME  TEST1(R)
//*
//
//
//
  INCLUDE SYSLMOD(READSUB)
//
  INCLUDE SYSLIB(DSNELI)

