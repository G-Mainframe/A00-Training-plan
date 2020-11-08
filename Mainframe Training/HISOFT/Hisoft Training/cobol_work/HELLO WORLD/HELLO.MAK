################################################################################
#                               COBOL97 V61L20
################################################################################

.SUFFIXES:

COBOL_PATH = E:\Program Files\PCOB97
PROJECT_PATH = F:\COBOL\WORK_COBOL\HELLO WORLD
OBJECT_PATH = 
LINK_DEBUG_OPTION = 


ALL : "hello.exe" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "hello.exe" 
	DEL "hello.OBJ" 
	DEL "hello.COB" 


"hello.OBJ" : "hello.COB" "$(COBOL_PATH)\COBOL.CBI"
	COBOL32.EXE -i"$(COBOL_PATH)\COBOL.CBI" -WC,MAIN(MAIN) "hello.COB"

"hello.exe" : "hello.OBJ" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) \
	/OUT:"hello.exe" \
	@"HELLO.001" 


"hello.COB" : "HELLO.Pco"
	"D:\oracle\ora90\BIN\procob.exe" INAME="HELLO.Pco" ONAME="hello.COB"

