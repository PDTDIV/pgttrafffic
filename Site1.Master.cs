using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace PGTDIVISIONTRAFFIC
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton4.Visible = false; //dashboard
                    LinkButton5.Visible = false; //forecast
                    LinkButton2.Visible = true; //login
                    LinkButton1.Visible = true; //singup
                    LinkButton3.Visible = false; //logout
                    LinkButton7.Visible = false; //hello user

                    LinkButton6.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton4.Visible = true; //dashboard
                    LinkButton5.Visible = true; //forecast

                    LinkButton2.Visible = false; //login
                    LinkButton1.Visible = false; //singup
                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello" + Session["username"].ToString();

                    LinkButton6.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;

                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton4.Visible = true; //dashboard
                    LinkButton5.Visible = true; //forecast

                    LinkButton2.Visible = false; //login
                    LinkButton1.Visible = false; //singup
                    LinkButton3.Visible = true; //logout
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;

                }



            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminauthormanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userdashboard.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userforecast1.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["full_name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            if (Session["role"].Equals(""))
            {
                LinkButton4.Visible = false; //dashboard
                LinkButton5.Visible = false; //forecast

                LinkButton2.Visible = true; //login
                LinkButton1.Visible = true; //singup
                LinkButton3.Visible = false; //logout
                LinkButton7.Visible = false; //hello user

                LinkButton6.Visible = true;
                LinkButton11.Visible = false;
                LinkButton12.Visible = false;
                LinkButton8.Visible = false;
                LinkButton9.Visible = false;
                LinkButton10.Visible = false;

                Response.Redirect("homepage.aspx");
            }
        }
}   }