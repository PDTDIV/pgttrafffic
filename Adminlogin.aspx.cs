using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace PGTDIVISIONTRAFFIC
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
                    SqlCommand cmd = new SqlCommand("select * from admin_login_tbl where user_id=@user_id and password=@password", con);
                    cmd.Parameters.AddWithValue("@user_id", textbox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", textbox2.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");

                            Session["username"] = dr.GetValue(0).ToString();
                            Session["full_name"] = dr.GetValue(2).ToString();
                            Session["role"] = "admin";

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