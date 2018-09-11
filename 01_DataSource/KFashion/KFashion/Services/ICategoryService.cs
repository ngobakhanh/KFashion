using KFashion.Models.Categories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Services
{
    public interface ICategoryService
    {
        IEnumerable<Categories> GetAllCategory();
    }
}
