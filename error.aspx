<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
</head>

<body>

<form id="form1" runat="server">
	<asp:AccessDataSource id="AccessDataSource1" runat="server" DataFile="website123.mdb" SelectCommand="SELECT [ID], [Username], [Email], [Password], [First Name] AS First_Name, [Last Name] AS Last_Name, [Phone number] AS Phone_number FROM [website] ORDER BY [First Name]">
	</asp:AccessDataSource>
	<asp:GridView id="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID">
			</asp:BoundField>
			<asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username">
			</asp:BoundField>
			<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
			</asp:BoundField>
			<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password">
			</asp:BoundField>
			<asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name">
			</asp:BoundField>
			<asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name">
			</asp:BoundField>
			<asp:BoundField DataField="Phone_number" HeaderText="Phone_number" SortExpression="Phone_number">
			</asp:BoundField>
		</Columns>
	</asp:GridView>
</form>

</body>

</html>
