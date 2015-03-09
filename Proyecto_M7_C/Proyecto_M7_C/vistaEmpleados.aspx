<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="vistaEmpleados.aspx.vb" Inherits="Proyecto_M7_C.vistaEmpleados" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="cognom" HeaderText="cognom" 
                    SortExpression="cognom" />
                <asp:BoundField DataField="categoria" HeaderText="categoria" 
                    SortExpression="categoria" />
                <asp:BoundField DataField="sou" HeaderText="sou" SortExpression="sou" />
            </Columns>
            <EmptyDataTemplate>
                No hay datos
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Empleat] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Empleat] ([id], [dni], [nom], [cognom], [categoria], [sou]) VALUES (@id, @dni, @nom, @cognom, @categoria, @sou)" 
            SelectCommand="SELECT * FROM [Empleat]" 
            UpdateCommand="UPDATE [Empleat] SET [dni] = @dni, [nom] = @nom, [cognom] = @cognom, [categoria] = @categoria, [sou] = @sou WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="dni" Type="String" />
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="cognom" Type="String" />
                <asp:Parameter Name="categoria" Type="Int32" />
                <asp:Parameter Name="sou" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dni" Type="String" />
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="cognom" Type="String" />
                <asp:Parameter Name="categoria" Type="Int32" />
                <asp:Parameter Name="sou" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            dni:
            <asp:TextBox ID="dniTextBox" runat="server" Text='<%# Bind("dni") %>' />
            <br />
            nom:
            <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
            <br />
            cognom:
            <asp:TextBox ID="cognomTextBox" runat="server" Text='<%# Bind("cognom") %>' />
            <br />
            categoria:
            <asp:TextBox ID="categoriaTextBox" runat="server" 
                Text='<%# Bind("categoria") %>' />
            <br />
            sou:
            <asp:TextBox ID="souTextBox" runat="server" Text='<%# Bind("sou") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id:
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            dni:
            <asp:TextBox ID="dniTextBox" runat="server" Text='<%# Bind("dni") %>' />
            <br />
            nom:
            <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
            <br />
            cognom:
            <asp:TextBox ID="cognomTextBox" runat="server" Text='<%# Bind("cognom") %>' />
            <br />
            categoria:
            <asp:TextBox ID="categoriaTextBox" runat="server" 
                Text='<%# Bind("categoria") %>' />
            <br />
            sou:
            <asp:TextBox ID="souTextBox" runat="server" Text='<%# Bind("sou") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            dni:
            <asp:Label ID="dniLabel" runat="server" Text='<%# Bind("dni") %>' />
            <br />
            nom:
            <asp:Label ID="nomLabel" runat="server" Text='<%# Bind("nom") %>' />
            <br />
            cognom:
            <asp:Label ID="cognomLabel" runat="server" Text='<%# Bind("cognom") %>' />
            <br />
            categoria:
            <asp:Label ID="categoriaLabel" runat="server" Text='<%# Bind("categoria") %>' />
            <br />
            sou:
            <asp:Label ID="souLabel" runat="server" Text='<%# Bind("sou") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Empleat] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Empleat] ([id], [dni], [nom], [cognom], [categoria], [sou]) VALUES (@id, @dni, @nom, @cognom, @categoria, @sou)" 
        SelectCommand="SELECT * FROM [Empleat] WHERE ([id] = @id)" 
        
        UpdateCommand="UPDATE [Empleat] SET [dni] = @dni, [nom] = @nom, [cognom] = @cognom, [categoria] = @categoria, [sou] = @sou WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="dni" Type="String" />
            <asp:Parameter Name="nom" Type="String" />
            <asp:Parameter Name="cognom" Type="String" />
            <asp:Parameter Name="categoria" Type="Int32" />
            <asp:Parameter Name="sou" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="dni" Type="String" />
            <asp:Parameter Name="nom" Type="String" />
            <asp:Parameter Name="cognom" Type="String" />
            <asp:Parameter Name="categoria" Type="Int32" />
            <asp:Parameter Name="sou" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
