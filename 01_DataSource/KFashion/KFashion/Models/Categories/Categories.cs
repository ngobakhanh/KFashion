using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Models.Categories
{
    public class Categories : FullAudit
    {
        public int CATEGORY_ID { get; set; }
        public string NAME { get; set; }
        public string IMAGE { get; set; }
        public int PRARENT_ID { get; set; }
        public string CATEGORY_URL { get; set; }
        public int ORD { get; set; }
        public string DESCRIPTION { get; set; }
        public int STATUS { get; set; }
    }
}
