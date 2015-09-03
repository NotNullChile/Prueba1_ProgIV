<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificar_contacto.aspx.cs" Inherits="SistemaContactos.modificar_contacto" %>

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
                    <label style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">Módulo de Gestión de Contactos</label></td>
            </tr>
            </table>
<hr />  
            <table style="width: 100%; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: bold; color: #000000; background-color: #C0C0C0;">
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
                        <br /> Buscar <br />Contacto
                    </a>
                </td>
                <td>
                    <a href="modificar_contacto.aspx">
                        <asp:Image ImageUrl="img/modificar_contacto.png" runat="server" />
                        <br /> Modificar <br />Contacto
                    </a>
                </td>
                <td>
                    <a href="eliminar_contacto.aspx">
                        <asp:Image ImageUrl="img/eliminar_contacto.png" runat="server" />
                        <br /> Eliminar <br />Contacto
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
        <% 
            if (Session["listaContacto"] != null)
            {
                List<Negocio.Contacto> listaContactos = (List<Negocio.Contacto>)Session["listaContacto"];
                Response.Write("<table style='width: 50%;'");
                Response.Write("<tr>");
                Response.Write("<td>RUT</td>");
                Response.Write("<td>Nombre</td>");
                Response.Write("<td>Apellido</td>");
                Response.Write("<td>Ciudad</td>");
                Response.Write("<td>email</td>");
                Response.Write("<td>Teléfonos</td>");
                Response.Write("<td>Tipo Contacto</td>");
                Response.Write("</tr>");                
                foreach (Negocio.Contacto c in listaContactos)
                {
                    Response.Write("<tr>");
                    Response.Write("<td>"+ c.Rut + "</td>");
                    Response.Write("<td>" + c.Nombre + "</td>");
                    Response.Write("<td>" + c.Apellido + "</td>");
                    Response.Write("<td>" + c.Ciudad + "</td>");
                    Response.Write("<td>"+ c.Email + "</td>");
                    Response.Write("<td>" + c.Telefono + "</td>");
                    Response.Write("<td>" + c.TipoContacto + "</td>");
                    Response.Write("</tr>");
                }
                Response.Write("</table>");
            }
            else
            {
                Response.Redirect("index.aspx");
            }    
        %>
    </div>
    </form>
</body>
</html>
