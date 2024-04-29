using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace PGTDIVISIONTRAFFIC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
            {
                // Set initial value of txtDate to today's date
                txtDate.Text = DateTime.Today.ToString("yyyy-MM-dd");
            }
        }

        protected void BindGridView()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT [from], [date], [train_name], [engine], [time], [unit] FROM forecast_from_1";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO forecast_from_1 ([from], [date], [train_name], [engine], [time], [unit]) " +
                               "VALUES (@From, @Date, @TrainName, @Engine, @Time, @Unit)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@From", txtFrom.Text);
                    command.Parameters.AddWithValue("@Date", txtDate.Text);
                    command.Parameters.AddWithValue("@TrainName", txtTrainName.Text);
                    command.Parameters.AddWithValue("@Engine", txtEngine.Text);
                    command.Parameters.AddWithValue("@Time", txtTime.Text);
                    command.Parameters.AddWithValue("@Unit", txtUnit.Text);

                    connection.Open();

                    int rowsAffected = command.ExecuteNonQuery();

                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        txtFrom.Text = "";
                        txtDate.Text = "";
                        txtTrainName.Text = "";
                        txtEngine.Text = "";
                        txtTime.Text = "";
                        txtUnit.Text = "";
                    }
                    else
                    {
                        // Handle failure to insert data
                    }
                }
            }

            BindGridView();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
            

           
        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            int rowIndex = e.RowIndex;
            GridViewRow row = GridView1.Rows[rowIndex];
            string from = row.Cells[0].Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM forecast_from_1 WHERE [from] = @From";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@From", from);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            int rowIndex = e.RowIndex;
            GridViewRow row = GridView1.Rows[rowIndex];
            string from = row.Cells[0].Text;
            string date = (row.FindControl("txtDate") as TextBox).Text;
            string trainName = (row.FindControl("txtTrainName") as TextBox).Text;
            string engine = (row.FindControl("txtEngine") as TextBox).Text;
            string time = (row.FindControl("txtTime") as TextBox).Text;
            string unit = (row.FindControl("txtUnit") as TextBox).Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE forecast_from_1 SET [date] = @Date, [train_name] = @TrainName, [engine] = @Engine, [time] = @Time, [unit] = @Unit WHERE [from] = @From";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@From", from);
                    command.Parameters.AddWithValue("@Date", date);
                    command.Parameters.AddWithValue("@TrainName", trainName);
                    command.Parameters.AddWithValue("@Engine", engine);
                    command.Parameters.AddWithValue("@Time", time);
                    command.Parameters.AddWithValue("@Unit", unit);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Check if a row is selected
            if (GridView1.SelectedIndex >= 0)
            {
                // Get the selected row
                GridViewRow selectedRow = GridView1.SelectedRow;

                // You can access the data in the selected row and perform operations here
                string id = selectedRow.Cells[0].Text; // Example: Assuming the ID is in the first column

                // If you want to perform edit operation, you can redirect to the edit page passing the ID
                // Response.Redirect("EditPage.aspx?id=" + id);

                // If you want to perform delete operation, you can delete the selected record
                // Example: DeleteRecord(id);
            }
        }
    }
}
