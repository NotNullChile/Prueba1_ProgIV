<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busqueda_proovedor_ciudad.aspx.cs" Inherits="SistemaContactos.busqueda_proovedor_ciudad" %>

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
    <form id="form1" method="post" runat="server">
    <div>
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
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese Comuna a buscar"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCiudadBuscar" runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar una comuna" ControlToValidate="txtCiudadBuscar" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>

                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="87px" />

                &nbsp;

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
            
            <% 
            
                 try
                 {
                    List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
                    if (Request["btnEliminar"] != null)
                    {
                        eliminarContacto();
                    }
                    else if (Request["btnModificar"] != null)
                    {
                        modificarContacto();
                    }
                    if(Session["listaContacto"] != null)
                    {
                        if (btnBuscar != null && txtCiudadBuscar.Text.Length > 0)
                        {
                            foreach (Negocio.Contacto c in listaContacto.Where(c => c.Ciudad.ToUpper().Equals(txtCiudadBuscar.Text.ToUpper())).Where(c => c.TipoContacto.Equals("Proveedor")))
                            {
                               
            %>
            <tr>
                <td>
                     <input name="txtTipoContacto" id="txtTipoContacto" type="text" value="<%=c.TipoContacto %>" />
                </td>
                <td>
                    <%=c.Rut %>
                    <input name="txtRut" type="text" value="<%=c.Rut %>" hidden="true"/>
                </td>
                <td>
                    <%=c.Nombre %>
                    <input name="txtNombre" type="text" value="<%=c.Nombre %>" hidden="true"/>
                </td>
                <td>
                    <%=c.Apellido %>
                    <input name="txtApellido" type="text" value="<%=c.Apellido %>" hidden="true"/>
                </td>
                <td>
                    <%=c.Ciudad %>"
                    <input name="txtCiudad" type="text" value="<%=c.Ciudad %>" hidden="true"/> 
                </td>
                <td>
                    <%=c.Email %>
                    <input name="txtEmail" type="text" value="<%=c.Email %>" hidden="true"/>
                </td>
                <td><% int maximo = c.Telefonos.Count();
                        string listaTelefonos = String.Join("  ", c.Telefonos, 0, maximo); %>
                    <%=listaTelefonos %>
                    <input name="txtTelefono" type="text" value="<%=listaTelefonos %>" hidden="true"/>
                </td>
                <td>
                    <button id="btnEliminar" name="btnEliminar" value="<%=c.Rut %>">Eliminar</button>
                </td>
                <td>
                    <button id="btnModificar" name="btnModificar" value="<%=c.Rut %>">Modificar</button>
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
