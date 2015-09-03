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
