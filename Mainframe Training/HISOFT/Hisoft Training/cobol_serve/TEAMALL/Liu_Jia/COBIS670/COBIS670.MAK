################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS670
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS670.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS670.EXE" 
	DEL "COBIS670.OBJ" 
	DEL "COBIS670" 


"COBIS670.OBJ" : "COBIS670" "COBIS670.CBI"
	COBOL32.EXE -i"COBIS670.CBI" -WC,MAIN(MAIN) "COBIS670"

"COBIS670.EXE" : "COBIS670.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS670.EXE" \
	@"COBIS670.001" 


"COBIS670" : "COBIS670.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS670.PCO" ONAME="COBIS670"

