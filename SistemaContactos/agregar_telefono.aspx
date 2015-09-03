<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar_telefono.aspx.cs" Inherits="SistemaContactos.agregar_telefonos_listas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
         <table style="width: 100%" >
            <tr>
                <td>
                    <label style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; font-style: normal; color: #FF0000">Agregar Nuevos&nbsp; Números</label></td>
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
    <form id="form1" method="post" runat="server">
    <div>
     Listado Teléfonos
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Rut</td>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style1">Apellido</td>
                <td class="auto-style1">Telefono</td>

            </tr>
             <% 
            
                 try
                 {
                    List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
                    if (Request["btnAgregarNumero"] != null)
                    {
                        agregarFonos();
                    }
                    if(Session["listaContacto"] != null)
                    {
                            foreach (Negocio.Contacto c in listaContacto.OrderBy(c => c.TipoContacto))
                            {
            %>
            <tr>
                <td>
                    <%=c.Rut %>
                    <input id="txtRut" name="txtRut" type="text" hidden="" value="<%=c.Rut %>" />
                </td>
                <td>
                    <%=c.Nombre %>
                    
                </td>
                <td>
                    <%=c.Apellido %>
                </td>
                <td>
                    <%
                        int maximo = c.Telefonos.Count();
                        string listaTelefonos = String.Join("  ", c.Telefonos, 0, maximo);%>
                         <%=listaTelefonos%>
                </td>
                <td>
                    <button name="btnAgregarNumero" value="<%=c.Rut %>">Agregar más números</button>
                </td>
            </tr>
            <% 
                            
                        }
                    }
                    else
                    {
                        Response.Redirect("index.aspx");
                    }
                }
                catch (Exception)
                {
                }
                %>
        </table>
    
    </div>
    </form>
</body>
</html>
