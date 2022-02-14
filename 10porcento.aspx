<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10porcento.aspx.cs" Inherits="_10022022._10porcento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1,dez ;
        n1 = int.Parse(Textbox1.Text); 
        
         dez =(n1*10)/100;
         ViewState["dez"] = dez;
         MyLabel.Text = dez.ToString();
  }
       void MyButtonfinal_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = string.Empty;
        
    }


 </script>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>10porcento</title>
</head>
<body><p><br /><br /><br /></p>
    <center>
    <form id="calculadora" runat="server">
            <div><asp:textbox id="Textbox1" text="Número 1" runat="server"></asp:textbox>
       </div>
            <asp:button id="MyButton" text="10porcento" OnClick="MyButton_OnClick" runat="server"></asp:button> 
          <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    Resultado: <asp:label id="MyLabel" runat="server"></asp:label></div> 
      <div> Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label></div>
        </form>
    </center>
   </body>
</html>
