using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KFashionShoe.Web.Models.Menu
{
    public class Menu : FullAudit
    {
        public int MENU_ID  { get; set; }
        public string NAME { get; set; }
        public string MENU_URL { get; set; }
    }
}
