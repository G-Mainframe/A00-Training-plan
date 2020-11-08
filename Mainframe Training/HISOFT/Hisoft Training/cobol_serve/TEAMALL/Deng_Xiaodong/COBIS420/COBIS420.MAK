################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\COBIS420
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS420.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS420.EXE" 
	DEL "COBIS420.OBJ" 
	DEL "COBIS420.COB" 


"COBIS420.OBJ" : "COBIS420.COB" "COBIS420.CBI"
	COBOL32.EXE -i"COBIS420.CBI" -WC,MAIN(MAIN) "COBIS420.COB"

"COBIS420.EXE" : "COBIS420.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS420.EXE" \
	@"COBIS420.001" 


"COBIS420.COB" : "COBIS420.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="COBIS420.PCO" ONAME="COBIS420.COB"

