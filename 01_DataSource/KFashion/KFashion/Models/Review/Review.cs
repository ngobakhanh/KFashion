using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Models.Review
{
    public class Review
    {
        public string CUSTOMER_NAME { get; set; }
        public int REVIEW_ID { get; set; }
        public string REVIEW_CONTENT { get; set; }
        public DateTime REVIEW_DATE { get; set; }
        public int REVIEW_PARENT { get; set; }
        public int REVIEW_RATING { get; set; }


    }
}
