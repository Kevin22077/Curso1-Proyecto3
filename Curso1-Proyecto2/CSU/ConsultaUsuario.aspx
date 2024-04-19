<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="Curso1_Proyecto2.CSU.ConsultaUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgUsuario" runat="server" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Titulo:"></asp:Label>
            <asp:TextBox ID="ttitulo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombres:"></asp:Label>
            <asp:TextBox ID="tnombres" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Apellidos:"></asp:Label>
            <asp:TextBox ID="tapellidos" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Usuario:"></asp:Label>
            <asp:TextBox ID="tusuario" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Contraseña:"></asp:Label>
            <asp:TextBox ID="tcontrasena" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="bconsultar" runat="server" OnClick="bconsultar_Click" Text="Consultar" />
        </div>
    </form>
</body>
</html>
