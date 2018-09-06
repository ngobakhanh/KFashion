using KFashionShoe.Web.Models.Categories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Services
{
    public interface ICategoryService
    {
        IEnumerable<Categories> GetAllCategory();
    }
}
