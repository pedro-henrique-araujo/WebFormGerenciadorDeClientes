<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <a style="margin: 15px 0px;" class="btn btn-primary" runat="server" href="/Pages/Novo">Novo</a>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Nascimento</th>
                    <th>Ativo</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <asp:ListView
                  ItemType="WebFormApplication.Models.Cliente"
                  runat="server"
                  SelectMethod="GetClientes">
                  <ItemTemplate>
                      <tr>
                        <td>
                          <%#: Item.Id %>
                        </td> 
                          <td>
                          <%#: Item.Nome %>
                        </td> 
                          <td>
                          <%#: Item.DataNascimento.ToString("dd/MM/yyyy") %>
                        </td> 
                          <td>
                              
                          <%#: Item.Ativo ? "✔️" : "❌" %>
                        </td>
                          <td>
                              <a class="btn btn-primary" href="/Pages/Edit.aspx?clienteId=<%#:Item.Id%>">Editar</a>
                          </td>
                      </tr>
                      
                  </ItemTemplate>
              </asp:ListView>
            </tbody>
             
          </table>
    </main>
  

</asp:Content>
