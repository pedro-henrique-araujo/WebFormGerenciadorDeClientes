<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebFormApplication.Edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
  <div style="margin: 30px 0px;">
       <asp:Button class="btn btn-danger" style="margin-bottom: 15px;" runat="server" Text="Remover" OnClick="RemoverButton_Click"/>
        <input runat="server" type="hidden" ID="Id"/>
        <div class="form-group">
            <asp:Label runat="server" ID="LabelNome">Nome</asp:Label>
            <asp:TextBox class="form-control" runat="server" ID="Nome"></asp:TextBox>
            <asp:RequiredFieldValidator style="color: red; font-weight: bold" Text="Insira um nome" runat="server" ControlToValidate="Nome" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="LabelNascimento">Nascimento</asp:Label>
            <asp:Textbox TextMode="Date" class="form-control" type="date" runat="server" ID="Nascimento"/>
            <asp:RequiredFieldValidator style="color: red; font-weight: bold" Text="Insira uma data de nascimento" runat="server" ControlToValidate="Nascimento" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="margin: 15px 0px;">
            <input type="checkbox" runat="server" ID="Ativo" />
            <asp:Label runat="server" ID="LabelAtivo">Ativo</asp:Label>
          
        </div>
        <asp:Button class="btn btn-primary" runat="server" Text="Salvar" OnClick="SalvarButton_Click"/>
        <a style="margin: 15px 0px;" class="btn btn-secondary" runat="server" href="/Default">Cancelar</a>
        
  </div>
</asp:Content>
