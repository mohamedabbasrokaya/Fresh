using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fresh
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProductEntities1 db = new ProductEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            var MyList = from c in db.Table_1
                         select new { c.Item_name, c.Quntity, c.Unit_price, c.Total, c.Net };
          
            

        }
    }
}