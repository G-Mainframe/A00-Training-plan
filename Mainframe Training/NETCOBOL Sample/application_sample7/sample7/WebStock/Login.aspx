<%@ Page Language="Fujitsu.COBOL" AutoEventWireup="true"  CodeFile="Login.aspx.cobx" Inherits="_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <link href="option.css" type="text/css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Style="z-index: 100; left: 200px;
            position: absolute; top: 65px" Text="ログイン"></asp:Label>
        &nbsp;
        <table style="z-index: 109; left: 110px; position: absolute; top: 125px">
            <tr>
                <td style="width: 100px; height: 35px">
                    <asp:Label ID="Label3" runat="server" BackColor="LightGreen" Style="z-index: 100; left: 8px;
                        position: absolute; top: 10px" Text="社員コード" Width="79px"></asp:Label>
                </td>
                <td style="width: 175px; height: 35px">
                    <asp:TextBox ID="txtEmployeeCode" runat="server" Style="z-index: 100; left: 110px;
                        position: absolute; top: 10px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 35px">
                    <asp:Label ID="Label4" runat="server" BackColor="LightGreen" Style="z-index: 100; left: 8px;
                        position: absolute; top: 47px" Text="パスワード" Width="80px"></asp:Label>
                </td>
                <td style="width: 175px; height: 35px">
                    <asp:TextBox ID="txtPassword" runat="server" Style="z-index: 100; left: 110px; position: absolute;
                        top: 45px" TextMode="Password" Width="155px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblDate" runat="server" Style="z-index: 101; left: 419px; position: absolute;
            top: 65px" Text="2006.01.01"></asp:Label>
        <asp:Button ID="btnStart" runat="server" Style="z-index: 102; left: 135px; position: absolute;
            top: 235px" Text="開始" Width="70px" OnClick="btnStart_Click" />
        <input style="z-index: 110; left: 297px; width: 70px; position: absolute; top: 235px"
            type="button" value="終了" onclick="window.close()"/>
        <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Style="z-index: 103; left: 85px;
            position: absolute; top: 300px" Width="335px"></asp:Label>
        <asp:RegularExpressionValidator ID="regvalEmp" runat="server" ControlToValidate="txtEmployeeCode"
            Display="None" ErrorMessage="社員コードは数字6桁です" Style="z-index: 104; left: 430px;
            position: absolute; top: 135px" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="regvalPwd" runat="server" ControlToValidate="txtPassword"
            Display="None" ErrorMessage="パスワードは6文字です" Style="z-index: 105; left: 430px; position: absolute;
            top: 175px" ValidationExpression="\w{6}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqvalEmp" runat="server" ControlToValidate="txtEmployeeCode"
            Display="None" ErrorMessage="社員コードは必須です" Style="z-index: 106; left: 520px; position: absolute;
            top: 135px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="reqvalPwd" runat="server" ControlToValidate="txtPassword"
            Display="None" ErrorMessage="パスワードは必須です" Style="z-index: 107; left: 520px; position: absolute;
            top: 175px"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="入力に間違いがあります"
            Style="z-index: 111; left: 90px; position: absolute; top: 350px" Width="325px" />
    
    </div>
    </form>
</body>
</html>
