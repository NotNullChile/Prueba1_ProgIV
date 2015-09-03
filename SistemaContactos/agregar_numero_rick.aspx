<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregar_numero_rick.aspx.cs" Inherits="SistemaContactos.agregar_numero_rick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <%
                List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"]; 
            List<Negocio.Contacto> agregarNumeros = (List<Negocio.Contacto>)Session["agregarNumeros"];
            if (Session["agregarNumeros"] != null)
                    {
                            for (int i = 0; i < agregarNumeros.Count; i++)
                            {    
                                if(agregarNumeros.ElementAt(i).Rut == SistemaContactos.agregar_telefonos_listas.rutObtenido)
                                {
             %>
            <tr>
                <td class="auto-style1">mis numeros</td>
                <td>
                    <%
                        int maximo = agregarNumeros.ElementAt(i).Telefonos.Count();
                        string listaTelefonos = String.Join("  ", agregarNumeros.ElementAt(i).Telefonos, 0, maximo);%>
                         <%=listaTelefonos%>

                </td>
            </tr>
            <tr>
                <td class="auto-style1">Agregar</td>
                <td>
                    <%
                        if(btnAgregar != null)
                        { 
                        int maximoNumeros = agregarNumeros.ElementAt(i).Telefonos.Count();
                        for(int j = 0; j < maximoNumeros ; j++)
                        { 
                    %>
                    <input id="txtNumeros" type="text" name="txtNumeros<%=j %>" />
                    <input id="txtNumeros2" type="text" name="txtNumeros2<%=j %>" value="txtNumero2<%=j %>" />
                    <%
                            break;
                        }
                        }
                    %>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="121px" OnClick="btnAgregar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <%
                                
                }
                }
                }
                 %>
        </table>
    </div>
    </form>
</body>
</html>
