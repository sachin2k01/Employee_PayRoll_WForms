using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_PayRoll_WebForms
{
    public partial class GetAllEmployee : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-JJSV9PF\SQLEXPRESS;Initial Catalog=WF_EmployeeDb;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllEmployeeInfo();
            }
        }

        protected void GetAllEmployeeInfo()
        {
            DataTable employee=new DataTable();
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand sqlCommand = new SqlCommand("spGetAllEmpl", connection))
                {
                    connection.Open();
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                    sqlDataAdapter.Fill(employee);
                    AllEmpGrid.DataSource = employee;
                    AllEmpGrid.DataBind();
                }
            }
        }

        protected void Return_Dash(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}