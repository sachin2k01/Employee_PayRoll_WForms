using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_PayRoll_WebForms
{
    public partial class _Default : Page
    {
        string connectionString = @"Data Source=DESKTOP-JJSV9PF\SQLEXPRESS;Initial Catalog=WF_EmployeeDb;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLofinUserInfo();
            }
        }

        protected void Search_Employee(object sender, EventArgs e)
        {

            if (!int.TryParse(eIdtxt.Text, out int EmployeeId) || EmployeeId == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('Invalid Credentials..!!');window.location='Default.aspx'", true);
                return;
                
            };
            using(SqlConnection connection=new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("spGetEmployeeById", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmpId", EmployeeId);
                using(SqlDataReader reader=cmd.ExecuteReader())
                {
                    if(reader.Read())
                    {
                        eNametxt.Text=reader.GetString(1).ToString();
                        eGendertxt.Text=reader.GetString(3).ToString();
                        eDep.Text = reader.GetString(4).ToString();
                        eSalary.Text = reader.GetDecimal(5).ToString();

                        eDatetxt.Text = reader.GetDateTime(6).ToString("yyyy-MM-dd");
                        eNotestxt.Text=reader.GetString(7).ToString();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('User Not Found..!!');window.location='Default.aspx'", true);
                    }

                }
            }

        }
        protected void Update_Employee(object sender, EventArgs e)
        {
            int EmployeeId=int.Parse(eIdtxt.Text);
            string Empname=eNametxt.Text;
            string Gender=eGendertxt.Text;
            string department=eDep.Text;
            decimal Salary=decimal.Parse(eSalary.Text);
            DateTime dateTime= DateTime.TryParse(eDatetxt.Text, out var result) ? result : DateTime.Now;
            string Note = eNotestxt.Text;
            string Imagepath = null;
            if(eImageUp.HasFile)
            {
                String path = Server.MapPath("Images/");
                String filename = Path.GetFileName(eImageUp.FileName);
                String extention = Path.GetExtension(filename);
                HttpPostedFile postedFile = eImageUp.PostedFile;

                if (IsImageExtension(extention))
                {
                    eImageUp.SaveAs(Path.Combine(path, filename));
                    Imagepath = "Images/" + filename;
                }
                else
                {
                    return;
                }
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand sqlCommand = new SqlCommand("spUpdateEmployee", connection);
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.AddWithValue("@EmployeeId", EmployeeId);
                    sqlCommand.Parameters.AddWithValue("@EmployeeName", Empname);
                    sqlCommand.Parameters.AddWithValue("@ImagePath", Imagepath);
                    sqlCommand.Parameters.AddWithValue("@Gender", Gender);
                    sqlCommand.Parameters.AddWithValue("@Department", department);
                    sqlCommand.Parameters.AddWithValue("@Salary", Salary);
                    sqlCommand.Parameters.AddWithValue("@StartDate", dateTime);
                    sqlCommand.Parameters.AddWithValue("@Notes", Note);
                    sqlCommand.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee Updated Successfully');window.location='Default.aspx';", true);


                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('upload new Image..!!');", true);

            }

        }

        private bool IsImageExtension(string extention)
        {
            string[] allowedExtensions = { ".jpg", ".jpeg", ".png" };
            return allowedExtensions.Contains(extention.ToLower());
        }

        protected void Delete_Employee(object sender, EventArgs e)
        {
            int EmpId = int.Parse(eIdtxt.Text);
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("spDeleteEmpByID", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@EmplId", EmpId);
                command.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee Deleted Successfully');window.location='Default.aspx';", true);

            }
        }

        protected void GetAll_Employee(object sender, EventArgs e)
        {
            Response.Redirect("GetAllEmployee.aspx");

        }

        protected void GetLofinUserInfo()
        {
            if (Session["userId"] != null)
            {
                int empId = (int)Session["userId"];

                DataTable dt = GetEmployeeInfoById(empId);
                if (dt != null && dt.Rows.Count > 0)
                {
                    EmployeeGridView.DataSource = dt;
                    EmployeeGridView.DataBind();
                }
            }
        }

        private DataTable GetEmployeeInfoById(int empId)
        {
            DataTable result = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("spGetEmployeeById", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@EmpId", empId);
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command); // Pass the command to the SqlDataAdapter
                    adapter.Fill(result);
                }
            }
            return result;
        }

    }
}