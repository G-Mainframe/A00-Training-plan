################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = D:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\AAASED25
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "AAASED25.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "AAASED25.EXE" 
	DEL "AAASED25.OBJ" 
	DEL "AAASED25.COB" 


"AAASED25.OBJ" : "AAASED25.COB" "AAASED25.CBI"
	COBOL32.EXE -i"AAASED25.CBI" -WC,MAIN(MAIN) "AAASED25.COB"

"AAASED25.EXE" : "AAASED25.OBJ" "D:\oracle\ora90\precomp\lib\orasql9.lib" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"AAASED25.EXE" \
	@"AAASED25.001" 


"AAASED25.COB" : "AAASED25.PCO"
	"D:\oracle\ora90\bin\procob.exe" INAME="AAASED25.PCO" ONAME="AAASED25.COB"

