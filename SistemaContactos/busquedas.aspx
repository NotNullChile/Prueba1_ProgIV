<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busquedas.aspx.cs" Inherits="SistemaContactos.busquedas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <table style="width: 100%" >
            <tr>
                <td>
                    <label style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">Módulo de Busqueda de Contactos</label></td>
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
    <form id="form1" runat="server">
    <div>
        <table style="font-family: Verdana, Geneva, Tahoma, sans-serif">
            <tr>
                <td>
                    <asp:Image ImageUrl="img/buscar_apellido.png" runat="server" />
                </td>
                <td><a href="busqueda_apellido.aspx">Busqueda por Apellido</a></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ImageUrl="img/buscar_dominio.png" runat="server" />
                </td>
                <td><a href="busqueda_cliente_dominio.aspx">Busqueda de Cliente por Dominio</a></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ImageUrl="img/busqueda_ciudad.png" runat="server" />
                </td>
                <td><a href="busqueda_proovedor_ciudad.aspx">Busqueda de Proveedor por Ciudad</a></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
