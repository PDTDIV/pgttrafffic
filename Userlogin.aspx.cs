using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PGTDIVISIONTRAFFIC
{
    public partial class Userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from user_signup_tbl where user_id=@user_id and password=@password", con);
                    cmd.Parameters.AddWithValue("@user_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            Session["username"] = dr.GetValue(7).ToString();
                            Session["full_name"] = dr.GetValue(0).ToString();
                            Session["role"] = "user";
                            Session["status"] = "user";
                        }
                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Credential');</script>");
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
