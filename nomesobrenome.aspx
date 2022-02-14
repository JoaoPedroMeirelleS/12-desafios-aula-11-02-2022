<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nomesobrenome.aspx.cs" Inherits="_10022022.nomesobrenome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         string n1, n2;
         n1 = Textbox1.Text;
         n2 = Textbox2.Text;


         MyLabel.Text = n1[0].ToString();
         Label1.Text = n2[0].ToString();
     }
     void MyButtonfinal_OnClick(object sender, EventArgs e)
     {
         //If ViewState Value is not Null then Value of View State is Assign to TextBox  
         Textbox1.Text = string.Empty;
         Textbox2.Text = string.Empty;

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
            <div>nome<asp:textbox id="Textbox1" text="nome" runat="server"></asp:textbox>

       </div>
             <div>sobrenome<asp:textbox id="Textbox2" text="sobrenome" runat="server"></asp:textbox>
       </div>
            <asp:button id="MyButton" text="exibir" OnClick="MyButton_OnClick" runat="server"></asp:button> 
          <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    primeiranome: <asp:label id="MyLabel" runat="server"></asp:label></div> 
      <div> primeirasobrenome: <asp:label id="Label1" runat="server"></asp:label></div>
        </form>
    </center>
</body>
</html>
