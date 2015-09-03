<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar_numero.aspx.cs" Inherits="SistemaContactos.agregar_numero_randy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%" >
            <tr>
                <td>
                    <label style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">Agregar Teléfono a Contacto Existente:</label></td>
            </tr>   
        </table>
        <hr />  
        <table style="width: 100%; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000000; background-color: #CCCCCC; text-align: center;">
            <tr style="align-content:center">
                <td>
                    <a href="index.aspx">
                        <asp:Image ImageUrl="img/home.png" runat="server" />
                        <br /> Inicio <br />
                    </a>
                </td>
                <td>
                    <a href="agregar_contacto.aspx">
                        <asp:Image ImageUrl="img/agregar_contacto.png" runat="server" />
                        <br /> Nuevo <br />contacto
                    </a>
                </td>
                <td>
                    <a href="agregar_telefono.aspx">
                        <asp:Image ImageUrl="img/agregar_telefono.png" runat="server" />
                        <br /> Agregar <br />Teléfonos
                    </a>
                </td>
                <td>
                    <a href="busquedas.aspx">
                        <asp:Image ImageUrl="img/busquedas.png" runat="server" />
                        <br /> Buscar, eliminar o <br />Modificar Contacto
                    </a>
                </td>
                <td>
                    <a href="listado_telefonico.aspx">
                        <asp:Image ImageUrl="img/listado_telefonico.png" runat="server" />
                        <br /> Listado <br />Telefónico
                    </a>
                </td>
            </tr>
        </table>
        <hr />
        <br />
        <table style="width: 100%">
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
                    <asp:Label ID="lblRutGuardado" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblNombreGuardado" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblApellidoGuardado" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCiudadGuardada" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmailGuardado" runat="server" Text="Label"></asp:Label>

                </td>
            </tr>
                        <tr>
                <td>
                    <asp:Label ID="lblTelefonoAntiguo" runat="server" Text="Teléfonos Guardados"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTelefonosGuardados" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTipoTelefono" runat="server" Text="Tipo Teléfono"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTipoFono" runat="server">
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
                     <asp:Button ID="btnAgregarTelefono" runat="server" Text="Agregar Telefono" OnClick="btnAgregarTelefono_Click"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
