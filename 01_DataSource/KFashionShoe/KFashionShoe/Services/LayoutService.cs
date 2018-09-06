using KFashionShoe.Helper;
using KFashionShoe.Web.Models.Menu;
using KFashionShoe.Web.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Services
{
    public class LayoutService : ILayoutService
    {
        public IEnumerable<Menu> GetAllMenu()
        {
            return SqlHelper.QuerySQL<Menu>("MENU_GETALL");
        }
    }
}
