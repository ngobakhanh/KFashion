using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Models.Product
{
    public class Product : FullAudit
    {
        public int PRODUCT_ID { get; set; }
        public string NAME { get; set; }
        public string DESCRIPTION { get; set; }
        public float OLD_PRICE { get; set; }
        public float PRICE { get; set; }
        public float DISCOUNT { get; set; }
        public string IMAGE { get; set; }
        public int CATEGORY_ID { get; set; }
        public string OUTOFSTOCK { get; set; }
        public int VIEW_COUNT { get; set; }
    }
}
