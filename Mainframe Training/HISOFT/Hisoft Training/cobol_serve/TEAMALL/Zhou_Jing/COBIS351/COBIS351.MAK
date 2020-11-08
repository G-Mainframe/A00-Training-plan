################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS351
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS351.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS351.EXE" 
	DEL "COBIS351.OBJ" 
	DEL "COBIS351.COB" 


"COBIS351.OBJ" : "COBIS351.COB" "COBIS351.CBI"
	COBOL32.EXE -i"COBIS351.CBI" -WC,MAIN(MAIN) "COBIS351.COB"

"COBIS351.EXE" : "COBIS351.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS351.EXE" \
	@"COBIS351.001" 


"COBIS351.COB" : "COBIS351.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS351.PCO" ONAME="COBIS351.COB"

