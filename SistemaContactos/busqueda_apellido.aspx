<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busqueda_apellido.aspx.cs" Inherits="SistemaContactos.busqueda_apellido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 165px;
        }
        .auto-style2 {
            width: 381px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese apellido a buscar:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtApellido" runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar un apellido" ControlToValidate="txtApellido" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>

                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="87px" />

                </td>
            </tr>
        </table>
        <br />
        <br />

        <table style="width: 100%;">
            <tr>
                <td>Tipo Contacto</td>
                <td>RUT</td>  
                <td>Nombre</td>
                <td>Apellido</td>
                <td>Ciudad</td>
                <td>Email</td>
                <td>Teléfonos</td>
                <td></td>

            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                </td>
                <td>

                </td>
                <td>

                </td>
                <td>

                </td>
                <td>

                </td>
                <td>

                </td>
                <td>

                </td>
                <td>

                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
