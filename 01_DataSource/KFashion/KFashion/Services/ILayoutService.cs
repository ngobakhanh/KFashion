using KFashion.Models.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Services
{
    public interface ILayoutService
    {
        IEnumerable<Menu> GetAllMenu();

    }
}
