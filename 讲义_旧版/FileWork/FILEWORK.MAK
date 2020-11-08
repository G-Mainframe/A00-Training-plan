################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = C:\Program Files\NetCOBOL
PROJECT_PATH = C:\FILEWORK
OBJECT_PATH = 
LINK_DEBUG_OPTION = 


ALL : "FileWork.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "FileWork.EXE" 
	DEL "FileWork.OBJ" 


"FileWork.OBJ" : "FileWork.COB" "$(COBOL_PATH)\COBOL.CBI"
	COBOL32.EXE -i"$(COBOL_PATH)\COBOL.CBI" -WC,MAIN(MAIN) "FileWork.COB"

"FileWork.EXE" : "FileWork.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"FileWork.EXE" \
	@"FILEWORK.001" 


