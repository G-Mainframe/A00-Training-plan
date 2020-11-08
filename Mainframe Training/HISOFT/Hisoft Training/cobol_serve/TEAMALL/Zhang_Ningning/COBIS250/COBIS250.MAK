################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS250
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS250.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS250.EXE" 
	DEL "COBIS250.OBJ" 
	DEL "COBIS250.COB" 


"COBIS250.OBJ" : "COBIS250.COB" "COBIS250.CBI"
	COBOL32.EXE -i"COBIS250.CBI" -WC,MAIN(MAIN) "COBIS250.COB"

"COBIS250.EXE" : "COBIS250.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS250.EXE" \
	@"COBIS250.001" 


"COBIS250.COB" : "COBIS250.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS250.PCO" ONAME="COBIS250.COB"

