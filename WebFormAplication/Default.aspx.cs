using System;
using System.Collections.Generic;
using System.Web.UI;
using WebFormAplication.Storage;
using WebFormApplication.Models;

namespace WebFormApplication
{
    public partial class _Default : Page
    {
        private readonly ClientesStorage _storage;

        public _Default()
        {
            var context = new ApplicationContext();
            _storage = new ClientesStorage(context);
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public List<Cliente> GetClientes()
        {
            var list = _storage.GetAll();

            return list;
        }
    }
}