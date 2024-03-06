using BO;
using DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelRepo
{
    public class AccountRepository : IAccountRepository
    {
        public bool AddAccount(Account account) => AccountDAO.Instance.AddAccount(account);

        public bool CheckIdExit(int id) => AccountDAO.Instance.CheckIdExit(id);

        public void DeleteAccount(int id) => AccountDAO.Instance.DeleteAccount(id);

        public Account GetAccount(string email, string password) => AccountDAO.Instance.GetAccount(email, password);

        public Account GetAccountByEmail(string email) => AccountDAO.Instance.GetAccountByEmail(email);

        public Account GetAccountById(int id) => AccountDAO.Instance.GetAccountById(id);

        public List<Account> GetAllAccountById(int id) => AccountDAO.Instance.GetAllAccountById(id);

        public List<Account> GetAllAccounts() => AccountDAO.Instance.GetAllAccounts();

        public bool RegisterAccount(string name, string email, string password, string gender) => AccountDAO.Instance.RegisterAccount(name, email, password, gender);

        public void UpdateAccount(Account account) => AccountDAO.Instance.UpdateAccount(account);
    }
}
