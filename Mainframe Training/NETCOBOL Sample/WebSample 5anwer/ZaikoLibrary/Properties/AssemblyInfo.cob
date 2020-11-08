       IDENTIFICATION DIVISION.
       CLASS-ID. ASSEMBLY-INFO AS ".ASSEMBLY" CUSTOM-ATTRIBUTE IS 
           CA-ASSEMBLYTITLE CA-ASSEMBLYDESCRIPTION CA-ASSEMBLYCONFIGURATION
           CA-ASSEMBLYCOMPANY CA-ASSEMBLYPRODUCT CA-ASSEMBLYCOPYRIGHT
           CA-ASSEMBLYTRADEMARK CA-ASSEMBLYCULTURE
           CA-COMVISIBLE CA-GUID
           CA-ASSEMBLYVERSION CA-ASSEMBLYFILEVERSION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           
           *> アセンブリに関する一般情報は以下の属性セットをとおして制御されます。 
           *> アセンブリに関連付けられている情報を変更するには、
           *> これらの属性値を変更してください。
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTITLE CLASS CLASS-ASSEMBLYTITLE
             USING N"ZaikoLibrary"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYDESCRIPTION CLASS CLASS-ASSEMBLYDESCRIPTION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCONFIGURATION CLASS CLASS-ASSEMBLYCONFIGURATION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOMPANY CLASS CLASS-ASSEMBLYCOMPANY
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYPRODUCT CLASS CLASS-ASSEMBLYPRODUCT
             USING N"ZaikoLibrary"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOPYRIGHT CLASS CLASS-ASSEMBLYCOPYRIGHT
             USING N"Copyright (C) 富士通 2006"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTRADEMARK CLASS CLASS-ASSEMBLYTRADEMARK
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCULTURE CLASS CLASS-ASSEMBLYCULTURE
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           
           *>  次の GUID は、このプロジェクトが COM に公開される場合の、typelib の ID です
           CUSTOM-ATTRIBUTE CA-GUID CLASS CLASS-GUID
             USING N"7b36349c-b9fa-4af6-b29f-4ed1e6980fac"
           
           *> ComVisible を B"0" に設定すると、このアセンブリ内の型は COM コンポーネントには 
           *> 参照不可能になります。COM からこのアセンブリ内の型にアクセスする場合は、 
           *> その型の ComVisible 属性を B"1" に設定してください。
           CUSTOM-ATTRIBUTE CA-COMVISIBLE CLASS CLASS-COMVISIBLE
             USING B"0"
           
           *> アセンブリのバージョン情報は、以下の 4 つの値で構成されています:
           *>
           *>      Major Version
           *>      Minor Version 
           *>      Build Number
           *>      Revision
           *>
           CUSTOM-ATTRIBUTE CA-ASSEMBLYVERSION CLASS CLASS-ASSEMBLYVERSION
             USING N"1.0.0.0"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYFILEVERSION CLASS CLASS-ASSEMBLYFILEVERSION
             USING N"1.0.0.0"
             .
       REPOSITORY.
           CLASS CLASS-CLRUTIL AS "Fujitsu.COBOL.CLRUtil"
           CLASS CLASS-ASSEMBLYTITLE AS "System.Reflection.AssemblyTitleAttribute"
           CLASS CLASS-ASSEMBLYDESCRIPTION AS "System.Reflection.AssemblyDescriptionAttribute"
           CLASS CLASS-ASSEMBLYCONFIGURATION AS "System.Reflection.AssemblyConfigurationAttribute"
           CLASS CLASS-ASSEMBLYCOMPANY AS "System.Reflection.AssemblyCompanyAttribute"
           CLASS CLASS-ASSEMBLYPRODUCT AS "System.Reflection.AssemblyProductAttribute"
           CLASS CLASS-ASSEMBLYCOPYRIGHT AS "System.Reflection.AssemblyCopyrightAttribute"
           CLASS CLASS-ASSEMBLYTRADEMARK AS "System.Reflection.AssemblyTrademarkAttribute"
           CLASS CLASS-ASSEMBLYCULTURE AS "System.Reflection.AssemblyCultureAttribute"
           CLASS CLASS-GUID AS "System.Runtime.InteropServices.GuidAttribute"
           CLASS CLASS-COMVISIBLE AS "System.Runtime.InteropServices.ComVisibleAttribute"
           CLASS CLASS-ASSEMBLYVERSION AS "System.Reflection.AssemblyVersionAttribute"
           CLASS CLASS-ASSEMBLYFILEVERSION AS "System.Reflection.AssemblyFileVersionAttribute"
           PROPERTY PROP-EMPTYSTRING AS "EmptyString"
           .
       END CLASS ASSEMBLY-INFO.
