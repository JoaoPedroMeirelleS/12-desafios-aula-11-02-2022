<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aluno4notascompleto.aspx.cs" Inherits="_10022022.aluno4notascompleto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script runat="server" language="C#">
    void MyButton_OnClick(Object sender, EventArgs e)
    {
        string nome;
        float n1,n2,n3,n4,media ;
        nome = Textbox1.Text;
        n1 = float.Parse(Textbox2.Text);
        n2 = float.Parse(Textbox3.Text);
        n3 = float.Parse(Textbox4.Text);
        n4 = float.Parse(Textbox5.Text);

        media =(n1+n2+n3+n4)/4;
        ViewState["media"] = media;
        if (media>=00 && media< 5.9)
        {
            Label2.Text = "insuficiente";
        }else
            if (media>5.9 && media< 6.9)
            {
             Label2.Text = "suficiente";
            }else
            if (media>6.9 && media< 8.9)
            {
             Label2.Text = "bom";
            }
            else 
            if (media>8.9 && media<=10)
            {
                 Label2.Text = "ótimo";
            }
            else
            {
             Label1.Text = "A ESCALADA É DECIMAL";
            Label2.Text = "A ESCALADA É DECIMAL REPITA O PROCESSO";
            }
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
         <div>    situação final: <asp:label id="Label2" runat="server"></asp:label></div> 
     
        </form>
    </center>
 </body>
</html>
