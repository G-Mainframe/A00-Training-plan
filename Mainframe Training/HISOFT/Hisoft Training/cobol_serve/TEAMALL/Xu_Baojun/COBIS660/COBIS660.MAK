################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = Z:\TEAMALL\XU_BAOJUN\COBIS660
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS660.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS660.EXE" 
	DEL "COBIS660.OBJ" 
	DEL "COBIS660" 


"COBIS660.OBJ" : "COBIS660" "COBIS660.CBI"
	COBOL32.EXE -i"COBIS660.CBI" -WC,MAIN(MAIN) "COBIS660"

"COBIS660.EXE" : "COBIS660.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS660.EXE" \
	@"COBIS660.001" 


"COBIS660" : "COBIS660.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS660.PCO" ONAME="COBIS660"

