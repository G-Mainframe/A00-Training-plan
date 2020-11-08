################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = D:\Program Files\NetCOBOL
PROJECT_PATH = C:\DOCUMENTS AND SETTINGS\ADMINISTRATOR\デスクトップ\TEST2
OBJECT_PATH = 
LINK_DEBUG_OPTION = 


ALL : "99.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "99.EXE" 
	DEL "99SUB1.OBJ" 
	DEL "99MAIN.OBJ" 
	DEL "99SUB2.OBJ" 


"99SUB1.OBJ" : "99SUB1.COB" "TEST2.CBI"
	COBOL32.EXE -i"TEST2.CBI" -NM "99SUB1.COB"

"99MAIN.OBJ" : "99MAIN.COB" "TEST2.CBI"
	COBOL32.EXE -i"TEST2.CBI" -M "99MAIN.COB"

"99SUB2.OBJ" : "99SUB2.COB" "TEST2.CBI"
	COBOL32.EXE -i"TEST2.CBI" -NM "99SUB2.COB"

"99.EXE" : "99SUB1.OBJ" "99MAIN.OBJ" "99SUB2.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"99.EXE" \
	@"TEST2.001" 


