################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS560
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS560.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS560.EXE" 
	DEL "COBIS560.OBJ" 
	DEL "COBIS560.COB" 


"COBIS560.OBJ" : "COBIS560.COB" "COBIS560.CBI"
	COBOL32.EXE -i"COBIS560.CBI" -WC,MAIN(MAIN) "COBIS560.COB"

"COBIS560.EXE" : "COBIS560.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS560.EXE" \
	@"COBIS560.001" 


"COBIS560.COB" : "COBIS560.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS560.PCO" ONAME="COBIS560.COB"

