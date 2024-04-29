using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PGTDIVISIONTRAFFIC
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = @"Data Source=Manu\SQLEXPRESS;Initial Catalog=pgtdivDB;Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO user_signup_tbl(full_name, date_of_birth, email, designation, station, department, office, user_id, [password]) " +
                                                    "VALUES(@full_name, @date_of_birth, @email, @designation, @station, @department, @office, @user_id, @password)",
                                                    con);

                    cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@date_of_birth", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@designation", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@station", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@department", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@office", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@user_id", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox8.Text.Trim());

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Sign up Successful. Go to user Login');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to insert data');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
