################################################################################
#                               NetCOBOL V8.0L10
################################################################################

.SUFFIXES:

COBOL_PATH = D:\Program Files\Fujitsu NetCOBOL for Windows
PROJECT_PATH = D:\ZLJPJ\SOURCE
OBJECT_PATH = 
LINK_DEBUG_OPTION = 
LINK_MAP_OPTION = 


ALL : "School.EXE" 

REBUILD : CLEAN ALL
CLEAN :
	DEL "School.EXE" 
	DEL "School.OBJ" 
	DEL "SUB11.OBJ" 
	DEL "SUB11.Cbl" 
	DEL "FormMain.OBJ" 
	DEL "MenuMain.OBJ" 
	DEL "SUB12.OBJ" 
	DEL "SUB12.Cbl" 
	DEL "SUB13.OBJ" 
	DEL "SUB13.Cbl" 
	DEL "SUB33.OBJ" 
	DEL "SUB33.Cbl" 
	DEL "SUB21.OBJ" 
	DEL "SUB21.Cbl" 
	DEL "SUB22.OBJ" 
	DEL "SUB22.Cbl" 
	DEL "SUB23.OBJ" 
	DEL "SUB23.Cbl" 
	DEL "SUB31.OBJ" 
	DEL "SUB31.Cbl" 
	DEL "SUB32.OBJ" 
	DEL "SUB32.Cbl" 
	DEL "FormStop.OBJ" 
	DEL "OracleLink.OBJ" 
	DEL "OracleLink.Cbl" 
	DEL "ErrorMsg.OBJ" 
	DEL "ErrorMsg.Cbl" 


"School.OBJ" : "School.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -WC,MAIN(MAIN) "School.Cbl"

"SUB11.OBJ" : "SUB11.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB11.Cbl"

"FormMain.OBJ" : "FormMain.CBL" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "FormMain.CBL"

"MenuMain.OBJ" : "MenuMain.CBL" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "MenuMain.CBL"

"SUB12.OBJ" : "SUB12.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB12.Cbl"

"SUB13.OBJ" : "SUB13.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB13.Cbl"

"SUB33.OBJ" : "SUB33.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB33.Cbl"

"SUB21.OBJ" : "SUB21.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB21.Cbl"

"SUB22.OBJ" : "SUB22.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB22.Cbl"

"SUB23.OBJ" : "SUB23.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB23.Cbl"

"SUB31.OBJ" : "SUB31.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB31.Cbl"

"SUB32.OBJ" : "SUB32.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "SUB32.Cbl"

"FormStop.OBJ" : "FormStop.CBL" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "FormStop.CBL"

"OracleLink.OBJ" : "OracleLink.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "OracleLink.Cbl"

"ErrorMsg.OBJ" : "ErrorMsg.Cbl" "SCHOOL.CBI"
	COBOL32.EXE -i"SCHOOL.CBI" -NM "ErrorMsg.Cbl"

"School.EXE" : "School.OBJ" "SUB11.OBJ" "FormMain.OBJ" "MenuMain.OBJ" "SUB12.OBJ" "SUB13.OBJ" "SUB33.OBJ" "SUB21.OBJ" "SUB22.OBJ" "SUB23.OBJ" "SUB31.OBJ" "SUB32.OBJ" "FormStop.OBJ" "OracleLink.OBJ" "ErrorMsg.OBJ" "D:\oracle\ora92\precomp\lib\orasql9.lib" "SCHOOL.LNI" 
	"$(COBOL_PATH)\LINK.EXE" $(LINK_DEBUG_OPTION) $(LINK_MAP_OPTION) \
	/OUT:"School.EXE" \
	@"SCHOOL.001" 


"SUB11.Cbl" : "SUB11.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB11.PCO" ONAME="SUB11.Cbl"

"SUB12.Cbl" : "SUB12.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB12.PCO" ONAME="SUB12.Cbl"

"SUB13.Cbl" : "SUB13.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB13.PCO" ONAME="SUB13.Cbl"

"SUB33.Cbl" : "SUB33.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB33.PCO" ONAME="SUB33.Cbl"

"SUB21.Cbl" : "SUB21.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB21.PCO" ONAME="SUB21.Cbl"

"SUB22.Cbl" : "SUB22.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB22.PCO" ONAME="SUB22.Cbl"

"SUB23.Cbl" : "SUB23.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB23.PCO" ONAME="SUB23.Cbl"

"SUB31.Cbl" : "SUB31.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB31.PCO" ONAME="SUB31.Cbl"

"SUB32.Cbl" : "SUB32.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="SUB32.PCO" ONAME="SUB32.Cbl"

"OracleLink.Cbl" : "OracleLink.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="OracleLink.PCO" ONAME="OracleLink.Cbl"

"ErrorMsg.Cbl" : "ErrorMsg.PCO"
	"d:\oracle\ora92\bin\procob.exe" INAME="ErrorMsg.PCO" ONAME="ErrorMsg.Cbl"

