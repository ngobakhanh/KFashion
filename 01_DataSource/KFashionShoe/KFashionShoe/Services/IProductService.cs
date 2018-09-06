using KFashionShoe.Web.Models.Product;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Services
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProduct();
        ProductDetail GetProductById(int productId);
    }
}
