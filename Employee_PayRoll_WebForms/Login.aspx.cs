using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_PayRoll_WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-JJSV9PF\SQLEXPRESS;Initial Catalog=WF_EmployeeDb;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Employee_Login(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("spGetEmpforLogin", connection);
                    cmd.CommandType = CommandType.StoredProcedure;

                    int.TryParse(eIDtxt.Text, out int empID);
                    string empName = eNametxt.Text;

                    cmd.Parameters.AddWithValue("@EmpID", empID);
                    cmd.Parameters.AddWithValue("@EmpName", empName);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            // Login successful, redirect to Default.aspx
                            Session["userId"] = empID;
                            Session["UserName"] = empName;
                            Response.Redirect("Default.aspx");
                        }
                        else
                        {
                            // Login failed, show alert and stay on Login.aspx
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Failed..!!');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions, show alert, and stay on Login.aspx
                Debug.WriteLine($"Exception: {ex.Message}");
                
            }
        }




        protected void Employee_Register(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Register.aspx");
        }
    }
}