<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="asignarCursos.aspx.vb" Inherits="Proyecto_M7_C.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Assignar Cursos"></asp:Label>
    <br />
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="Treballador"></asp:Label>
    
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Empleat]"></asp:SqlDataSource>
    
    </div>
    <asp:Label ID="Label3" runat="server" Text="Curs"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="nom" DataValueField="hores">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Curs]"></asp:SqlDataSource>
    <br />
    Hores curs: 
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Assignar" />
    </form>
</body>
</html>
