using BO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelService
{
    public interface IAccountService
    {
        public Account GetAccount(string email, string password);
        public bool AddAccount(Account account);
        public void UpdateAccount(Account account);
        public void DeleteAccount(int id);
        public Account GetAccountByEmail(string email);
        public List<Account> GetAllAccounts();
        public List<Account> GetAllAccountById(int id);
        public bool CheckIdExit(int id);
        public Account GetAccountById(int id);

        public bool RegisterAccount(string name, string email, string password, string gender);
    }
}
