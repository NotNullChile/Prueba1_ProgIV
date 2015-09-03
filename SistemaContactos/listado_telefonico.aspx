<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listado_telefonico.aspx.cs" Inherits="SistemaContactos.listado_telefonico" %>

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
    <form id="form1" runat="server">
    <div>
     Listado Teléfonos
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Apellido</td>
                <td class="auto-style1">Nombre</td>
                <td class="auto-style1">Número Teléfonico</td>
            </tr>
             <% 
            
                 try
                 {
                    List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
                    if(Session["listaContacto"] != null)
                    {
                            foreach (Negocio.Contacto c in listaContacto.OrderBy(c => c.Apellido).OrderBy(c=> c.Telefonos.Equals("Fijo")).OrderBy(c=> c.Telefonos.Equals("Movil")))
                            {
            %>
            <tr>
                <td>
                    <%=c.Apellido %>
                </td>
                <td>
                    <%=c.Nombre %>
                </td>
                <td>
                    <%=c.Telefonos %>
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
