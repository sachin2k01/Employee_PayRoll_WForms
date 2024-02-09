using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
                if (FileUpload.HasFile)
                {

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        SqlCommand sqlCommand = new SqlCommand("spCreateEmployee", conn);
                        sqlCommand.CommandType = CommandType.StoredProcedure;

                        string imgpath = null;
                        string path = Server.MapPath("Images/");
                        string filename = Path.GetFileName(FileUpload.FileName);
                        string extension = Path.GetExtension(FileUpload.FileName);

                        if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                        {
                            FileUpload.SaveAs(path + filename);
                            imgpath = "Images/" + filename;
                        }
                        else
                        {
                            return;
                        }

                        string Gender = MaleCB.Checked ? "Male" : "Female";
                        string Department = ITcb.Checked ? "IT" : HRcb.Checked ? "HR" : otherscb.Checked ? "Others" : "Finance";

                        sqlCommand.Parameters.AddWithValue("@EmployeeName", eNametxt.Text);
                        sqlCommand.Parameters.AddWithValue("@ImagePath", imgpath);
                        sqlCommand.Parameters.AddWithValue("@Gender", Gender);
                        sqlCommand.Parameters.AddWithValue("@Department", Department);
                        sqlCommand.Parameters.AddWithValue("@Salary", decimal.Parse(eSalarytxt.Text));
                        sqlCommand.Parameters.AddWithValue("@StartDate", DateTime.Parse(eStartDatetxt.Text));
                        sqlCommand.Parameters.AddWithValue("@Notes", eNotesxt.Text);
                        sqlCommand.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee created Successfully');", true);
                    }
                    Response.Redirect("Login.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Elable.Text = "An Error Occoured: " + ex.Message;

            }
        }

        protected void calenderButton_Click(object sender, ImageClickEventArgs e)
        {
            if (Calender1.Visible)
            {
                Calender1.Visible = false;
            }
            else
            {
                Calender1.Visible = true;
                Calender1.Style["position"] = "absolute";
            }
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

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(MaleCB.Checked ||FemaleCB.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}