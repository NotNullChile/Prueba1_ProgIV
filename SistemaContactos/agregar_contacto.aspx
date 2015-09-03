<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar_contacto.aspx.cs" Inherits="SistemaContactos.agregar_contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td><a href="index.aspx">Volver al inicio</a></td>
                <td></td>
                <td><a href="agregarContacto.aspx">Agregar un nuevo contacto</a></td>
                <td></td>
                <td><a href="ListadoContactos.aspx">Modificar/Eliminar/Buscar contactos</a></td>
                <td></td>
                <td><a href="listadoTelefonico.aspx">Listado Telefónico</a></td>
            </tr>
        </table>
        <br /><br /><br />
    
        <asp:Label ID="lblAgregarContacto" runat="server" Font-Bold="True" Font-Underline="True" Text="Agregar Nuevo Contacto"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblTipoContato" runat="server" Text="Tipo de Contacto"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlTipoContacto" runat="server">
                        <asp:ListItem>Cliente</asp:ListItem>
                        <asp:ListItem>Proveedor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Rut" ID="lblRut" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Debe Ingresar un RUT" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validNombre" runat="server" ErrorMessage="Debe Ingresar un Nombre" ControlToValidate="txtNombre" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Debe Ingresar un Apellido" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCiudad" ErrorMessage="Debe Ingresar una Ciudad" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe Ingresar un Correo Electrónico" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe usar un formato válido: ejemplo@dominio.cl" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTipoTelefono" runat="server" Text="Tipo Teléfono"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Fijo</asp:ListItem>
                        <asp:ListItem>Movil</asp:ListItem>
                    </asp:DropDownList>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe Ingresar un teléfono" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe Ingresar un teléfono" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Button ID="btnAgregarContacto" runat="server" Text="Agregar Contacto" OnClick="btnAgregarContacto_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>