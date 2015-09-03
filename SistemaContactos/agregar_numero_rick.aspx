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
            <tr>
                <td class="auto-style1">mis numeros</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Agregar</td>
                <td>
                    <input id="Text1" type="text" /></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Button" Width="121px" />
                </td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
