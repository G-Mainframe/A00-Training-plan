       @OPTIONS NOALPHAL
       IDENTIFICATION DIVISION.
       CLASS-ID. CLASS-THIS AS "InterProgram.Form1"
           INHERITS CLASS-FORM.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
           .
       REPOSITORY.
           CLASS CLASS-FILEACCESS AS "Sample1.Class1"
           CLASS CLASS-BOOLEAN AS "System.Boolean"
           CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
           INTERFACE INTERFACE-ICONTAINER AS "System.ComponentModel.IContainer"
           CLASS CLASS-POINT AS "System.Drawing.Point"
           CLASS CLASS-SIZE AS "System.Drawing.Size"
           CLASS CLASS-SIZEF AS "System.Drawing.SizeF"
           CLASS CLASS-EVENTARGS AS "System.EventArgs"
           DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
           CLASS CLASS-OBJECT AS "System.Object"
           CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
           CLASS CLASS-STRING AS "System.String"
           CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
           ENUM ENUM-AUTOSCALEMODE AS "System.Windows.Forms.AutoScaleMode"
           CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
           CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
           CLASS CLASS-FORM AS "System.Windows.Forms.Form"
           CLASS CLASS-LABEL AS "System.Windows.Forms.Label"
           CLASS CLASS-MESSAGEBOX AS "System.Windows.Forms.MessageBox"
           CLASS CLASS-TEXTBOX AS "System.Windows.Forms.TextBox"
           PROPERTY PROP-AUTOSCALEDIMENSIONS AS "AutoScaleDimensions"
           PROPERTY PROP-AUTOSCALEMODE AS "AutoScaleMode"
           PROPERTY PROP-AUTOSIZE AS "AutoSize"
           PROPERTY PROP-BTNLOGON1 AS "btnLogon1"
           PROPERTY PROP-BTNLOGON2 AS "btnLogon2"
           PROPERTY PROP-CLIENTSIZE AS "ClientSize"
           PROPERTY PROP-CONTROLS AS "Controls"
           PROPERTY PROP-FONT AS "Font"
           PROPERTY PROP-LABEL1 AS "label1"
           PROPERTY PROP-LABEL2 AS "label2"
           PROPERTY PROP-LOCATION AS "Location"
           PROPERTY PROP-NAME AS "Name"
           PROPERTY PROP-SIZE AS "Size"
           PROPERTY PROP-TABINDEX AS "TabIndex"
           PROPERTY PROP-TEXT AS "Text"
           PROPERTY PROP-TXTPASSWD AS "txtPassWD"
           PROPERTY PROP-TXTUSERID AS "txtUserID"
           PROPERTY PROP-USESYSTEMPASSWORDCHAR AS "UseSystemPasswordChar"
           PROPERTY PROP-USEVISUALSTYLEBACKCOLOR AS "UseVisualStyleBackColor"
           .
      
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP-1 OBJECT REFERENCE CLASS-THIS.
       PROCEDURE DIVISION.
           INVOKE CLASS-THIS "NEW" RETURNING TEMP-1.
           INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
       END METHOD MAIN.
      
       END STATIC.
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 label1 OBJECT REFERENCE CLASS-LABEL.
       01 label2 OBJECT REFERENCE CLASS-LABEL.
       01 txtUserID OBJECT REFERENCE CLASS-TEXTBOX.
       01 txtPassWD OBJECT REFERENCE CLASS-TEXTBOX.
       01 btnLogon1 OBJECT REFERENCE CLASS-BUTTON.
       01 btnLogon2 OBJECT REFERENCE CLASS-BUTTON.
       01 components OBJECT REFERENCE INTERFACE-ICONTAINER.
       PROCEDURE DIVISION.
      
       METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
       PROCEDURE DIVISION USING BY VALUE disposing.
           IF disposing NOT = B"0" AND components NOT = NULL THEN
             INVOKE components "Dispose"
           END-IF.
           INVOKE SUPER "Dispose" USING disposing.
       END METHOD DISPOSE.
      
       METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP1 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP2 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP3 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP4 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP5 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP6 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP7 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP8 BINARY-LONG.
       01 TEMP9 BINARY-LONG.
       01 TEMP10 OBJECT REFERENCE CLASS-POINT.
       01 TEMP11 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP12 OBJECT REFERENCE CLASS-STRING.
       01 TEMP13 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP14 BINARY-LONG.
       01 TEMP15 BINARY-LONG.
       01 TEMP16 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP17 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP18 BINARY-LONG.
       01 TEMP19 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP20 OBJECT REFERENCE CLASS-STRING.
       01 TEMP21 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP22 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP23 BINARY-LONG.
       01 TEMP24 BINARY-LONG.
       01 TEMP25 OBJECT REFERENCE CLASS-POINT.
       01 TEMP26 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP27 OBJECT REFERENCE CLASS-STRING.
       01 TEMP28 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP29 BINARY-LONG.
       01 TEMP30 BINARY-LONG.
       01 TEMP31 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP32 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP33 BINARY-LONG.
       01 TEMP34 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP35 OBJECT REFERENCE CLASS-STRING.
       01 TEMP36 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP37 BINARY-LONG.
       01 TEMP38 BINARY-LONG.
       01 TEMP39 OBJECT REFERENCE CLASS-POINT.
       01 TEMP40 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP41 OBJECT REFERENCE CLASS-STRING.
       01 TEMP42 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP43 BINARY-LONG.
       01 TEMP44 BINARY-LONG.
       01 TEMP45 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP46 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP47 BINARY-LONG.
       01 TEMP48 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP49 BINARY-LONG.
       01 TEMP50 BINARY-LONG.
       01 TEMP51 OBJECT REFERENCE CLASS-POINT.
       01 TEMP52 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP53 OBJECT REFERENCE CLASS-STRING.
       01 TEMP54 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP55 BINARY-LONG.
       01 TEMP56 BINARY-LONG.
       01 TEMP57 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP58 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP59 BINARY-LONG.
       01 TEMP60 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP61 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP62 BINARY-LONG.
       01 TEMP63 BINARY-LONG.
       01 TEMP64 OBJECT REFERENCE CLASS-POINT.
       01 TEMP65 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP66 OBJECT REFERENCE CLASS-STRING.
       01 TEMP67 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP68 BINARY-LONG.
       01 TEMP69 BINARY-LONG.
       01 TEMP70 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP71 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP72 BINARY-LONG.
       01 TEMP73 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP74 OBJECT REFERENCE CLASS-STRING.
       01 TEMP75 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP76 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP77 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP78 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP79 BINARY-LONG.
       01 TEMP80 BINARY-LONG.
       01 TEMP81 OBJECT REFERENCE CLASS-POINT.
       01 TEMP82 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP83 OBJECT REFERENCE CLASS-STRING.
       01 TEMP84 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP85 BINARY-LONG.
       01 TEMP86 BINARY-LONG.
       01 TEMP87 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP88 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP89 BINARY-LONG.
       01 TEMP90 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP91 OBJECT REFERENCE CLASS-STRING.
       01 TEMP92 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP93 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP94 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP95 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP96 COMP-1.
       01 TEMP97 COMP-1.
       01 TEMP98 OBJECT REFERENCE CLASS-SIZEF.
       01 TEMP99 BINARY-LONG.
       01 TEMP100 BINARY-LONG.
       01 TEMP101 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP102 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP103 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP104 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP105 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP106 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP107 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP108 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP109 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP110 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP111 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP112 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP113 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP114 OBJECT REFERENCE CLASS-STRING.
       01 TEMP115 OBJECT REFERENCE CLASS-STRING.
       PROCEDURE DIVISION.
      *>>IMP BEGIN-EMBEDDED-CODEDOM
      *<embedded-codedom>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Label" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Label" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.TextBox" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.TextBox" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Button" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Button" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="SuspendLayout" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="24" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="25" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="40" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="12" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="UserID" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="24" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="76" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="54" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="12" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Password" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="26" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="40" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="162" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="19" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="26" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="91" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="162" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="19" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="3" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="UseSystemPasswordChar" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="113" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="130" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="75" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="23" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="4" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Logon1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="UseVisualStyleBackColor" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAttachEventStatement">
      *<prop name="Event">
      *<object type="System.CodeDom.CodeEventReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="Click" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.EventHandler" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="btnLogon1_Click" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="113" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="159" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="75" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="23" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="5" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Logon2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="UseVisualStyleBackColor" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAttachEventStatement">
      *<prop name="Event">
      *<object type="System.CodeDom.CodeEventReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="Click" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.EventHandler" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="btnLogon2_Click" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoScaleDimensions" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.SizeF" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<float32 value="6" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<float32 value="12" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoScaleMode" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeTypeReferenceExpression">
      *<prop name="Type">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.AutoScaleMode" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="Font" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="ClientSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="217" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="191" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="btnLogon1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtPassWD" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="txtUserID" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="ResumeLayout" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="False" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="PerformLayout" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</embedded-codedom>
      *>>IMP END-EMBEDDED-CODEDOM
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP1
           SET PROP-LABEL1 OF SELF TO TEMP1
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP2
           SET PROP-LABEL2 OF SELF TO TEMP2
           INVOKE CLASS-TEXTBOX "NEW" RETURNING TEMP3
           SET PROP-TXTUSERID OF SELF TO TEMP3
           INVOKE CLASS-TEXTBOX "NEW" RETURNING TEMP4
           SET PROP-TXTPASSWD OF SELF TO TEMP4
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP5
           SET PROP-BTNLOGON1 OF SELF TO TEMP5
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP6
           SET PROP-BTNLOGON2 OF SELF TO TEMP6
           INVOKE SELF "SuspendLayout"
      *
      *label1
      *
           SET TEMP7 TO PROP-LABEL1 OF SELF
           SET PROP-AUTOSIZE OF TEMP7 TO B"1"
           MOVE 24 TO TEMP8
           MOVE 25 TO TEMP9
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP8 BY VALUE TEMP9 RETURNING TEMP10
           SET TEMP11 TO PROP-LABEL1 OF SELF
           SET PROP-LOCATION OF TEMP11 TO TEMP10
           SET TEMP12 TO N"label1"
           SET TEMP13 TO PROP-LABEL1 OF SELF
           SET PROP-NAME OF TEMP13 TO TEMP12
           MOVE 40 TO TEMP14
           MOVE 12 TO TEMP15
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP14 BY VALUE TEMP15 RETURNING TEMP16
           SET TEMP17 TO PROP-LABEL1 OF SELF
           SET PROP-SIZE OF TEMP17 TO TEMP16
           MOVE 0 TO TEMP18
           SET TEMP19 TO PROP-LABEL1 OF SELF
           MOVE TEMP18 TO PROP-TABINDEX OF TEMP19
           SET TEMP20 TO N"UserID"
           SET TEMP21 TO PROP-LABEL1 OF SELF
           SET PROP-TEXT OF TEMP21 TO TEMP20
      *
      *label2
      *
           SET TEMP22 TO PROP-LABEL2 OF SELF
           SET PROP-AUTOSIZE OF TEMP22 TO B"1"
           MOVE 24 TO TEMP23
           MOVE 76 TO TEMP24
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP23 BY VALUE TEMP24 RETURNING TEMP25
           SET TEMP26 TO PROP-LABEL2 OF SELF
           SET PROP-LOCATION OF TEMP26 TO TEMP25
           SET TEMP27 TO N"label2"
           SET TEMP28 TO PROP-LABEL2 OF SELF
           SET PROP-NAME OF TEMP28 TO TEMP27
           MOVE 54 TO TEMP29
           MOVE 12 TO TEMP30
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP29 BY VALUE TEMP30 RETURNING TEMP31
           SET TEMP32 TO PROP-LABEL2 OF SELF
           SET PROP-SIZE OF TEMP32 TO TEMP31
           MOVE 1 TO TEMP33
           SET TEMP34 TO PROP-LABEL2 OF SELF
           MOVE TEMP33 TO PROP-TABINDEX OF TEMP34
           SET TEMP35 TO N"Password"
           SET TEMP36 TO PROP-LABEL2 OF SELF
           SET PROP-TEXT OF TEMP36 TO TEMP35
      *
      *txtUserID
      *
           MOVE 26 TO TEMP37
           MOVE 40 TO TEMP38
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP37 BY VALUE TEMP38 RETURNING TEMP39
           SET TEMP40 TO PROP-TXTUSERID OF SELF
           SET PROP-LOCATION OF TEMP40 TO TEMP39
           SET TEMP41 TO N"txtUserID"
           SET TEMP42 TO PROP-TXTUSERID OF SELF
           SET PROP-NAME OF TEMP42 TO TEMP41
           MOVE 162 TO TEMP43
           MOVE 19 TO TEMP44
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP43 BY VALUE TEMP44 RETURNING TEMP45
           SET TEMP46 TO PROP-TXTUSERID OF SELF
           SET PROP-SIZE OF TEMP46 TO TEMP45
           MOVE 2 TO TEMP47
           SET TEMP48 TO PROP-TXTUSERID OF SELF
           MOVE TEMP47 TO PROP-TABINDEX OF TEMP48
      *
      *txtPassWD
      *
           MOVE 26 TO TEMP49
           MOVE 91 TO TEMP50
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP49 BY VALUE TEMP50 RETURNING TEMP51
           SET TEMP52 TO PROP-TXTPASSWD OF SELF
           SET PROP-LOCATION OF TEMP52 TO TEMP51
           SET TEMP53 TO N"txtPassWD"
           SET TEMP54 TO PROP-TXTPASSWD OF SELF
           SET PROP-NAME OF TEMP54 TO TEMP53
           MOVE 162 TO TEMP55
           MOVE 19 TO TEMP56
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP55 BY VALUE TEMP56 RETURNING TEMP57
           SET TEMP58 TO PROP-TXTPASSWD OF SELF
           SET PROP-SIZE OF TEMP58 TO TEMP57
           MOVE 3 TO TEMP59
           SET TEMP60 TO PROP-TXTPASSWD OF SELF
           MOVE TEMP59 TO PROP-TABINDEX OF TEMP60
           SET TEMP61 TO PROP-TXTPASSWD OF SELF
           SET PROP-USESYSTEMPASSWORDCHAR OF TEMP61 TO B"1"
      *
      *btnLogon1
      *
           MOVE 113 TO TEMP62
           MOVE 130 TO TEMP63
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP62 BY VALUE TEMP63 RETURNING TEMP64
           SET TEMP65 TO PROP-BTNLOGON1 OF SELF
           SET PROP-LOCATION OF TEMP65 TO TEMP64
           SET TEMP66 TO N"btnLogon1"
           SET TEMP67 TO PROP-BTNLOGON1 OF SELF
           SET PROP-NAME OF TEMP67 TO TEMP66
           MOVE 75 TO TEMP68
           MOVE 23 TO TEMP69
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP68 BY VALUE TEMP69 RETURNING TEMP70
           SET TEMP71 TO PROP-BTNLOGON1 OF SELF
           SET PROP-SIZE OF TEMP71 TO TEMP70
           MOVE 4 TO TEMP72
           SET TEMP73 TO PROP-BTNLOGON1 OF SELF
           MOVE TEMP72 TO PROP-TABINDEX OF TEMP73
           SET TEMP74 TO N"Logon1"
           SET TEMP75 TO PROP-BTNLOGON1 OF SELF
           SET PROP-TEXT OF TEMP75 TO TEMP74
           SET TEMP76 TO PROP-BTNLOGON1 OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP76 TO B"1"
           SET TEMP77 TO PROP-BTNLOGON1 OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"btnLogon1_Click" RETURNING TEMP78
           INVOKE TEMP77 "add_Click" USING BY VALUE TEMP78
      *
      *btnLogon2
      *
           MOVE 113 TO TEMP79
           MOVE 159 TO TEMP80
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP79 BY VALUE TEMP80 RETURNING TEMP81
           SET TEMP82 TO PROP-BTNLOGON2 OF SELF
           SET PROP-LOCATION OF TEMP82 TO TEMP81
           SET TEMP83 TO N"btnLogon2"
           SET TEMP84 TO PROP-BTNLOGON2 OF SELF
           SET PROP-NAME OF TEMP84 TO TEMP83
           MOVE 75 TO TEMP85
           MOVE 23 TO TEMP86
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP85 BY VALUE TEMP86 RETURNING TEMP87
           SET TEMP88 TO PROP-BTNLOGON2 OF SELF
           SET PROP-SIZE OF TEMP88 TO TEMP87
           MOVE 5 TO TEMP89
           SET TEMP90 TO PROP-BTNLOGON2 OF SELF
           MOVE TEMP89 TO PROP-TABINDEX OF TEMP90
           SET TEMP91 TO N"Logon2"
           SET TEMP92 TO PROP-BTNLOGON2 OF SELF
           SET PROP-TEXT OF TEMP92 TO TEMP91
           SET TEMP93 TO PROP-BTNLOGON2 OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP93 TO B"1"
           SET TEMP94 TO PROP-BTNLOGON2 OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"btnLogon2_Click" RETURNING TEMP95
           INVOKE TEMP94 "add_Click" USING BY VALUE TEMP95
      *
      *Form1
      *
           MOVE 6.00000000000000E+00 TO TEMP96
           MOVE 1.20000000000000E+01 TO TEMP97
           INVOKE CLASS-SIZEF "NEW" USING BY VALUE TEMP96 BY VALUE TEMP97 RETURNING TEMP98
           SET PROP-AUTOSCALEDIMENSIONS OF SELF TO TEMP98
           SET PROP-AUTOSCALEMODE OF SELF TO PROP-FONT OF ENUM-AUTOSCALEMODE
           MOVE 217 TO TEMP99
           MOVE 191 TO TEMP100
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP99 BY VALUE TEMP100 RETURNING TEMP101
           SET PROP-CLIENTSIZE OF SELF TO TEMP101
           SET TEMP103 TO PROP-BTNLOGON2 OF SELF
           SET TEMP102 TO PROP-CONTROLS OF SELF
           INVOKE TEMP102 "Add" USING BY VALUE TEMP103
           SET TEMP105 TO PROP-BTNLOGON1 OF SELF
           SET TEMP104 TO PROP-CONTROLS OF SELF
           INVOKE TEMP104 "Add" USING BY VALUE TEMP105
           SET TEMP107 TO PROP-TXTPASSWD OF SELF
           SET TEMP106 TO PROP-CONTROLS OF SELF
           INVOKE TEMP106 "Add" USING BY VALUE TEMP107
           SET TEMP109 TO PROP-TXTUSERID OF SELF
           SET TEMP108 TO PROP-CONTROLS OF SELF
           INVOKE TEMP108 "Add" USING BY VALUE TEMP109
           SET TEMP111 TO PROP-LABEL2 OF SELF
           SET TEMP110 TO PROP-CONTROLS OF SELF
           INVOKE TEMP110 "Add" USING BY VALUE TEMP111
           SET TEMP113 TO PROP-LABEL1 OF SELF
           SET TEMP112 TO PROP-CONTROLS OF SELF
           INVOKE TEMP112 "Add" USING BY VALUE TEMP113
           SET TEMP114 TO N"Form1"
           SET PROP-NAME OF SELF TO TEMP114
           SET TEMP115 TO N"Form1"
           SET PROP-TEXT OF SELF TO TEMP115
           INVOKE SELF "ResumeLayout" USING BY VALUE B"0"
           INVOKE SELF "PerformLayout"
       END METHOD INITIALIZECOMPONENT.
      
       METHOD-ID. NEW.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           INVOKE SELF "InitializeComponent".
       END METHOD NEW.
       
       METHOD-ID. btnLogon1_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USERID PIC  N(5).
       01 PASSWD PIC  N(5).
       01 CHK-FLG PIC X(02).
       01 tmpStr OBJECT REFERENCE CLASS-STRING.
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
      * テキストボックスから情報を採取する
           SET USERID TO PROP-TEXT OF txtUserID.
           SET PASSWD TO PROP-TEXT OF txtPassWD.
      
      * サブプログラム呼出し
           CALL "READDATA" USING USERID PASSWD RETURNING CHK-FLG.
      
      * サブプログラムの戻り値で認証を判断
      * 戻り値が"OK"
           IF CHK-FLG = "OK" THEN
             SET tmpStr TO "認証OK"
      * メッセージボックスの表示
             INVOKE CLASS-MESSAGEBOX "Show" USING BY VALUE tmpStr
             EXIT METHOD
      * 戻り値が"NG"
           ELSE
             SET tmpStr TO "認証NG"
      * メッセージボックスの表示
             INVOKE CLASS-MESSAGEBOX "Show" USING BY VALUE tmpStr
           END-IF.   
       END METHOD btnLogon1_Click.
       
       METHOD-ID. btnLogon2_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USERID PIC  N(5).
       01 PASSWD PIC  N(5).
       01 CHK-FLG PIC X(02).
       01 tmpStr OBJECT REFERENCE CLASS-STRING.
       01 clsUserCheck  OBJECT REFERENCE CLASS-FILEACCESS.
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           SET USERID TO PROP-TEXT OF txtUserID.
           SET PASSWD TO PROP-TEXT OF txtPassWD.
      * インスタンスの作成
           INVOKE CLASS-FILEACCESS "NEW" RETURNING clsUserCheck
      * メソッドの呼出し
           INVOKE clsUserCheck "GetUserData" USING  USERID PASSWD RETURNING CHK-FLG
            IF CHK-FLG = "OK" THEN
              SET tmpStr TO "認証OK"
              INVOKE CLASS-MESSAGEBOX "Show" USING BY VALUE tmpStr      
              EXIT METHOD
            ELSE
              SET tmpStr TO "認証NG"
              INVOKE CLASS-MESSAGEBOX "Show" USING BY VALUE tmpStr                           
            END-IF.
       END METHOD btnLogon2_Click.
      
       END OBJECT.
       END CLASS CLASS-THIS.