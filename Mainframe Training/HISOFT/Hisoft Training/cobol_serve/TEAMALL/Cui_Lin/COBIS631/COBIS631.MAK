################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS631
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS631.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS631.EXE" 
	DEL "COBIS631.OBJ" 
	DEL "COBIS631.COB" 


"COBIS631.OBJ" : "COBIS631.COB" "COBIS631.CBI"
	COBOL32.EXE -i"COBIS631.CBI" -WC,MAIN(MAIN) "COBIS631.COB"

"COBIS631.EXE" : "COBIS631.OBJ" "D:\oracle\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS631.EXE" \
	@"COBIS631.001" 


"COBIS631.COB" : "COBIS631.PCO"
	"D:\oracle\BIN\procob.exe" INAME="COBIS631.PCO" ONAME="COBIS631.COB"

