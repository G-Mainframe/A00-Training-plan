################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS460
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS460.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS460.EXE" 
	DEL "COBIS460.OBJ" 
	DEL "COBIS460.COB" 


"COBIS460.OBJ" : "COBIS460.COB" "COBIS460.CBI"
	COBOL32.EXE -i"COBIS460.CBI" -WC,MAIN(MAIN) "COBIS460.COB"

"COBIS460.EXE" : "COBIS460.OBJ" "D:\Oracle\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS460.EXE" \
	@"COBIS460.001" 


"COBIS460.COB" : "COBIS460.PCO"
	"D:\Oracle\BIN\procob.exe" INAME="COBIS460.PCO" ONAME="COBIS460.COB"

