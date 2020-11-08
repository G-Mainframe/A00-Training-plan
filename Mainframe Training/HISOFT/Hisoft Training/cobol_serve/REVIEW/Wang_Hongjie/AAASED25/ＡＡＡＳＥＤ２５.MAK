################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = C:\COB97\SOC\‚`‚`‚`‚r‚d‚c‚Q‚T
OBJECT_PATH = 
LINK_DEBUG_OPTION = /DEBUG /DEBUGTYPE:COFF


ALL : "‚`‚`‚`‚r‚d‚c‚Q‚T.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "‚`‚`‚`‚r‚d‚c‚Q‚T.EXE" 
	DEL "‚`‚`‚`‚r‚d‚c‚Q‚T.OBJ" 
	DEL "‚`‚`‚`‚r‚d‚c‚Q‚T.COB" 


"‚`‚`‚`‚r‚d‚c‚Q‚T.OBJ" : "‚`‚`‚`‚r‚d‚c‚Q‚T.COB" "‚`‚`‚`‚r‚d‚c‚Q‚T.CBI"
	COBOL32.EXE -i"‚`‚`‚`‚r‚d‚c‚Q‚T.CBI" -WC,MAIN(MAIN) "‚`‚`‚`‚r‚d‚c‚Q‚T.COB"

"‚`‚`‚`‚r‚d‚c‚Q‚T.EXE" : "‚`‚`‚`‚r‚d‚c‚Q‚T.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"‚`‚`‚`‚r‚d‚c‚Q‚T.EXE" \
	@"‚`‚`‚`‚r‚d‚c‚Q‚T.001" 


"‚`‚`‚`‚r‚d‚c‚Q‚T.COB" : "‚`‚`‚`‚r‚d‚c‚Q‚T.PCO"
	"D:\oracle\ora90\BIN\procob.exe" INAME="‚`‚`‚`‚r‚d‚c‚Q‚T.PCO" ONAME="‚`‚`‚`‚r‚d‚c‚Q‚T.COB"

