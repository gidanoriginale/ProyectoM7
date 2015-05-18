<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="veureAssignacions.aspx.vb" Inherits="Proyecto_M7_C.veureAssignacions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server">
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
