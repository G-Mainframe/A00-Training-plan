################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS500
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS500.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS500.EXE" 
	DEL "COBIS500.OBJ" 
	DEL "COBIS500.COB" 


"COBIS500.OBJ" : "COBIS500.COB" "COBIS500.CBI"
	COBOL32.EXE -i"COBIS500.CBI" -WC,MAIN(MAIN) "COBIS500.COB"

"COBIS500.EXE" : "COBIS500.OBJ" "D:\Oracle\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS500.EXE" \
	@"COBIS500.001" 


"COBIS500.COB" : "COBIS500.PCO"
	"D:\Oracle\BIN\procob.exe" INAME="COBIS500.PCO" ONAME="COBIS500.COB"

