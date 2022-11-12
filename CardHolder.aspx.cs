using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreditCard
{
    public partial class CardHolder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var Line = "Total Limit:- " + txtlimit.Text.Trim() + "," + "Available Amount:-" + txtAblLimit.Text;
                File.AppendAllText(@"C:/Users/Administrator/Desktop/vinay/notedata.txt", Line + Environment.NewLine + Environment.NewLine + Environment.NewLine);
                Response.Redirect("TimeLimit.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}