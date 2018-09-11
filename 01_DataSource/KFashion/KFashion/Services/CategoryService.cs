using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KFashionShoe.Helper;
using KFashion.Models.Categories;

namespace KFashion.Services
{
    public class CategoryService : ICategoryService
    {
        public IEnumerable<Categories> GetAllCategory()
        {
            return SqlHelper.QuerySQL<Categories>("CATEGORY_GETALL");
        }
    }
}
