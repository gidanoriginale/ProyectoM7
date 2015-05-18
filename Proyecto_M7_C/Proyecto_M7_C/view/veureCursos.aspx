<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="veureCursos.aspx.vb" Inherits="Proyecto_M7_C.veureCursos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="codi" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="codi" HeaderText="codi" InsertVisible="False" 
                    ReadOnly="True" SortExpression="codi" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="idCategoria" HeaderText="idCategoria" 
                    SortExpression="idCategoria" />
                <asp:BoundField DataField="hores" HeaderText="hores" SortExpression="hores" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                No hay Cursos en la base de datos
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Curs]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="codi" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                codi:
                <asp:Label ID="codiLabel1" runat="server" Text='<%# Eval("codi") %>' />
                <br />
                nom:
                <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
                <br />
                idCategoria:
                <asp:TextBox ID="idCategoriaTextBox" runat="server" 
                    Text='<%# Bind("idCategoria") %>' />
                <br />
                hores:
                <asp:TextBox ID="horesTextBox" runat="server" Text='<%# Bind("hores") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nom:
                <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
                <br />
                idCategoria:
                <asp:TextBox ID="idCategoriaTextBox" runat="server" 
                    Text='<%# Bind("idCategoria") %>' />
                <br />
                hores:
                <asp:TextBox ID="horesTextBox" runat="server" Text='<%# Bind("hores") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                codi:
                <asp:Label ID="codiLabel" runat="server" Text='<%# Eval("codi") %>' />
                <br />
                nom:
                <asp:Label ID="nomLabel" runat="server" Text='<%# Bind("nom") %>' />
                <br />
                idCategoria:
                <asp:Label ID="idCategoriaLabel" runat="server" 
                    Text='<%# Bind("idCategoria") %>' />
                <br />
                hores:
                <asp:Label ID="horesLabel" runat="server" Text='<%# Bind("hores") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
