################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = Z:\TEAMALL\ZHAO_YUANFANG\COBISAOO
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBISAOO.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBISAOO.EXE" 
	DEL "COBISAOO.OBJ" 
	DEL "COBISAOO.COB" 


"COBISAOO.OBJ" : "COBISAOO.COB" "COBISAOO.CBI"
	COBOL32.EXE -i"COBISAOO.CBI" -WC,MAIN(MAIN) "COBISAOO.COB"

"COBISAOO.EXE" : "COBISAOO.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBISAOO.EXE" \
	@"COBISAOO.001" 


"COBISAOO.COB" : "COBISAOO.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBISAOO.PCO" ONAME="COBISAOO.COB"

