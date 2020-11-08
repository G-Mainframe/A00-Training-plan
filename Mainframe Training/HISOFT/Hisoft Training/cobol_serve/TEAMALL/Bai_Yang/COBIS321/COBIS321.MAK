################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS321
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS321.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS321.EXE" 
	DEL "COBIS321.OBJ" 


"COBIS321.OBJ" : "COBIS321.COB" "COBIS321.CBI"
	COBOL32.EXE -i"COBIS321.CBI" -WC,MAIN(MAIN) "COBIS321.COB"

"COBIS321.EXE" : "COBIS321.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS321.EXE" \
	@"COBIS321.001" 


