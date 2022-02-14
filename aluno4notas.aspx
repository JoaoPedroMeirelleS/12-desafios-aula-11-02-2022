<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aluno4notas.aspx.cs" Inherits="_10022022.aluno4notas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script runat="server" language="C#">
    void MyButton_OnClick(Object sender, EventArgs e)
    {
        string nome;
        int n1,n2,n3,n4,media ;
        nome = Textbox1.Text;
        n1 = int.Parse(Textbox2.Text);
        n2 = int.Parse(Textbox3.Text);
        n3 = int.Parse(Textbox4.Text);
        n4 = int.Parse(Textbox5.Text);

        media =(n1+n2+n3+n4)/4;
        ViewState["media"] = media;
         MyLabel.Text = nome;
        Label1.Text = media.ToString();
        
    }
    void MyButtonfinal_OnClick(object sender, EventArgs e)
    {
        //If ViewState Value is not Null then Value of View State is Assign to TextBox  
        Textbox1.Text = string.Empty;
        Textbox2.Text = string.Empty;
        Textbox3.Text = string.Empty;
        Textbox4.Text = string.Empty;
        Textbox5.Text = string.Empty;

    }


 </script>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body><p><br /><br /><br /></p>
    <center>
    <form id="calculadora" runat="server">
            <div>nome:
                   <asp:textbox id="Textbox1" text="nome" runat="server"></asp:textbox>
               </div>
        <div>nota1:<asp:textbox id="Textbox2" text="Nota 1" runat="server"></asp:textbox>
       </div>
        <div>nota2:<asp:textbox id="Textbox3" text="Nota 2" runat="server"></asp:textbox>
       </div>
        <div>nota3:<asp:textbox id="Textbox4" text="Nota 3" runat="server"></asp:textbox>
       </div>
        <div>nota4:<asp:textbox id="Textbox5" text="Nota 4" runat="server"></asp:textbox>
       </div>

            <asp:button id="MyButton" text="Média" OnClick="MyButton_OnClick" runat="server"></asp:button> 
          <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    nome: <asp:label id="MyLabel" runat="server"></asp:label></div> 
          <div>    media final: <asp:label id="Label1" runat="server"></asp:label></div> 
     
        </form>
    </center>
  </body>
</html>
