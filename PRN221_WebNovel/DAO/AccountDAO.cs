using BO;
using Microsoft.EntityFrameworkCore.Query.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance;
        private readonly WebNovelContext dbContext = null;
        public AccountDAO()
        {
            if (dbContext == null)
            {
                dbContext = new WebNovelContext();
            }
        }
        public static AccountDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new AccountDAO();
                }
                return instance;
            }
        }

        public Account GetAccount(string email, string password)
        {
            return dbContext.Accounts.Where(a => a.Email == email && a.Password == password).FirstOrDefault();
        }
        public Account GetAccountByEmail(string Email)
        {
            return dbContext.Accounts.Where(a => a.Email == Email).FirstOrDefault();
        }
        public List<Account> GetAllAccounts()
        {
            return dbContext.Accounts.ToList();
        }
        public List<Account> GetAllAccountById(int id)
        {
            return dbContext.Accounts.Where(a => a.Id == id).ToList();
        }
        public Account GetAccountById(int id)
        {
            return dbContext.Accounts.Where(a => a.Id == id).FirstOrDefault();
        }
        public bool CheckIdExit(int id)
        {
            return dbContext.Accounts.Any(a => a.Id == id);
        }
        public bool AddAccount(Account account)
        {
            Account acc = GetAccountByEmail(account.Email);
            if (acc != null)
            {
                return false;
            }
            dbContext.Accounts.Add(account);
            dbContext.SaveChanges();
            return true;
        }
        public void UpdateAccount(Account account)
        {
            Account acc = GetAccountByEmail(account.Email);
            acc.Email = account.Email;
            acc.Password = account.Password;
            acc.Role = account.Role;
            dbContext.SaveChanges();
        }
        public void DeleteAccount(int id)
        {
            Account acc = GetAccountById(id);
            if (acc != null)
            {
                dbContext.Accounts.Remove(acc);
                dbContext.SaveChanges();
            }
        }
        public bool RegisterAccount(string name, string email, string password, string gender)
        {
            Account acc = GetAccountByEmail(email);
            if (acc != null)
            {
                return false;
            }
            Account account = new Account()
            {
                Name = name,
                Email = email,
                Password = password,
                Gender = gender,
                Role = "Reader"
            };
            dbContext.SaveChanges();
            return true;
        }
    }
}
