       @OPTIONS NOALPHAL
       IDENTIFICATION DIVISION.
       CLASS-ID. CLASS-THIS AS "CSVOUTNEW.Form1"
           INHERITS CLASS-FORM.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           ENVIRONMENT-NAME IS ENV-NAME
           ENVIRONMENT-VALUE IS ENV-VAL
           .
       REPOSITORY.
           CLASS CLASS-BOOLEAN AS "System.Boolean"
           CLASS CLASS-CANCELEVENTARGS AS "System.ComponentModel.CancelEventArgs"
           DELEGATE DELEGATE-CANCELEVENTHANDLER AS "System.ComponentModel.CancelEventHandler"
           CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
           INTERFACE INTERFACE-ICONTAINER AS "System.ComponentModel.IContainer"
           CLASS CLASS-POINT AS "System.Drawing.Point"
           CLASS CLASS-SIZE AS "System.Drawing.Size"
           CLASS CLASS-SIZEF AS "System.Drawing.SizeF"
           CLASS CLASS-EVENTARGS AS "System.EventArgs"
           DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
           CLASS CLASS-OBJECT AS "System.Object"
           CLASS CLASS-STRING AS "System.String"
           ENUM ENUM-AUTOSCALEMODE AS "System.Windows.Forms.AutoScaleMode"
           CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
           CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
           ENUM ENUM-DIALOGRET AS "System.Windows.Forms.DialogResult"
           CLASS CLASS-FORM AS "System.Windows.Forms.Form"
           CLASS CLASS-LABEL AS "System.Windows.Forms.Label"
           CLASS CLASS-MESSAGEBOX AS "System.Windows.Forms.MessageBox"
           CLASS CLASS-OPENFILEDIALOG AS "System.Windows.Forms.OpenFileDialog"
           CLASS CLASS-SAVEFILEDIALOG AS "System.Windows.Forms.SaveFileDialog"
           CLASS CLASS-TEXTBOX AS "System.Windows.Forms.TextBox"
           PROPERTY PROP-AUTOSCALEDIMENSIONS AS "AutoScaleDimensions"
           PROPERTY PROP-AUTOSCALEMODE AS "AutoScaleMode"
           PROPERTY PROP-AUTOSIZE AS "AutoSize"
           PROPERTY PROP-BTNOPEN AS "btnOpen"
           PROPERTY PROP-BTNOUT AS "btnOut"
           PROPERTY PROP-BTNSAVE AS "btnSave"
           PROPERTY PROP-CLIENTSIZE AS "ClientSize"
           PROPERTY PROP-CONTROLS AS "Controls"
           PROPERTY PROP-FILENAME AS "FileName"
           PROPERTY PROP-FONT AS "Font"
           PROPERTY PROP-LABEL1 AS "label1"
           PROPERTY PROP-LABEL2 AS "label2"
           PROPERTY PROP-LOCATION AS "Location"
           PROPERTY PROP-NAME AS "Name"
           PROPERTY PROP-OPENFILEDIALOG1 AS "openFileDialog1"
           PROPERTY PROP-SAVEFILEDIALOG1 AS "saveFileDialog1"
           PROPERTY PROP-SIZE AS "Size"
           PROPERTY PROP-TABINDEX AS "TabIndex"
           PROPERTY PROP-TEXT AS "Text"
           PROPERTY PROP-TXTINFILE AS "txtInfile"
           PROPERTY PROP-TXTOUTFILE AS "txtOutfile"
           PROPERTY PROP-USEVISUALSTYLEBACKCOLOR AS "UseVisualStyleBackColor"      
           .
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 openFileDialog1 OBJECT REFERENCE CLASS-OPENFILEDIALOG.
       01 saveFileDialog1 OBJECT REFERENCE CLASS-SAVEFILEDIALOG.
       01 label1 OBJECT REFERENCE CLASS-LABEL.
       01 label2 OBJECT REFERENCE CLASS-LABEL.
       01 txtInfile OBJECT REFERENCE CLASS-TEXTBOX.
       01 txtOutfile OBJECT REFERENCE CLASS-TEXTBOX.
       01 btnOpen OBJECT REFERENCE CLASS-BUTTON.
       01 btnSave OBJECT REFERENCE CLASS-BUTTON.
       01 btnOut OBJECT REFERENCE CLASS-BUTTON.
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
       01 TEMP1 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP2 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP3 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP4 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP5 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP6 OBJECT REFERENCE CLASS-OPENFILEDIALOG.
       01 TEMP7 OBJECT REFERENCE CLASS-SAVEFILEDIALOG.
       01 TEMP8 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP9 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP10 BINARY-LONG.
       01 TEMP11 BINARY-LONG.
       01 TEMP12 OBJECT REFERENCE CLASS-POINT.
       01 TEMP13 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP14 OBJECT REFERENCE CLASS-STRING.
       01 TEMP15 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP16 BINARY-LONG.
       01 TEMP17 BINARY-LONG.
       01 TEMP18 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP19 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP20 BINARY-LONG.
       01 TEMP21 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP22 BINARY-LONG.
       01 TEMP23 BINARY-LONG.
       01 TEMP24 OBJECT REFERENCE CLASS-POINT.
       01 TEMP25 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP26 OBJECT REFERENCE CLASS-STRING.
       01 TEMP27 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP28 BINARY-LONG.
       01 TEMP29 BINARY-LONG.
       01 TEMP30 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP31 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP32 BINARY-LONG.
       01 TEMP33 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP34 BINARY-LONG.
       01 TEMP35 BINARY-LONG.
       01 TEMP36 OBJECT REFERENCE CLASS-POINT.
       01 TEMP37 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP38 OBJECT REFERENCE CLASS-STRING.
       01 TEMP39 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP40 BINARY-LONG.
       01 TEMP41 BINARY-LONG.
       01 TEMP42 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP43 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP44 BINARY-LONG.
       01 TEMP45 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP46 OBJECT REFERENCE CLASS-STRING.
       01 TEMP47 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP48 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP49 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP50 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP51 BINARY-LONG.
       01 TEMP52 BINARY-LONG.
       01 TEMP53 OBJECT REFERENCE CLASS-POINT.
       01 TEMP54 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP55 OBJECT REFERENCE CLASS-STRING.
       01 TEMP56 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP57 BINARY-LONG.
       01 TEMP58 BINARY-LONG.
       01 TEMP59 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP60 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP61 BINARY-LONG.
       01 TEMP62 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP63 OBJECT REFERENCE CLASS-STRING.
       01 TEMP64 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP65 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP66 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP67 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP68 BINARY-LONG.
       01 TEMP69 BINARY-LONG.
       01 TEMP70 OBJECT REFERENCE CLASS-POINT.
       01 TEMP71 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP72 OBJECT REFERENCE CLASS-STRING.
       01 TEMP73 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP74 BINARY-LONG.
       01 TEMP75 BINARY-LONG.
       01 TEMP76 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP77 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP78 BINARY-LONG.
       01 TEMP79 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP80 OBJECT REFERENCE CLASS-STRING.
       01 TEMP81 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP82 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP83 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP84 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP85 OBJECT REFERENCE CLASS-OPENFILEDIALOG.
       01 TEMP86 OBJECT REFERENCE DELEGATE-CANCELEVENTHANDLER.
       01 TEMP87 OBJECT REFERENCE CLASS-SAVEFILEDIALOG.
       01 TEMP88 OBJECT REFERENCE DELEGATE-CANCELEVENTHANDLER.
       01 TEMP89 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP90 BINARY-LONG.
       01 TEMP91 BINARY-LONG.
       01 TEMP92 OBJECT REFERENCE CLASS-POINT.
       01 TEMP93 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP94 OBJECT REFERENCE CLASS-STRING.
       01 TEMP95 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP96 BINARY-LONG.
       01 TEMP97 BINARY-LONG.
       01 TEMP98 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP99 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP100 BINARY-LONG.
       01 TEMP101 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP102 OBJECT REFERENCE CLASS-STRING.
       01 TEMP103 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP104 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP105 BINARY-LONG.
       01 TEMP106 BINARY-LONG.
       01 TEMP107 OBJECT REFERENCE CLASS-POINT.
       01 TEMP108 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP109 OBJECT REFERENCE CLASS-STRING.
       01 TEMP110 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP111 BINARY-LONG.
       01 TEMP112 BINARY-LONG.
       01 TEMP113 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP114 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP115 BINARY-LONG.
       01 TEMP116 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP117 OBJECT REFERENCE CLASS-STRING.
       01 TEMP118 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP119 COMP-1.
       01 TEMP120 COMP-1.
       01 TEMP121 OBJECT REFERENCE CLASS-SIZEF.
       01 TEMP122 BINARY-LONG.
       01 TEMP123 BINARY-LONG.
       01 TEMP124 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP125 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP126 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP127 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP128 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP129 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP130 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP131 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP132 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP133 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP134 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP135 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP136 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP137 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP138 OBJECT REFERENCE CLASS-TEXTBOX.
       01 TEMP139 OBJECT REFERENCE CLASS-STRING.
       01 TEMP140 OBJECT REFERENCE CLASS-STRING.
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
      *<string value="txtInfile" />
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
      *<string value="txtOutfile" />
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
      *<string value="btnOpen" />
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
      *<string value="btnSave" />
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
      *<string value="btnOut" />
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
      *<string value="openFileDialog1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.OpenFileDialog" />
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
      *<string value="saveFileDialog1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.SaveFileDialog" />
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
      *<string value="txtInfile" />
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
      *<string value="txtInfile" />
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
      *<int32 value="27" />
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
      *<string value="txtInfile" />
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
      *<string value="txtInfile" />
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
      *<string value="txtInfile" />
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
      *<int32 value="262" />
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
      *<string value="txtInfile" />
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
      *<string value="txtOutfile" />
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
      *<string value="txtOutfile" />
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
      *<int32 value="72" />
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
      *<string value="txtOutfile" />
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
      *<string value="txtOutfile" />
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
      *<string value="txtOutfile" />
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
      *<int32 value="262" />
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
      *<string value="txtOutfile" />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen" />
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
      *<int32 value="311" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="27" />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen" />
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
      *<int32 value="24" />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen" />
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
      *<string value="..." />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen" />
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
      *<string value="btnOpen_Click" />
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
      *<string value="btnSave" />
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
      *<string value="btnSave" />
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
      *<int32 value="311" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="70" />
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
      *<string value="btnSave" />
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
      *<string value="btnSave" />
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
      *<string value="btnSave" />
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
      *<int32 value="24" />
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
      *<string value="btnSave" />
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
      *<string value="btnSave" />
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
      *<string value="..." />
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
      *<string value="btnSave" />
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
      *<string value="btnSave" />
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
      *<string value="btnSave_Click" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<int32 value="125" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="109" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<string value="CSV出力" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut" />
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
      *<string value="btnOut_Click" />
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
      *<string value="openFileDialog1" />
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
      *<string value="openFileDialog1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="FileOk" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.ComponentModel.CancelEventHandler" />
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
      *<string value="openFileDialog1_FileOk" />
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
      *<string value="saveFileDialog1" />
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
      *<string value="saveFileDialog1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="FileOk" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.ComponentModel.CancelEventHandler" />
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
      *<string value="saveFileDialog1_FileOk" />
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
      *<int32 value="9" />
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
      *<int32 value="63" />
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
      *<string value="入力ファイル" />
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
      *<int32 value="57" />
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
      *<int32 value="63" />
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
      *<int32 value="6" />
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
      *<string value="出力ファイル" />
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
      *<int32 value="369" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="144" />
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
      *<string value="btnOut" />
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
      *<string value="btnSave" />
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
      *<string value="btnOpen" />
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
      *<string value="txtOutfile" />
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
      *<string value="txtInfile" />
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
           INVOKE CLASS-TEXTBOX "NEW" RETURNING TEMP1
           SET PROP-TXTINFILE OF SELF TO TEMP1
           INVOKE CLASS-TEXTBOX "NEW" RETURNING TEMP2
           SET PROP-TXTOUTFILE OF SELF TO TEMP2
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP3
           SET PROP-BTNOPEN OF SELF TO TEMP3
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP4
           SET PROP-BTNSAVE OF SELF TO TEMP4
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP5
           SET PROP-BTNOUT OF SELF TO TEMP5
           INVOKE CLASS-OPENFILEDIALOG "NEW" RETURNING TEMP6
           SET PROP-OPENFILEDIALOG1 OF SELF TO TEMP6
           INVOKE CLASS-SAVEFILEDIALOG "NEW" RETURNING TEMP7
           SET PROP-SAVEFILEDIALOG1 OF SELF TO TEMP7
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP8
           SET PROP-LABEL1 OF SELF TO TEMP8
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP9
           SET PROP-LABEL2 OF SELF TO TEMP9
           INVOKE SELF "SuspendLayout"
      *
      *txtInfile
      *
           MOVE 26 TO TEMP10
           MOVE 27 TO TEMP11
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP10 BY VALUE TEMP11 RETURNING TEMP12
           SET TEMP13 TO PROP-TXTINFILE OF SELF
           SET PROP-LOCATION OF TEMP13 TO TEMP12
           SET TEMP14 TO N"txtInfile"
           SET TEMP15 TO PROP-TXTINFILE OF SELF
           SET PROP-NAME OF TEMP15 TO TEMP14
           MOVE 262 TO TEMP16
           MOVE 19 TO TEMP17
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP16 BY VALUE TEMP17 RETURNING TEMP18
           SET TEMP19 TO PROP-TXTINFILE OF SELF
           SET PROP-SIZE OF TEMP19 TO TEMP18
           MOVE 0 TO TEMP20
           SET TEMP21 TO PROP-TXTINFILE OF SELF
           MOVE TEMP20 TO PROP-TABINDEX OF TEMP21
      *
      *txtOutfile
      *
           MOVE 26 TO TEMP22
           MOVE 72 TO TEMP23
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP22 BY VALUE TEMP23 RETURNING TEMP24
           SET TEMP25 TO PROP-TXTOUTFILE OF SELF
           SET PROP-LOCATION OF TEMP25 TO TEMP24
           SET TEMP26 TO N"txtOutfile"
           SET TEMP27 TO PROP-TXTOUTFILE OF SELF
           SET PROP-NAME OF TEMP27 TO TEMP26
           MOVE 262 TO TEMP28
           MOVE 19 TO TEMP29
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP28 BY VALUE TEMP29 RETURNING TEMP30
           SET TEMP31 TO PROP-TXTOUTFILE OF SELF
           SET PROP-SIZE OF TEMP31 TO TEMP30
           MOVE 1 TO TEMP32
           SET TEMP33 TO PROP-TXTOUTFILE OF SELF
           MOVE TEMP32 TO PROP-TABINDEX OF TEMP33
      *
      *btnOpen
      *
           MOVE 311 TO TEMP34
           MOVE 27 TO TEMP35
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP34 BY VALUE TEMP35 RETURNING TEMP36
           SET TEMP37 TO PROP-BTNOPEN OF SELF
           SET PROP-LOCATION OF TEMP37 TO TEMP36
           SET TEMP38 TO N"btnOpen"
           SET TEMP39 TO PROP-BTNOPEN OF SELF
           SET PROP-NAME OF TEMP39 TO TEMP38
           MOVE 24 TO TEMP40
           MOVE 23 TO TEMP41
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP40 BY VALUE TEMP41 RETURNING TEMP42
           SET TEMP43 TO PROP-BTNOPEN OF SELF
           SET PROP-SIZE OF TEMP43 TO TEMP42
           MOVE 2 TO TEMP44
           SET TEMP45 TO PROP-BTNOPEN OF SELF
           MOVE TEMP44 TO PROP-TABINDEX OF TEMP45
           SET TEMP46 TO N"..."
           SET TEMP47 TO PROP-BTNOPEN OF SELF
           SET PROP-TEXT OF TEMP47 TO TEMP46
           SET TEMP48 TO PROP-BTNOPEN OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP48 TO B"1"
           SET TEMP49 TO PROP-BTNOPEN OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"btnOpen_Click" RETURNING TEMP50
           INVOKE TEMP49 "add_Click" USING BY VALUE TEMP50
      *
      *btnSave
      *
           MOVE 311 TO TEMP51
           MOVE 70 TO TEMP52
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP51 BY VALUE TEMP52 RETURNING TEMP53
           SET TEMP54 TO PROP-BTNSAVE OF SELF
           SET PROP-LOCATION OF TEMP54 TO TEMP53
           SET TEMP55 TO N"btnSave"
           SET TEMP56 TO PROP-BTNSAVE OF SELF
           SET PROP-NAME OF TEMP56 TO TEMP55
           MOVE 24 TO TEMP57
           MOVE 23 TO TEMP58
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP57 BY VALUE TEMP58 RETURNING TEMP59
           SET TEMP60 TO PROP-BTNSAVE OF SELF
           SET PROP-SIZE OF TEMP60 TO TEMP59
           MOVE 3 TO TEMP61
           SET TEMP62 TO PROP-BTNSAVE OF SELF
           MOVE TEMP61 TO PROP-TABINDEX OF TEMP62
           SET TEMP63 TO N"..."
           SET TEMP64 TO PROP-BTNSAVE OF SELF
           SET PROP-TEXT OF TEMP64 TO TEMP63
           SET TEMP65 TO PROP-BTNSAVE OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP65 TO B"1"
           SET TEMP66 TO PROP-BTNSAVE OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"btnSave_Click" RETURNING TEMP67
           INVOKE TEMP66 "add_Click" USING BY VALUE TEMP67
      *
      *btnOut
      *
           MOVE 125 TO TEMP68
           MOVE 109 TO TEMP69
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP68 BY VALUE TEMP69 RETURNING TEMP70
           SET TEMP71 TO PROP-BTNOUT OF SELF
           SET PROP-LOCATION OF TEMP71 TO TEMP70
           SET TEMP72 TO N"btnOut"
           SET TEMP73 TO PROP-BTNOUT OF SELF
           SET PROP-NAME OF TEMP73 TO TEMP72
           MOVE 75 TO TEMP74
           MOVE 23 TO TEMP75
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP74 BY VALUE TEMP75 RETURNING TEMP76
           SET TEMP77 TO PROP-BTNOUT OF SELF
           SET PROP-SIZE OF TEMP77 TO TEMP76
           MOVE 4 TO TEMP78
           SET TEMP79 TO PROP-BTNOUT OF SELF
           MOVE TEMP78 TO PROP-TABINDEX OF TEMP79
           SET TEMP80 TO N"CSV出力"
           SET TEMP81 TO PROP-BTNOUT OF SELF
           SET PROP-TEXT OF TEMP81 TO TEMP80
           SET TEMP82 TO PROP-BTNOUT OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP82 TO B"1"
           SET TEMP83 TO PROP-BTNOUT OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"btnOut_Click" RETURNING TEMP84
           INVOKE TEMP83 "add_Click" USING BY VALUE TEMP84
      *
      *openFileDialog1
      *
           SET TEMP85 TO PROP-OPENFILEDIALOG1 OF SELF
           INVOKE DELEGATE-CANCELEVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"openFileDialog1_FileOk" RETURNING TEMP86
           INVOKE TEMP85 "add_FileOk" USING BY VALUE TEMP86
      *
      *saveFileDialog1
      *
           SET TEMP87 TO PROP-SAVEFILEDIALOG1 OF SELF
           INVOKE DELEGATE-CANCELEVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"saveFileDialog1_FileOk" RETURNING TEMP88
           INVOKE TEMP87 "add_FileOk" USING BY VALUE TEMP88
      *
      *label1
      *
           SET TEMP89 TO PROP-LABEL1 OF SELF
           SET PROP-AUTOSIZE OF TEMP89 TO B"1"
           MOVE 24 TO TEMP90
           MOVE 9 TO TEMP91
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP90 BY VALUE TEMP91 RETURNING TEMP92
           SET TEMP93 TO PROP-LABEL1 OF SELF
           SET PROP-LOCATION OF TEMP93 TO TEMP92
           SET TEMP94 TO N"label1"
           SET TEMP95 TO PROP-LABEL1 OF SELF
           SET PROP-NAME OF TEMP95 TO TEMP94
           MOVE 63 TO TEMP96
           MOVE 12 TO TEMP97
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP96 BY VALUE TEMP97 RETURNING TEMP98
           SET TEMP99 TO PROP-LABEL1 OF SELF
           SET PROP-SIZE OF TEMP99 TO TEMP98
           MOVE 5 TO TEMP100
           SET TEMP101 TO PROP-LABEL1 OF SELF
           MOVE TEMP100 TO PROP-TABINDEX OF TEMP101
           SET TEMP102 TO N"入力ファイル"
           SET TEMP103 TO PROP-LABEL1 OF SELF
           SET PROP-TEXT OF TEMP103 TO TEMP102
      *
      *label2
      *
           SET TEMP104 TO PROP-LABEL2 OF SELF
           SET PROP-AUTOSIZE OF TEMP104 TO B"1"
           MOVE 24 TO TEMP105
           MOVE 57 TO TEMP106
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP105 BY VALUE TEMP106 RETURNING TEMP107
           SET TEMP108 TO PROP-LABEL2 OF SELF
           SET PROP-LOCATION OF TEMP108 TO TEMP107
           SET TEMP109 TO N"label2"
           SET TEMP110 TO PROP-LABEL2 OF SELF
           SET PROP-NAME OF TEMP110 TO TEMP109
           MOVE 63 TO TEMP111
           MOVE 12 TO TEMP112
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP111 BY VALUE TEMP112 RETURNING TEMP113
           SET TEMP114 TO PROP-LABEL2 OF SELF
           SET PROP-SIZE OF TEMP114 TO TEMP113
           MOVE 6 TO TEMP115
           SET TEMP116 TO PROP-LABEL2 OF SELF
           MOVE TEMP115 TO PROP-TABINDEX OF TEMP116
           SET TEMP117 TO N"出力ファイル"
           SET TEMP118 TO PROP-LABEL2 OF SELF
           SET PROP-TEXT OF TEMP118 TO TEMP117
      *
      *Form1
      *
           MOVE 6.00000000000000E+00 TO TEMP119
           MOVE 1.20000000000000E+01 TO TEMP120
           INVOKE CLASS-SIZEF "NEW" USING BY VALUE TEMP119 BY VALUE TEMP120 RETURNING TEMP121
           SET PROP-AUTOSCALEDIMENSIONS OF SELF TO TEMP121
           SET PROP-AUTOSCALEMODE OF SELF TO PROP-FONT OF ENUM-AUTOSCALEMODE
           MOVE 369 TO TEMP122
           MOVE 144 TO TEMP123
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP122 BY VALUE TEMP123 RETURNING TEMP124
           SET PROP-CLIENTSIZE OF SELF TO TEMP124
           SET TEMP126 TO PROP-LABEL2 OF SELF
           SET TEMP125 TO PROP-CONTROLS OF SELF
           INVOKE TEMP125 "Add" USING BY VALUE TEMP126
           SET TEMP128 TO PROP-LABEL1 OF SELF
           SET TEMP127 TO PROP-CONTROLS OF SELF
           INVOKE TEMP127 "Add" USING BY VALUE TEMP128
           SET TEMP130 TO PROP-BTNOUT OF SELF
           SET TEMP129 TO PROP-CONTROLS OF SELF
           INVOKE TEMP129 "Add" USING BY VALUE TEMP130
           SET TEMP132 TO PROP-BTNSAVE OF SELF
           SET TEMP131 TO PROP-CONTROLS OF SELF
           INVOKE TEMP131 "Add" USING BY VALUE TEMP132
           SET TEMP134 TO PROP-BTNOPEN OF SELF
           SET TEMP133 TO PROP-CONTROLS OF SELF
           INVOKE TEMP133 "Add" USING BY VALUE TEMP134
           SET TEMP136 TO PROP-TXTOUTFILE OF SELF
           SET TEMP135 TO PROP-CONTROLS OF SELF
           INVOKE TEMP135 "Add" USING BY VALUE TEMP136
           SET TEMP138 TO PROP-TXTINFILE OF SELF
           SET TEMP137 TO PROP-CONTROLS OF SELF
           INVOKE TEMP137 "Add" USING BY VALUE TEMP138
           SET TEMP139 TO N"Form1"
           SET PROP-NAME OF SELF TO TEMP139
           SET TEMP140 TO N"Form1"
           SET PROP-TEXT OF SELF TO TEMP140
           INVOKE SELF "ResumeLayout" USING BY VALUE B"0"
           INVOKE SELF "PerformLayout"
       END METHOD INITIALIZECOMPONENT.
      
       METHOD-ID. NEW.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           INVOKE SELF "InitializeComponent".
       END METHOD NEW.
       
       METHOD-ID. btnOpen_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-RET OBJECT REFERENCE ENUM-DIALOGRET.       
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           INVOKE openFileDialog1 "ShowDialog" USING SELF RETURNING W-RET.      
       END METHOD btnOpen_Click.
       
       METHOD-ID. openFileDialog1_FileOk PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-CANCELEVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           SET PROP-TEXT OF txtInfile TO PROP-FILENAME OF openFileDialog1.      
       END METHOD openFileDialog1_FileOk.
       
       METHOD-ID. saveFileDialog1_FileOk PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-CANCELEVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           SET PROP-TEXT OF txtOutfile TO PROP-FILENAME OF saveFileDialog1.      
       END METHOD saveFileDialog1_FileOk.
       
       METHOD-ID. btnSave_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-RET OBJECT REFERENCE ENUM-DIALOGRET.      
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           INVOKE saveFileDialog1 "ShowDialog" USING SELF RETURNING W-RET.
       END METHOD btnSave_Click.
       
       METHOD-ID. btnOut_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-ENVVAL PIC X(240).      
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
           DISPLAY "STOCKFL" UPON ENV-NAME.
           SET W-ENVVAL TO PROP-TEXT OF txtInfile.
           DISPLAY W-ENVVAL UPON ENV-VAL.
           
           DISPLAY "CSVFILE" UPON ENV-NAME.
           SET W-ENVVAL TO PROP-TEXT OF txtOutfile.
           DISPLAY W-ENVVAL UPON ENV-VAL.
           
           CALL "CSVOUT".
           INVOKE CLASS-MESSAGEBOX "Show" USING SELF N"処理が終了しました".
           
       END METHOD btnOut_Click.
      
       END OBJECT.
       END CLASS CLASS-THIS.