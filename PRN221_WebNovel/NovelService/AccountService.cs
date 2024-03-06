using BO;
using NovelRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelService
{
    public class AccountService : IAccountService
    {
        public IAccountRepository _accountRepository = null;
        public AccountService()
        {
            _accountRepository = new AccountRepository();
        }

        public bool AddAccount(Account account) => _accountRepository.AddAccount(account);

        public bool CheckIdExit(int id) => _accountRepository.CheckIdExit(id);

        public void DeleteAccount(int id) => _accountRepository.DeleteAccount(id);

        public Account GetAccount(string email, string password) => _accountRepository.GetAccount(email, password);

        public Account GetAccountByEmail(string email) => _accountRepository.GetAccountByEmail(email);

        public Account GetAccountById(int id) => _accountRepository.GetAccountById(id);

        public List<Account> GetAllAccountById(int id) => _accountRepository.GetAllAccountById(id);

        public List<Account> GetAllAccounts() => _accountRepository.GetAllAccounts();

        public bool RegisterAccount(string name, string email, string password, string gender) => _accountRepository.RegisterAccount(name, email, password, gender);

        public void UpdateAccount(Account account) => _accountRepository.UpdateAccount(account);
    }
}
