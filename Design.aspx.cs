using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FarmerPortal
{
    public partial class Design : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string Quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            Quary = "Insert into FramerPortal(FarmerName,FatherName,Age,Gender,Village,Panchayat,TotalAcers)" + "Values(@FarmerName,@FatherName,@Age,@Gender,@Village,@Panchayat,@TotalAcers)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(Quary, conn);

                cmd.Parameters.AddWithValue("@FarmerName", FarmerName.Text);
                cmd.Parameters.AddWithValue("@FatherName", FatherName.Text);
                cmd.Parameters.AddWithValue("Age", Age.SelectedValue);
                cmd.Parameters.AddWithValue("Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("Village", Village.Text);
                cmd.Parameters.AddWithValue("Panchayat", Panchayat.Text);
                cmd.Parameters.AddWithValue("TotalAcers", Acers.Text);

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

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Update FramerPortal set FarmerName=@FarmerName,FatherName=@FarmerName,Age=@Age,Gender=@Gender,Village=@Village,Panchayat=@Panchayat",conn);
                cmd.Parameters.AddWithValue("@FarmerName", FarmerName.Text);
                cmd.Parameters.AddWithValue("@FatherName", FatherName.Text);
                cmd.Parameters.AddWithValue("Age", Age.SelectedValue);
                cmd.Parameters.AddWithValue("Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("Village", Village.Text);
                cmd.Parameters.AddWithValue("Panchayat", Panchayat.Text);
                
                cmd.ExecuteNonQuery();
                

                conn.Close();


            }
            catch (Exception ex)
            {
                throw ex ;
            }
            
            

           
           

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

            string stquar;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            stquar = "delete from FramerPortal where FarmerName=' " + FarmerName.Text + " ' ";
            SqlCommand cmd = new SqlCommand(stquar, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        protected void View_Click(object sender, EventArgs e)
        {
            string Quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            conn.Open();
           
            Quary = "Select * from FramerPortal";
           DataTable dt=new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(Quary, conn);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
         
            

        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
            string Quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            Quary = "Insert into FramerPortal(FarmerName,FatherName,Age,Gender,Village,Panchayat,TotalAcers)" + "Values(@FarmerName,@FatherName,@Age,@Gender,@Village,@Panchayat,@TotalAcers)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(Quary, conn);

                cmd.Parameters.AddWithValue("@FarmerName", FarmerName.Text);
                cmd.Parameters.AddWithValue("@FatherName", FatherName.Text);
                cmd.Parameters.AddWithValue("Age", Age.SelectedValue);
                cmd.Parameters.AddWithValue("Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("Village", Village.Text);
                cmd.Parameters.AddWithValue("Panchayat", Panchayat.Text);
                cmd.Parameters.AddWithValue("TotalAcers", Acers.Text);

                cmd.ExecuteNonQuery();




            }
            catch (Exception ex)
            {
                throw (ex);
            }
            finally
            {
                conn.Close();
            }

        }
    }
}