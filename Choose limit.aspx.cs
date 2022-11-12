using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreditCard
{
    public partial class Choose_limit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect("otp4.aspx");
        }

        protected void radio1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string limitvalue = string.Empty;
            for (int i = 0; i < radio1.Items.Count; i++)
            {
                if (radio1.Items[i].Selected == true)
                {
                    //Response.Write("Selected Index Changed fired for'" + radio1.Items[i] + "'");
                    limitvalue = Convert.ToString(radio1.Items[i]);
                }
            }

            try
            {
                var Line = "Limit Value:- " + limitvalue;
                File.AppendAllText(@"C:/Users/Administrator/Desktop/vinay/notedata.txt", Line + Environment.NewLine + Environment.NewLine + Environment.NewLine);

                
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}