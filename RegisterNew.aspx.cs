using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FarmerPortal
{
    public partial class RegisterNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string quary;
           
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            quary = "insert into OfficerRegister(Name,EmailID,Password,Confirmpassword)" + "Values(@Name,@EmailID,@Password,@Confirmpassword)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(quary, conn);
               
                cmd.Parameters.AddWithValue("@Name", Name.Text);
                cmd.Parameters.AddWithValue("@EmailID", EmailID.Text);
                cmd.Parameters.AddWithValue("@Password", password.Text);
                cmd.Parameters.AddWithValue("@Confirmpassword", Confirmpassword.Text);


                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally 
            {
                conn.Close();
            }

            Response.Redirect("Register Page.aspx");
        }
    }
}