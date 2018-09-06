using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Models.Product
{
    public class ProductDetail
    {
        public Product Product { get; set; }
        public  IEnumerable<Size> Sizes { get; set; }
        public IEnumerable<Image> Images { get; set; }
    }
}
