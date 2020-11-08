################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS410
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS410.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS410.EXE" 
	DEL "COBIS410.OBJ" 
	DEL "COBIS410.COB" 


"COBIS410.OBJ" : "COBIS410.COB" "COBIS410.CBI"
	COBOL32.EXE -i"COBIS410.CBI" -WC,MAIN(MAIN) "COBIS410.COB"

"COBIS410.EXE" : "COBIS410.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS410.EXE" \
	@"COBIS410.001" 


"COBIS410.COB" : "COBIS410.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS410.PCO" ONAME="COBIS410.COB"

