<%@ Page Title="Novo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Novo.aspx.cs" Inherits="WebFormApplication.New" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div style="margin: 30px 0px;">
      
      <div class="form-group">
          <asp:Label runat="server" ID="LabelNome">Nome</asp:Label>
          <asp:TextBox class="form-control" runat="server" ID="Nome"></asp:TextBox>
          <asp:RequiredFieldValidator style="color: red; font-weight: bold" CssClass="text-danger" Text="Insira um nome" runat="server" ControlToValidate="Nome" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
      </div>
      <div class="form-group">
          <asp:Label runat="server" ID="LabelNascimento">Nascimento</asp:Label>
          <input class="form-control" type="date" runat="server" ID="Nascimento"/>
          <asp:RequiredFieldValidator style="color: red; font-weight: bold" Text="Insira uma data de nascimento" runat="server" ControlToValidate="Nascimento" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
      </div>
      <div style="margin: 15px 0px;">
          <input type="checkbox" runat="server" ID="Ativo" checked />
          <asp:Label runat="server" ID="LabelAtivo">Ativo</asp:Label>
          
      </div>
      <asp:Button class="btn btn-primary" runat="server" OnClick="AdicionarButton_Click" Text="Adicionar" />
      <a runat="server" href="~/Default.aspx" class="btn" style="margin: 4px 0px;">Cancelar</a>
  </div>
</asp:Content>
