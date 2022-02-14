<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="media5numeros.aspx.cs" Inherits="_10022022.media5numeros" %>

<!DOCTYPE html>
<script runat="server" language="C#">
     void MyButton_OnClick(Object sender, EventArgs e)
     {
         int n1,n2,n3,n4,n5,media,media2,media3 ;
        n1 = int.Parse(Textbox1.Text);
        n2 = int.Parse(Textbox2.Text);
        n3 = int.Parse(Textbox3.Text);
        n4 = int.Parse(Textbox4.Text);
        n5 = int.Parse(Textbox5.Text);
           media3 =(n1+n2+n3+n4+n5);
                media2 =(n1+n2+n3+n4+n5)/2;
        media =(n1+n2+n3+n4+n5)/5;
         ViewState["dez"] = media;
         MyLabel.Text = media.ToString();
         Label1.Text =media3.ToString();
        if (media >50)
            {
             Label2.Text = "alta";
            }
            else
            {
            Label2.Text = "baixa";
            }
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
            <div>n1:<asp:textbox id="Textbox1" text="Número 1" runat="server"></asp:textbox>
               </div>
        <div>n2:<asp:textbox id="Textbox2" text="Número 2" runat="server"></asp:textbox>
       </div>
        <div>n3:<asp:textbox id="Textbox3" text="Número 3" runat="server"></asp:textbox>
       </div>
        <div>n4:<asp:textbox id="Textbox4" text="Número 4" runat="server"></asp:textbox>
       </div>
        <div>n5:<asp:textbox id="Textbox5" text="Número 5" runat="server"></asp:textbox>
       </div>

            <asp:button id="MyButton" text="Média" OnClick="MyButton_OnClick" runat="server"></asp:button> 
          <asp:button id="Buttonfinal" text="Limpar" OnClick="MyButtonfinal_OnClick" runat="server"></asp:button> 
      
        <div>    Resultado: <asp:label id="MyLabel" runat="server"></asp:label></div> 
        <div>    Soma total: <asp:label id="Label1" runat="server"></asp:label></div> 
        <div>    Análise da média: <asp:label id="Label2" runat="server"></asp:label></div> 
     
        </form>
    </center>
</body>
</html>
