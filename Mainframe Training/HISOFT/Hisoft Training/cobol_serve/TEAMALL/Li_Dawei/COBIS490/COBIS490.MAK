################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS490
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS490.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS490.EXE" 
	DEL "COBIS490.OBJ" 
	DEL "COBIS490.COB" 


"COBIS490.OBJ" : "COBIS490.COB" "COBIS490.CBI"
	COBOL32.EXE -i"COBIS490.CBI" -WC,MAIN(MAIN) "COBIS490.COB"

"COBIS490.EXE" : "COBIS490.OBJ" "D:\Oracle\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS490.EXE" \
	@"COBIS490.001" 


"COBIS490.COB" : "COBIS490.PCO"
	"D:\Oracle\BIN\procob.exe" INAME="COBIS490.PCO" ONAME="COBIS490.COB"

