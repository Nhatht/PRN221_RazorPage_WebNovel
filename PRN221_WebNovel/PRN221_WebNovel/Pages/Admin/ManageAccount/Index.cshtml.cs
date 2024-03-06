using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageAccount
{
    public class IndexModel : PageModel
    {
        private readonly IAccountService _accountService;

        public IndexModel(IAccountService accountService)
        {
            _accountService = accountService;
        }

        public IList<Account> Account { get;set; } = default!;
        [BindProperty(SupportsGet = true)]
        public string? searchQuery { get; set; }
        public async Task OnGetAsync()
        {
            if (!string.IsNullOrEmpty(searchQuery))
            {
                Account = _accountService.GetAllAccounts().Where(s => s.Name.Contains(searchQuery, StringComparison.OrdinalIgnoreCase)||
                                                                        s.Email.Contains(searchQuery, StringComparison.OrdinalIgnoreCase)).ToList();
            }
            else
            {
                Account = _accountService.GetAllAccounts();
            }
        }
    }
}
