using System;
using System.Web.UI;
using WebFormAplication.Storage;
using WebFormApplication.Models;

namespace WebFormApplication
{
    public partial class New : Page
    {
        private readonly ClientesStorage _storage;

        public New()
        {
            var context = new ApplicationContext();
            _storage = new ClientesStorage(context);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdicionarButton_Click(object sender, EventArgs e)
        {
            var cliente = ClienteFactory.NewCliente(Nome.Text, Nascimento.Value, Ativo.Checked);
            _storage.Create(cliente);
            Response.Redirect("~/Default");
        }
    }
}