<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
<tr>
   <td  colspan="2" style="border-bottom: thin solid #008080; font-weight: 700; text-align: center; color: #990033;" class="style2">
     CompareValidator Control in ASP.Net</td>
</tr>
<tr>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
</tr>
<tr>
    <td style="font-weight: 700; text-align: center; background-color:antiquewhite">Nome :</td>
    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
</tr>
<tr>
     <td style="font-weight: 700; text-align: center; background-color:antiquewhite">Senha :</td>
     <td><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
</tr>
<tr>
     <td style="font-weight: 700; text-align: center; background-color:antiquewhite">Confirme - Senha :</td>

     <td><asp:TextBox ID="txtconfipass" runat="server"></asp:TextBox>

         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfipass"  ErrorMessage="SENHA ERRADA"></asp:CompareValidator>
     </td>
</tr>
<tr>
     <td>&nbsp;</td>
    <td><asp:Button ID="Button1" runat="server" Font-Bold="True" Text="SAVE" /></td>
</tr>
</table>
    </form>
</body>
</html>
