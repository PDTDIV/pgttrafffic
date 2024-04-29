using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PGTDIVISIONTRAFFIC
{
    public partial class userforecast1 : System.Web.UI.Page
    {
        string strcon = @"Data Source=Manu\SQLEXPRESS;Initial Catalog=pgtdivDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a function to bind data to the GridView if needed
                BindGridView();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Add the entered values to the GridView
            AddToGridView();
        }

        private void BindGridView()
        {
            // You need to implement your data binding logic here.
            // For demonstration purposes, I'm creating a DataTable and binding it to the GridView.

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] {
                new DataColumn("train_name", typeof(string)),
                new DataColumn("engine", typeof(string)),
                new DataColumn("unit", typeof(string)),
                new DataColumn("time", typeof(string))
            });

            // Add rows to the DataTable if needed
            // Example:
            // dt.Rows.Add("Train1", "Engine1", "Unit1", "12:00 PM");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void AddToGridView()
        {
            // Retrieve values from TextBoxes
            string trainName = TextBox9.Text;
            string engine = TextBox10.Text;
            string unit = TextBox12.Text;
            string time = TextBox11.Text;

            // You can add validation here if needed before adding the values to the GridView

            // Add the entered values to the DataTable
            DataTable dt;
            if (ViewState["GridData"] != null)
            {
                dt = (DataTable)ViewState["GridData"];
            }
            else
            {
                dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] {
                    new DataColumn("train_name", typeof(string)),
                    new DataColumn("engine", typeof(string)),
                    new DataColumn("unit", typeof(string)),
                    new DataColumn("time", typeof(string))
                });
            }

            dt.Rows.Add(trainName, engine, unit, time);

            // Bind the DataTable to the GridView
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // Store the DataTable in ViewState to persist data on postback
            ViewState["GridData"] = dt;

            // Clear TextBox values after adding to GridView
            ClearTextBoxes();
        }

        private void ClearTextBoxes()
        {
            // Clear all TextBox values
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;

            // Retrieve updated values from the GridView row
            GridViewRow row = GridView1.Rows[index];
            string trainName = ((TextBox)row.Cells[0].Controls[0]).Text;
            string engine = ((TextBox)row.Cells[1].Controls[0]).Text;
            string unit = ((TextBox)row.Cells[2].Controls[0]).Text;
            string time = ((TextBox)row.Cells[3].Controls[0]).Text;

            // Update your data source with the updated values

            // Exit edit mode
            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;

            // Delete the row from your data source

            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}
