################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = C:\Program Files\NetCOBOL
PROJECT_PATH = C:\SHOW-99
OBJECT_PATH = 
LINK_DEBUG_OPTION = 


ALL : "show-99.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "show-99.EXE" 
	DEL "SHOW-99.OBJ" 


"SHOW-99.OBJ" : "SHOW-99.COB" "$(COBOL_PATH)\COBOL.CBI"
	COBOL32.EXE -i"$(COBOL_PATH)\COBOL.CBI" -WC,MAIN(MAIN) "SHOW-99.COB"

"show-99.EXE" : "SHOW-99.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"show-99.EXE" \
	@"SHOW-99.001" 


