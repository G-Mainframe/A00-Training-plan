################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = D:\Program Files\PCOB97
PROJECT_PATH = Z:\TEAMALL\GAO_SHOUJUN\COBIS130
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS130.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS130.EXE" 
	DEL "COBIS130.OBJ" 
	DEL "COBIS130.COB" 


"COBIS130.OBJ" : "COBIS130.COB" "COBIS130.CBI"
	COBOL32.EXE -i"COBIS130.CBI" -WC,MAIN(MAIN) "COBIS130.COB"

"COBIS130.EXE" : "COBIS130.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS130.EXE" \
	@"COBIS130.001" 


"COBIS130.COB" : "COBIS130.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS130.PCO" ONAME="COBIS130.COB"

