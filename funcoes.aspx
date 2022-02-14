<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="funcoes.aspx.cs" Inherits="_10022022.calculadora" %>

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

     void MyButtonsoma_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["soma"].ToString();
        
    }

       void MyButtonsubt_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["subt"].ToString();
        
    }
       void MyButtondiv_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["div"].ToString();
        
    }
       void MyButtonmult_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Label1.Text = ViewState["mult"].ToString();
        
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
            <div><asp:textbox id="Textbox1" text="Número 1" runat="server"></asp:textbox>
        <asp:textbox id="Textbox2" text="Número 2" runat="server"></asp:textbox></div>
            <asp:button id="MyButton" text="Somar" OnClick="MyButton_OnClick" runat="server"></asp:button> 
            <asp:button id="Button3" text="Subt" OnClick="MyButton3_OnClick" runat="server"></asp:button> 
         <asp:button id="Button4" text="div" OnClick="MyButton4_OnClick" runat="server"></asp:button> 
        <asp:button id="Button5" text="mult" OnClick="MyButton5_OnClick" runat="server" Width="47px"></asp:button> 
        <asp:button id="Button6" text="Ultima Soma" OnClick="MyButtonsoma_OnClick" runat="server" Width="90px"></asp:button> 
        <asp:button id="Button7" text="Ultima Subt" OnClick="MyButtonsubt_OnClick" runat="server" Height="28px" Width="78px"></asp:button> 
        <asp:button id="Button8" text="Ultima div" OnClick="MyButtondiv_OnClick" runat="server" Width="74px"></asp:button>
         <asp:button id="Button1" text="Ultima mult" OnClick="MyButtonmult_OnClick" runat="server" Width="72px"></asp:button>
        

        <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    Resultado: <asp:label id="MyLabel" runat="server"></asp:label></div> 
      <div> Ultimo Resultado: <asp:label id="Label1" runat="server"></asp:label></div>
        </form>
    </center>
 
</body>
</html>
