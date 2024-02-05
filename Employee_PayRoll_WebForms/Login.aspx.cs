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
                    int empID = int.Parse(eIDtxt.Text);
                    string empName = eNametxt.Text;
                    cmd.Parameters.AddWithValue("@EmpID", empID);
                    cmd.Parameters.AddWithValue("EmpName", empName);
                    var result = cmd.ExecuteReader();
                    if (result.HasRows)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Successfull');window.location='Default.aspx';", true);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Failed..!!');window.location='Login.aspx'", true);
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Credentials..!!');window.location='Login.aspx'", true);
            }

        }

        protected void Employee_Register(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Register.aspx");
        }
    }
}