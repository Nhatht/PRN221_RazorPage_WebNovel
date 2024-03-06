using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageAccount
{
    public class CreateModel : PageModel
    {
        private readonly IAccountService _accountService;

        public CreateModel(IAccountService accountService)
        {
            _accountService = accountService;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Account Account { get; set; } = default!;
        

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
          if (!ModelState.IsValid || _accountService.GetAllAccounts == null || Account == null)
            {
                return Page();
            }
            else
            {
                bool result = _accountService.AddAccount(Account);
                if (!result)
                {
                    ModelState.AddModelError("Account.Email", "Email is already existed");
                    return Page();
                }
                return RedirectToPage("./Index");
            }
        }
    }
}
