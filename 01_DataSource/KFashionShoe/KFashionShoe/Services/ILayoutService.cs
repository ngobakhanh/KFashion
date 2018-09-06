using KFashionShoe.Web.Models.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Services
{
    public interface ILayoutService
    {
        IEnumerable<Menu> GetAllMenu();

    }
}
