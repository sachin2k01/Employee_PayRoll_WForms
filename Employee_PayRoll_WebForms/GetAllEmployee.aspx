<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAllEmployee.aspx.cs" Inherits="Employee_PayRoll_WebForms.GetAllEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
            background-color: #66CCFF;
        }
        .auto-style3 {
            background-color: #0066CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">

            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="All The Employee Info"></asp:Label>

        </div>
        <div style="text-align:center; padding-left:30px;">
            <asp:GridView ID="AllEmpGrid" runat="server" Width="1391px" AutoGenerateColumns="false">
                 <Columns>
                     <asp:BoundField DataField="EmployeeId" HeaderText="Employee ID" />
                       <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
                     <asp:TemplateField HeaderText="Image">
                         <ItemTemplate>
                             <asp:Image ID="imgEmployee" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Height="65px" Width="65px" />

                         </ItemTemplate>

                     </asp:TemplateField>
                     <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Department" HeaderText="Department" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" />

                 </Columns>
                <HeaderStyle BackColor="SteelBlue" ForeColor="White" />
                <RowStyle BackColor="#E6E6FA" ForeColor="#333333" />
            </asp:GridView>

        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Backbtn" runat="server" CssClass="auto-style3" Height="41px" OnClick="Return_Dash" Text="Back" Width="107px" />
        </p>
    </form>
    </body>
</html>
