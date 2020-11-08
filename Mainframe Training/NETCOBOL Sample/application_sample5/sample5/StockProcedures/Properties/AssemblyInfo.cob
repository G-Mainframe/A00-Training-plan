       IDENTIFICATION DIVISION.
       CLASS-ID. ASSEMBLY-INFO AS ".ASSEMBLY" CUSTOM-ATTRIBUTE IS 
           CA-ASSEMBLYTITLE CA-ASSEMBLYDESCRIPTION CA-ASSEMBLYCONFIGURATION
           CA-ASSEMBLYCOMPANY CA-ASSEMBLYPRODUCT CA-ASSEMBLYCOPYRIGHT
           CA-ASSEMBLYTRADEMARK CA-ASSEMBLYCULTURE
           CA-ASSEMBLYVERSION
           CA-ALLOWPARTIALTRUSTEDCALL.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           
           *> �A�Z���u���Ɋւ����ʏ��͈ȉ��̑����Z�b�g���Ƃ����Đ��䂳��܂��B 
           *> �A�Z���u���Ɋ֘A�t�����Ă������ύX����ɂ́A
           *> �����̑����l��ύX���Ă��������B
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTITLE CLASS CLASS-ASSEMBLYTITLE
             USING N"StockProcedures"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYDESCRIPTION CLASS CLASS-ASSEMBLYDESCRIPTION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCONFIGURATION CLASS CLASS-ASSEMBLYCONFIGURATION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOMPANY CLASS CLASS-ASSEMBLYCOMPANY
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYPRODUCT CLASS CLASS-ASSEMBLYPRODUCT
             USING N"StockProcedures"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOPYRIGHT CLASS CLASS-ASSEMBLYCOPYRIGHT
             USING N"Copyright (C) �x�m�� 2006"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTRADEMARK CLASS CLASS-ASSEMBLYTRADEMARK
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCULTURE CLASS CLASS-ASSEMBLYCULTURE
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           
           *> �A�Z���u���̃o�[�W�������́A�ȉ��� 4 �̒l�ō\������Ă��܂�:
           *>
           *>      Major Version
           *>      Minor Version 
           *>      Build Number
           *>      Revision
           *>
           CUSTOM-ATTRIBUTE CA-ASSEMBLYVERSION CLASS CLASS-ASSEMBLYVERSION
             USING N"1.0.0.0"
       
           CUSTOM-ATTRIBUTE CA-ALLOWPARTIALTRUSTEDCALL CLASS CLASS-ALLOWPARTIALTRUSTEDCALL
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
           CLASS CLASS-ASSEMBLYVERSION AS "System.Reflection.AssemblyVersionAttribute"
           CLASS CLASS-ALLOWPARTIALTRUSTEDCALL AS "System.Security.AllowPartiallyTrustedCallersAttribute"
           PROPERTY PROP-EMPTYSTRING AS "EmptyString"
           .
       END CLASS ASSEMBLY-INFO.