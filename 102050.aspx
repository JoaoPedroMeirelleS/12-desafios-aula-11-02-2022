<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="102050.aspx.cs" Inherits="_10022022._102050" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <script runat="server" language="C#">
     


      void MyButton1_OnClick(Object sender, EventArgs e)
      {
          int n1, n10;
          n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro

          n10=(n1*10)/100;
          ViewState["n10"] = n10;
          MyLabel.Text = n10.ToString(); // Converte Inteiro em String
      }
      void MyButton2_OnClick(Object sender, EventArgs e)
      {
          int n1,n20;
          n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro

          n20= (n1*20)/100;
          ViewState["n20"] = n20;
          MyLabel.Text = n20.ToString(); // Converte Inteiro em String
      }
      void MyButton3_OnClick(Object sender, EventArgs e)
      {
          int n1, n50;
          n1 = int.Parse(Textbox1.Text); // Converte String em Inteiro

          n50 = (n1 * 50)/100 ;
          ViewState["n50"] =n50;
          MyLabel.Text = n50.ToString(); // Converte Inteiro em String
      }

      void MyButtonfinal_OnClick(object sender, EventArgs e)
      {
          //If ViewState Value is not Null then Value of View State is Assign to TextBox  
          Textbox1.Text =string.Empty;

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
        
            <asp:button id="MyButton" text="10%" OnClick="MyButton1_OnClick" runat="server" Width="32px"></asp:button> 
            <asp:button id="Button3" text="20%" OnClick="MyButton2_OnClick" runat="server" Width="30px"></asp:button> 
         <asp:button id="Button4" text="50%" OnClick="MyButton3_OnClick" runat="server" Width="29px"></asp:button> 
   
        
        
        

        <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    Resultado: <asp:label id="MyLabel" runat="server"></asp:label></div> 
   
        </form>
    </center>
</body>
</html>
