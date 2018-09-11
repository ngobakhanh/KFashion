using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashion.Models
{
    public class FullAudit
    {
        public DateTime CREATE_DATE { get; set; }
        public DateTime LAST_MODIFICATION_DATE { get; set; }
    }
}
