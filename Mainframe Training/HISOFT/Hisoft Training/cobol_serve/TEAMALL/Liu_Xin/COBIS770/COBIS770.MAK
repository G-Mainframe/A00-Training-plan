################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS770
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS770.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS770.EXE" 
	DEL "COBIS770.OBJ" 
	DEL "COBIS770.cob" 


"COBIS770.OBJ" : "COBIS770.cob" "COBIS770.CBI"
	COBOL32.EXE -i"COBIS770.CBI" -WC,MAIN(MAIN) "COBIS770.cob"

"COBIS770.EXE" : "COBIS770.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS770.EXE" \
	@"COBIS770.001" 


"COBIS770.cob" : "COBIS770.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS770.PCO" ONAME="COBIS770.cob"

