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
    public partial class Employee_Register : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-JJSV9PF\SQLEXPRESS;Initial Catalog=WF_EmployeeDb;Integrated Security=True;Encrypt=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calender1.Visible = false;
            }
        }

        protected void Create_Employee_Click(object sender, EventArgs e)
        {
            try
            {
                if(FileUpload.HasFile)
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        SqlCommand sqlCommand = new SqlCommand("spCreateEmployee", conn);
                        sqlCommand.CommandType = CommandType.StoredProcedure;
                        FileUpload.SaveAs(Server.MapPath("~/Images/") + System.IO.Path.GetFileName(FileUpload.FileName));
                        string imgpath="Images/"+ System.IO.Path.GetFileName(FileUpload.FileName);

                        string Gender = string.Empty;
                        if(MaleCB.Checked)
                        {
                            Gender = "Male";
                        }
                        else if(FemaleCB.Checked)
                        {
                            Gender = "Female";
                        }
                        else
                        {
                            Gender = null;
                        }

                        string Department=string.Empty;
                        if(ITcb.Checked)
                        {
                            Department = "IT";
                        }
                        else if(HRcb.Checked)
                        {
                            Department = "HR";
                        }
                        else if(otherscb.Checked)
                        {
                            Department = "Others";
                        }
                        else if(Financecb.Checked)
                        {
                            Department = "Finance";
                        }

                        sqlCommand.Parameters.AddWithValue("@EmployeeName", eNametxt.Text);
                        sqlCommand.Parameters.AddWithValue("@ImagePath",imgpath);
                        sqlCommand.Parameters.AddWithValue("@Gender", Gender);
                        sqlCommand.Parameters.AddWithValue("@Department", Department);
                        sqlCommand.Parameters.AddWithValue("@Salary",decimal.Parse(eSalarytxt.Text));
                        sqlCommand.Parameters.AddWithValue("@StartDate", DateTime.Parse(eStartDatetxt.Text));
                        sqlCommand.Parameters.AddWithValue("@Notes", eNotesxt.Text);
                        sqlCommand.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee created Successfully');", true);
                    }
                    Response.Redirect("Default.aspx", false);
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void calenderButton_Click(object sender, ImageClickEventArgs e)
        {
            if(Calender1.Visible)
            {
                Calender1.Visible=false;
            }
            else
            {
                Calender1.Visible = true;
            }
            Calender1.Attributes.Add("style", "position:absolute");
        }

        protected void Calender1_SelectionChanged(object sender, EventArgs e)
        {
            eStartDatetxt.Text=Calender1.SelectedDate.ToString("dd/MM/yyyy");
            Calender1.Visible = false;
        }

        protected void Return_Login(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}