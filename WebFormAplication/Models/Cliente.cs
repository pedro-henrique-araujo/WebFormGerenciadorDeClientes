using System;

namespace WebFormApplication.Models
{
    public static class ClienteFactory
    {
        private static readonly int defaultId = 0;
        private static readonly DateTime defaultDate = new DateTime();

        public static Cliente NewCliente(string nome, string nascimento, bool ativo)
        {            
            var dateNascimento = Convert.ToDateTime(nascimento);
            return new Cliente(defaultId, nome, dateNascimento, ativo);                     
        }

        public static Cliente NewCliente(string id, string nome, string nascimento, bool ativo)
        {
            var clienteId = Convert.ToInt32(id ?? "0");
            var dateNascimento = Convert.ToDateTime(nascimento);
            return new Cliente(clienteId, nome, dateNascimento, ativo);
        }
    }

    public class Cliente
    {
        public int Id { get; set; }

        public string Nome { get; set; }

        public DateTime DataNascimento { get; set; }

        public bool Ativo { get; set; }

        public Cliente()
        {

        }

        internal Cliente(int id, string nome, DateTime nascimento, bool ativo)
        {
            Id = id;
            Nome = nome;
            DataNascimento = nascimento;
            Ativo = ativo;
        }

    }
}