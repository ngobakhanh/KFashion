using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KFashionShoe.Helper;
using KFashion.Models.Product;
using KFashion.Models.Review;

namespace KFashion.Services
{
    public class ProductService : IProductService
    {
        public IEnumerable<Product> GetAllProduct(int productIndex)
        {
            return SqlHelper.QuerySP<Product>("PRODUCT_GETALL",new { @PRODUCT_INDEX = productIndex});
        }

        ProductDetail IProductService.GetProductById(int productId)
        {
            var result = SqlHelper.QueryMultipleSP<Product,Size,Image,Product,Review>("PRODUCT_GET_BY_ID", new { @PRODUCT_ID = productId });
            var productDetail = new ProductDetail
            {
                Product = result.Item1.FirstOrDefault(),
                Sizes = result.Item2,
                Images = result.Item3,
                ProductsRelated = result.Item4,
                Reviews = result.Item5
            };

            return productDetail;
        }
    }
}
