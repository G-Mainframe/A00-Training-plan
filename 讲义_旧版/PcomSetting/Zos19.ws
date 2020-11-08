[Profile]
ID=WS
Version=7
[Telnet3270]
HostName=10.18.42.130
HostPortNumber=3270
Security=N
AutoReconnect=Y
LastConfigHostDoesNotTimeout=N
[Communication]
Link=telnet3270
[3270]
ScreenSize=32x80
QueryReplyMode=Auto
HostCodePage=037-U
[Keyboard]
CuaKeyboard=1
Language=Prc
DefaultKeyboard=E:\PcomSetting\Keyboard.kmp
IBMDefaultKeyboard=N
[Window]
ViewFlags=CF00
RuleLinePos=0 5
MFIcolor=Y
[LT]
IgnoreWCCStartPrint=Y
UndefinedCode=Y
UndefinedDBCSChar=Y
[Telnet5250]
LastConfigHostDoesNotTimeout=N
[Telnet5250SPX]
LastConfigHostDoesNotTimeout=N
[TelnetASCII]
LastConfigHostDoesNotTimeout=N
[Transfer]
DefaultDirectory=E:\
HostCommand=IND$FILE
PacketSize=8000
PCCodePage=1258
XferTypesVM1=text~( ASCII CRLF RECFM V LRECL 133  )
XferTypesVM2=binary~( RECFM V  )
XferTypesVM3=append~( ASCII CRLF APPEND  )
XferTypesMVS1=text~( ASCII CRLF LRECL(133)  )
XferTypesMVS2=binary~( RECFM(V)  )
XferTypesMVS3=append~( ASCII CRLF APPEND  )
[HotSpot]
Exists=Y
template1=PF PFnn
template2=PF FPnn
template3=PF Fnn
template4=PF nn
template5=URL
