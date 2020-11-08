################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS230
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS230.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS230.EXE" 
	DEL "COBIS230.OBJ" 
	DEL "COBIS230.COB" 


"COBIS230.OBJ" : "COBIS230.COB" "COBIS230.CBI"
	COBOL32.EXE -i"COBIS230.CBI" -WC,MAIN(MAIN) "COBIS230.COB"

"COBIS230.EXE" : "COBIS230.OBJ" "D:\ORACLE\ORA90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS230.EXE" \
	@"COBIS230.001" 


"COBIS230.COB" : "COBIS230.PCO"
	"D:\ORACLE\ORA90\BIN\procob.exe" INAME="COBIS230.PCO" ONAME="COBIS230.COB"

