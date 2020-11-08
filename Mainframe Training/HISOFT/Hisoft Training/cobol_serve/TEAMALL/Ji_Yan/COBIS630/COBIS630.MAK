################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS630
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS630.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS630.EXE" 
	DEL "COBIS630.OBJ" 
	DEL "COBIS630.COB" 


"COBIS630.OBJ" : "COBIS630.COB" "COBIS630.CBI"
	COBOL32.EXE -i"COBIS630.CBI" -WC,MAIN(MAIN) "COBIS630.COB"

"COBIS630.EXE" : "COBIS630.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS630.EXE" \
	@"COBIS630.001" 


"COBIS630.COB" : "COBIS630.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS630.PCO" ONAME="COBIS630.COB"

