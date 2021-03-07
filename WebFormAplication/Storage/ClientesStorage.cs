using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebFormApplication.Models;

namespace WebFormAplication.Storage
{
    public class ClientesStorage
    {
        private readonly ApplicationContext _context;

        public ClientesStorage(ApplicationContext context)
        {
            _context = context;
        }


        public List<Cliente> GetAll()
        {
            var list = _context.Clientes.ToList();
            return list;
        }

        public Cliente Get(int id)
        {
            var cliente = _context.Clientes
                .Where(c => c.Id == id)
                .FirstOrDefault();

            return cliente;
        }

        public void Create(Cliente cliente)
        {
            _context.Entry(cliente).State = EntityState.Added;
            _context.SaveChanges();
        }


        public void Update(Cliente cliente)
        {
            _context.Entry(cliente).State = EntityState.Modified;
            _context.SaveChanges();
        }

        public void Delete(int id)
        {
            var cliente = Get(id);
            _context.Entry(cliente).State = EntityState.Deleted;
            _context.SaveChanges();
        }
    }
}