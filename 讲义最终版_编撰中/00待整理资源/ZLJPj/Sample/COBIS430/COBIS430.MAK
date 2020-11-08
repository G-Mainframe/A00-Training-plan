################################################################################
#                               NetCOBOL V7.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\NetCOBOL
PROJECT_PATH = C:\COB97\SOC\COBIS430
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "COBIS430.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "COBIS430.EXE" 
	DEL "COBIS430.OBJ" 
	DEL "COBIS430.COB" 


"COBIS430.OBJ" : "COBIS430.COB" "COBIS430.CBI"
	COBOL32.EXE -i"COBIS430.CBI" -WC,MAIN(MAIN) "COBIS430.COB"

"COBIS430.EXE" : "COBIS430.OBJ" "D:\oracle\ora92\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"COBIS430.EXE" \
	@"COBIS430.001" 


"COBIS430.COB" : "COBIS430.PCO"
	"D:\oracle\ora92\bin\procob.exe" INAME="COBIS430.PCO" ONAME="COBIS430.COB"

