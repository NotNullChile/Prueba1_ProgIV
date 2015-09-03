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
    <form id="form1" method="post" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese apellido a buscar:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtApellidoBuscar" runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar un apellido" ControlToValidate="txtApellidoBuscar" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>

                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="87px" OnClick="btnBuscar_Click" />

                &nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>

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
                    if(Session["listaContacto"] != null)
                    {
                        if (btnBuscar != null && txtApellidoBuscar.Text.Length > 0)
                        {
                            foreach (Negocio.Contacto c in listaContacto.Where(c => c.Apellido.ToUpper().Equals(txtApellidoBuscar.Text.ToUpper())))
                            {                             
            %>
            <tr>
                <td>
                     <input name="txtTipoContacto" id="txtTipoContacto" type="text" value="<%=c.TipoContacto %>" />
                </td>
                <td>
                    <input name="txtRut" type="text" value="<%=c.Rut %>"/>
                </td>
                <td>
                    <input name="txtNombre" type="text" value="<%=c.Nombre %>"/>
                </td>
                <td>
                    <input name="txtApellido" type="text" value="<%=c.Apellido %>"/>
                </td>
                <td>
                    <input name="txtCiudad" type="text" value="<%=c.Ciudad %>"/> 
                </td>
                <td>
                    <input name="txtEmail" type="text" value="<%=c.Email %>"/>
                </td>
                <td>
                    <input name="txtTelefono" type="text" value="<%=c.Telefono %>"/>
                </td>
                <td>
                    <button id="btnEliminar" name="btnEliminar" value="<%=c.Rut %>">Eliminar</button>
                    
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
