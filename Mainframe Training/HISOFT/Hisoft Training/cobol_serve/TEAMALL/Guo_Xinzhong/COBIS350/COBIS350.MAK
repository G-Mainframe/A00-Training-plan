################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS350
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS350.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS350.EXE" 
	DEL "COBIS350.OBJ" 
	DEL "COBIS350.COB" 


"COBIS350.OBJ" : "COBIS350.COB" "COBIS350.CBI"
	COBOL32.EXE -i"COBIS350.CBI" -WC,MAIN(MAIN) "COBIS350.COB"

"COBIS350.EXE" : "COBIS350.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS350.EXE" \
	@"COBIS350.001" 


"COBIS350.COB" : "COBIS350.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS350.PCO" ONAME="COBIS350.COB"

