﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificar_contacto.aspx.cs" Inherits="SistemaContactos.modificar_contacto" %>

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
        <table style="width: 100%; font-family: Verdana, Geneva, Tahoma, sans-serif;">
            <tr>
                <td> <asp:Image ImageUrl="img/modificar_contacto_big.png" runat="server" /> </td>
                <td>
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
                    <input name="txtRut" type="text" value="<%=listaContacto.ElementAt(i).Rut%>" readonly="true" required="true"/>                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <input name="txtNombre" type="text" placeholder="<%=listaContacto.ElementAt(i).Nombre%>"  required="true"/>               
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <input name="txtApellido" type="text" placeholder="<%=listaContacto.ElementAt(i).Apellido%>"  required="true"/>                 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>                  
                    <input name="txtCiudad" type="text" placeholder="<%=listaContacto.ElementAt(i).Ciudad%>"  required="true"/>   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>                   
                    <input name="txtCorreo" type="email" placeholder="<%=listaContacto.ElementAt(i).Email%>"  required="true"/>  
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td> 
                    <% int maximo = listaContacto.ElementAt(i).Telefonos.Count();
                       string listaTelefonos = String.Join("  ", listaContacto.ElementAt(i).Telefonos, 0, maximo); %>             
                    <%=listaTelefonos%>
                    <!--input name="txtTelefono" type="text" value="listaTelefonos%>" readonly="true" /-->  
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
                        break;
                    }
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            } 
            %>
        </table>
 </td>

                
            </tr>
            
        </table>
        
    </div>
    </form>
</body>
</html>
