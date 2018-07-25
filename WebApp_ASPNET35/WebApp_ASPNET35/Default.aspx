<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp_ASPNET35.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align>
            <asp:Label ID="lblTitle" runat="server" Text="ASP.NET Web App - .NET Framework 3.5 " Font-Bold="True"></asp:Label>
            <br /><br />
         </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server" Text="Enter your name."></asp:Label>
        </div>
    </form>
</body>
</html>
