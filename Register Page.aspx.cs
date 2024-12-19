using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FarmerPortal
{
    public partial class Register_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterNew.aspx");

        }

        protected void Login_Click(object sender, EventArgs e)

        {
            string quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            try
            {
                conn.Open();
                string EmailID1=EmailID.Text;
                string Password1=Password.Text;
               
                quary= "Select EmailID from OfficerRegister where Emailid='" + EmailID1+"'and Password='"+Password1+"'";
                SqlCommand cmd= new SqlCommand(quary, conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    LoginError.Text = "Login Success";
                    Response.Redirect("Design.aspx");
                }
                else 
                {
                    LoginError.Text = "Invalid EmailID/Password";
                }
                

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }



            
        }
    }
}