<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificar_contacto.aspx.cs" Inherits="SistemaContactos.modificar_contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" method="post" runat="server">
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
        <table>
            <%
                List<Negocio.Contacto> contactoModificado = (List<Negocio.Contacto>)Session["modificarContacto"];
                List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
            if (Session["modificarContacto"] != null)
            {
                for (int i = 0; i < listaContacto.Count;i++ )
                {
                    if (  listaContacto.ElementAt(i).Rut == SistemaContactos.busqueda_apellido.rutModificar
                        ||listaContacto.ElementAt(i).Rut == SistemaContactos.busqueda_proovedor_ciudad.rutModificar
                        ||listaContacto.ElementAt(i).Rut == SistemaContactos.busqueda_cliente_dominio.rutModificar)
                    { 
                 %>
            <tr>
                <td>
                    <asp:Label ID="lblTipoContato" runat="server" Text="Tipo de Contacto"></asp:Label></td>
                <td>
                    <select name="ddlTipoContacto">
                    <%
                        if (listaContacto.ElementAt(i).TipoContacto == "Cliente")
                    {
                    %>
                      <option value="Cliente">Cliente</option>
                    <%
                    }
                    else
                    {
                    %>
                      <option value="Proveedor">Proveedor</option>
                   <%} %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Rut" ID="lblRut" runat="server" />
                    
                </td>
                <td>
                    <input name="txtRut" type="text" value="<%=listaContacto.ElementAt(i).Rut%>" readonly="true"/>                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <input name="txtNombre" type="text" placeholder="<%=listaContacto.ElementAt(i).Nombre%>" />               
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <input name="txtApellido" type="text" placeholder="<%=listaContacto.ElementAt(i).Apellido%>" />                 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>                  
                    <input name="txtCiudad" type="text" placeholder="<%=listaContacto.ElementAt(i).Ciudad%>" />   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>                   
                    <input name="txtCorreo" type="text" placeholder="<%=listaContacto.ElementAt(i).Email%>" />  
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
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>                
                    <input name="txtTelefono" type="text" value="<%=listaContacto.ElementAt(i).Telefonos%>" readonly="true" />  
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click"  />
                </td>
            </tr>
            <%
                    }
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            } 
            %>
        </table>

        
    </div>
    </form>
</body>
</html>
