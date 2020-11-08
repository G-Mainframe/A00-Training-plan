################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\NetCOBOL
PROJECT_PATH = F:\FIP_2004WORK\HAIHUI_PROJECT\PROJECT_EXECUTION\çÄñ⁄ëçäá\SAMPLE\COBIS47A
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS47A.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS47A.EXE" 
	DEL "COBIS47A.OBJ" 


"COBIS47A.OBJ" : "COBIS47A.COB" "COBIS47A.CBI"
	COBOL32.EXE -i"COBIS47A.CBI" -WC,MAIN(MAIN) "COBIS47A.COB"

"COBIS47A.EXE" : "COBIS47A.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS47A.EXE" \
	@"COBIS47A.001" 


