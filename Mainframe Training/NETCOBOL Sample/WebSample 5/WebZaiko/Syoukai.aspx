<%@ Page Language="Fujitsu.COBOL" AutoEventWireup="true"  CodeFile="Syoukai.aspx.cobx" Inherits="_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Syoukai</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
			<asp:label id="lblTitle" style="Z-INDEX: 133; LEFT: 216px; POSITION: absolute; TOP: 24px" runat="server"
				Width="264px" Height="16px" Font-Size="Larger">入出庫明細照会</asp:label>
			<asp:textbox id="txtYear" style="Z-INDEX: 122; LEFT: 64px; POSITION: absolute; TOP: 88px" tabIndex="1"
				runat="server" Width="48px" Height="24px" CssClass="right" Font-Size="Small"
				ForeColor="Black" MaxLength="4"></asp:textbox>
			<asp:label id="lblYear" style="Z-INDEX: 119; LEFT: 64px; POSITION: absolute; TOP: 64px" runat="server"
				Width="48px" Height="24px" CssClass="center" BorderWidth="1px" Font-Size="Small" ForeColor="Black"
				BackColor="PowderBlue" BorderStyle="Solid" BorderColor="Gray">年</asp:label>
			<asp:textbox id="txtMonth" style="Z-INDEX: 112; LEFT: 112px; POSITION: absolute; TOP: 88px" tabIndex="2"
				runat="server" Width="24px" Height="24px" CssClass="right" Font-Size="Small"
				ForeColor="Black" MaxLength="2"></asp:textbox>
			<asp:label id="lblCmdtNo" style="Z-INDEX: 106; LEFT: 136px; POSITION: absolute; TOP: 64px"
				runat="server" Width="80px" Height="24px" CssClass="center" BorderWidth="1px" Font-Size="Small"
				ForeColor="Black" BackColor="PowderBlue" BorderStyle="Solid" BorderColor="Gray">商品コード</asp:label>
			<asp:textbox id="txtCmdtNo" style="Z-INDEX: 114; LEFT: 136px; POSITION: absolute; TOP: 88px"
				tabIndex="2" runat="server" Width="80px" Height="24px" CssClass="right" Font-Size="Small" ForeColor="Black" MaxLength="5"></asp:textbox>
			<asp:label id="lblCmdtTitleName" style="Z-INDEX: 108; LEFT: 216px; POSITION: absolute; TOP: 64px"
				runat="server" Width="232px" Height="24px" CssClass="left" BorderWidth="1px" Font-Size="Small"
				ForeColor="Black" BackColor="PowderBlue" BorderStyle="Solid" BorderColor="Gray">　　　商　　品　　名</asp:label>
			<asp:button id="btnStart" style="Z-INDEX: 117; LEFT: 152px; POSITION: absolute; TOP: 128px"
				runat="server" Width="81" Height="24" Text="検索" OnClick="btnStart_Click"></asp:button>
			<asp:button id="btnFwd" style="Z-INDEX: 104; LEFT: 264px; POSITION: absolute; TOP: 128px" runat="server"
				Width="81px" Height="24px" Text="次ページ" Enabled="False" OnClick="btnFwd_Click"></asp:button>
			<asp:button id="btnBck" style="Z-INDEX: 110; LEFT: 376px; POSITION: absolute; TOP: 128px" runat="server"
				Width="82" Height="24" Text="前ページ" Enabled="False" OnClick="btnBck_Click"></asp:button>
			<asp:table id="tblStock" style="Z-INDEX: 116; LEFT: 64px; POSITION: absolute; TOP: 168px" runat="server"
				Width="592px" Height="280px" BorderWidth="1px" Font-Size="XX-Small"
				ForeColor="Black" BackColor="White" BorderStyle="Solid" BorderColor="Black" GridLines="Both"
				HorizontalAlign="Center" CellSpacing="0">
				<asp:TableRow VerticalAlign="Middle" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Center"
					ForeColor="Black" ID="row0" BackColor="PowderBlue" Font-Size="Small" Font-Names="ＭＳ Ｐゴシック" runat="server">
					<asp:TableCell RowSpan="1" ColumnSpan="1" Font-Size="Small" HorizontalAlign="Center" BorderColor="Black"
						Text="納品日" ID="tblcelldate00" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="Small" HorizontalAlign="Center" Text="伝票№" BorderColor="Black" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="Small" HorizontalAlign="Center" Text="区分" BorderColor="Black" ColumnSpan="2" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="Small" HorizontalAlign="Center" Text="単価・原価" BorderColor="Black" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="Small" HorizontalAlign="Center" Text="入庫数" CssClass="center" BorderColor="Black" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="Small" HorizontalAlign="Center" Text="出庫数" BorderColor="Black" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow9" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell57" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell58" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell59" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell60" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell61" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell62" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell63" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow1" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell1" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell2" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell3" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell4" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell5" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell6" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell7" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow2" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell8" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell9" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell10" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell11" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell12" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell13" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell14" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow3" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell15" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell16" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell17" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell18" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell19" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell20" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell21" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow4" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell22" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell23" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell24" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell25" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell26" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell27" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell28" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow5" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell29" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell30" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell31" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell32" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell33" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell34" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell35" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow6" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell36" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell37" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell38" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell39" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell40" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell41" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell42" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow7" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell43" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell44" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell45" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell46" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell47" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell48" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell49" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="TableRow8" VerticalAlign="Middle"
					HorizontalAlign="Center" Font-Size="X-Small" runat="server">
					<asp:TableCell ID="TableCell50" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell51" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell52" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell53" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell54" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell55" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
					<asp:TableCell ID="TableCell56" Font-Size="X-Small" HorizontalAlign="Center" runat="server"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			<asp:label id="lblCmdtName" style="Z-INDEX: 120; LEFT: 216px; POSITION: absolute; TOP: 88px"
				runat="server" Width="232px" Height="24px" BorderWidth="1px" Font-Size="Small" ForeColor="Black" BorderStyle="Outset"></asp:label>
			<asp:label id="lblMonth" style="Z-INDEX: 121; LEFT: 112px; POSITION: absolute; TOP: 64px" runat="server"
				Width="24px" Height="24px" CssClass="center" BorderWidth="1px" Font-Size="Small" ForeColor="Black"
				BackColor="PowderBlue" BorderStyle="Solid" BorderColor="Gray">月</asp:label>
			<asp:label id="lblDate" style="Z-INDEX: 102; LEFT: 576px; POSITION: absolute; TOP: 32px" runat="server"
				Width="80px" Height="24px">2006.01.01</asp:label>
			<asp:label id="lblMsg" style="Z-INDEX: 123; LEFT: 64px; POSITION: absolute; TOP: 464px" runat="server"
				Width="592px" Height="24px" ForeColor="Red"></asp:label>
			<asp:RangeValidator id="rngvalYear" style="Z-INDEX: 125; LEFT: 472px; POSITION: absolute; TOP: 512px"
				runat="server" ErrorMessage="年" ControlToValidate="txtYear" Display="None" MaximumValue="9999" MinimumValue="0000"
				Type="Integer"></asp:RangeValidator>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 126; LEFT: 64px; POSITION: absolute; TOP: 504px"
				runat="server" Width="360px" Height="136px" HeaderText="入力に間違いがあります"></asp:ValidationSummary>
			<asp:RangeValidator id="rngvalMonth" style="Z-INDEX: 127; LEFT: 472px; POSITION: absolute; TOP: 544px"
				runat="server" ErrorMessage="月" ControlToValidate="txtMonth" Display="None" MaximumValue="12" MinimumValue="1"
				Type="Integer"></asp:RangeValidator>
			<asp:RequiredFieldValidator id="reqvalNo" style="Z-INDEX: 128; LEFT: 584px; POSITION: absolute; TOP: 576px"
				runat="server" ErrorMessage="商品コードは必須です" ControlToValidate="txtCmdtNo" Display="None"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqvalYear" style="Z-INDEX: 129; LEFT: 584px; POSITION: absolute; TOP: 512px"
				runat="server" ErrorMessage="年は必須です" ControlToValidate="txtYear" Display="None"></asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator id="reqvalMonth" style="Z-INDEX: 130; LEFT: 585px; POSITION: absolute; TOP: 543px"
				runat="server" ErrorMessage="月は必須です" ControlToValidate="txtMonth" Display="None"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="regvalNo" style="Z-INDEX: 131; LEFT: 472px; POSITION: absolute; TOP: 568px"
				runat="server" ErrorMessage="商品コード" ControlToValidate="txtCmdtNo" Display="None" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
			<asp:Button id="btnExit" style="Z-INDEX: 132; LEFT: 488px; POSITION: absolute; TOP: 128px" runat="server"
				Width="82px" Height="24px" Text="終了" CausesValidation="False" OnClick="btnExit_Click"></asp:Button>&nbsp;
    </div>
    </form>
</body>
</html>
