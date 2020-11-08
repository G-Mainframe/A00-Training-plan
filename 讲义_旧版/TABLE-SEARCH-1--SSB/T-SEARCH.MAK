################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = C:\Program Files\NetCOBOL
PROJECT_PATH = C:\新しいフォルダ
OBJECT_PATH = 
LINK_DEBUG_OPTION = 


ALL : "T-SEARCH.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "T-SEARCH.EXE" 
	DEL "T-SEARCH.OBJ" 


"T-SEARCH.OBJ" : "T-SEARCH.COB" "$(COBOL_PATH)\COBOL.CBI"
	COBOL32.EXE -i"$(COBOL_PATH)\COBOL.CBI" -WC,MAIN(MAIN) "T-SEARCH.COB"

"T-SEARCH.EXE" : "T-SEARCH.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"T-SEARCH.EXE" \
	@"T-SEARCH.001" 


