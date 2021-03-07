using System;
using System.Data.Entity;
using System.Web.UI;
using WebFormAplication.Storage;
using WebFormApplication.Models;

namespace WebFormApplication
{
    public partial class Edit : Page
    {
        private ClientesStorage _storage;

        public Edit()
        {
            var context = new ApplicationContext();
            _storage = new ClientesStorage(context);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var clienteId = GetClienteId();
                if (clienteId == 0) Response.Redirect("~/Default");
                var cliente = _storage.Get(clienteId);
                PopulateFields(cliente);
            }

        }       

        protected void SalvarButton_Click(object sender, EventArgs e)
        {

            var cliente = ClienteFactory.NewCliente(Id.Value, Nome.Text, Nascimento.Text, Ativo.Checked);

            _storage.Update(cliente);
            Response.Redirect("~/Default");
        }

        protected void RemoverButton_Click(object sender, EventArgs e)
        {
            var clienteId = Convert.ToInt32(Id.Value ?? "0");
            _storage.Delete(clienteId);
            Response.Redirect("~/Default");
        }


        private int GetClienteId()
        {
            var param = Request.Params.Get("clienteId") ?? "0";
            var output = Convert.ToInt32(param);
            return output;
        }

        private void PopulateFields(Cliente cliente)
        {
            Id.Value = cliente.Id.ToString();
            Nome.Text = cliente.Nome;
            Nascimento.Text = cliente.DataNascimento.ToString("yyyy-MM-dd");
            Ativo.Checked = cliente.Ativo;
        }
    }
}