<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="_10022022.calculadora1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1, n2, soma;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         soma = n1 + n2;
         ViewState["soma"] = soma;
         MyLabel.Text = soma.ToString(); // Converte Inteiro em String
     }

    
       void MyButton3_OnClick(Object sender, EventArgs e)
     {
         int n1, n2, subt;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         subt = n1 - n2;
         ViewState["subt"] = subt;
         MyLabel.Text = subt.ToString(); // Converte Inteiro em String
     }
      void MyButton4_OnClick(Object sender, EventArgs e)
     {
         int n1, n2,div;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         div = n1 / n2;
         ViewState["div"] = div;
         MyLabel.Text = div.ToString(); // Converte Inteiro em String
     }
      void MyButton5_OnClick(Object sender, EventArgs e)
     {
         int n1, n2,mult;
         n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro
         n2 = int.Parse(Textbox2.Text);
         mult = n1 * n2;
         ViewState["mult"] = mult;
         MyLabel.Text = mult.ToString(); // Converte Inteiro em String
     }

     void MyButtonfinal_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = Textbox2.Text = string.Empty;
        
    }
    </script> 
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p><br /><br /><br /></p>
    <center>
    <form id="calculadora" runat="server">
            <div><asp:textbox id="Textbox1" text="Número 1" runat="server"></asp:textbox></div>
        <div><asp:textbox id="Textbox2" text="Número 2" runat="server"></asp:textbox></div>
            <asp:button id="MyButton" text="+" OnClick="MyButton_OnClick" runat="server" Width="32px"></asp:button> 
            <asp:button id="Button3" text="-" OnClick="MyButton3_OnClick" runat="server" Width="30px"></asp:button> 
         <asp:button id="Button4" text="/" OnClick="MyButton4_OnClick" runat="server" Width="29px"></asp:button> 
        <asp:button id="Button5" text="X" OnClick="MyButton5_OnClick" runat="server" Width="31px"></asp:button> 
        
        
        

        <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    Resultado: <asp:label id="MyLabel" runat="server"></asp:label></div> 
      <div> Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label></div>
        </form>
    </center>
</body>
</html>
