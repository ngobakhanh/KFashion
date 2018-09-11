using KFashionShoe.Helper;
using KFashion.Models.Menu;
using KFashion.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Services
{
    public class LayoutService : ILayoutService
    {
        public IEnumerable<Menu> GetAllMenu()
        {
            return SqlHelper.QuerySQL<Menu>("MENU_GETALL");
        }
    }
}
