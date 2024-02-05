<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_Register.aspx.cs" Inherits="Employee_PayRoll_WebForms.Employee_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #3399FF;
            font-size: xx-large;
            background-color: #CCFFFF;
        }
        .auto-style6 {
            width: 264px;
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style10 {
            font-size: medium;
            background-color: #0066FF;
        }
        .auto-style11 {
            height: 51px;
        }
        .auto-style12 {
            height: 26px;
            padding:5px;
        }
        .auto-style13 {
            width: 264px;
            height: 58px;
        }
        .auto-style14 {
            height: 58px;
        }
        .auto-style16 {
            height: 41px;
            text-align: left;
        }
        .auto-style17 {
            width: 264px;
            height: 41px;
        }
        .auto-style18 {
            width: 264px;
            height: 53px;
        }
        .auto-style19 {
            height: 53px;
        }
        .auto-style20 {
            width: 264px;
            height: 59px;
        }
        .auto-style21 {
            height: 59px;
        }
        .auto-style22 {
            width: 264px;
            height: 51px;
        }
        body{border:2px solid ;
             padding-left:12px;
             background-color:honeydew;

        }
        .auto-style24 {
            background-color: #CCFFCC;
        }
        .auto-style25 {
            font-size: medium;
            background-color: #CCFFCC;
        }
        .auto-style26 {
            margin-top: 0px;
            background-color: #66FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <h1>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Names="Segoe UI Black" Font-Size="X-Large" Text="Employee Registration"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="eName" runat="server" Text="Employee Name" CssClass="auto-style25" Font-Size="15pt"></asp:Label>
                        </strong></td>
                    <td class="auto-style14">
                        <asp:TextBox ID="eNametxt" runat="server" Height="34px" Width="232px" placeholder="Full Name" CssClass="auto-style24"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" Text="Gender" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style16" rowspan="1">
                        <asp:RadioButton ID="MaleCB" runat="server" Font-Bold="True" Font-Size="Medium" Text="Male" GroupName="Gender" CssClass="auto-style24"/>
                        <asp:RadioButton ID="FemaleCB" runat="server" Font-Bold="True" Font-Size="Medium" Text="Female" GroupName="Gender" CssClass="auto-style24"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="15pt" Text="Department" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButton ID="ITcb" runat="server" Text="IT" GroupName="dep" Font-Bold="True" Font-Size="Medium" CssClass="auto-style24" />
&nbsp;<strong><asp:RadioButton ID="HRcb" runat="server" Text="HR" GroupName="dep" CssClass="auto-style25"/>
                        </strong>&nbsp;<strong><asp:RadioButton ID="Financecb" runat="server" Text="Finance" GroupName="dep" CssClass="auto-style25"/>
                        </strong>&nbsp;<strong><asp:RadioButton ID="otherscb" runat="server" Text="Others" GroupName="dep" CssClass="auto-style25"/>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" Text="Salary" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="eSalarytxt" runat="server" Height="34px" Width="232px" placeholder="ex: 20000.00" CssClass="auto-style24"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15pt" Text="Start Date" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="eStartDatetxt" runat="server" Height="34px" Width="232px" placeholder="Select Date" CssClass="auto-style24"></asp:TextBox>
                        <asp:ImageButton ID="calenderButton" runat="server" ImageUrl="~\images\calenderbtn.jpg" Width="45px" ImageAlign="AbsBottom" OnClick="calenderButton_Click" />
                        <asp:Calendar ID="Calender1" runat="server" height="180px" width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="Calender1_SelectionChanged">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" Text="Profile Image" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <strong>
                        <asp:FileUpload ID="FileUpload" runat="server" Height="33px" Width="293px" Font-Bold="True" Font-Size="Medium" CssClass="auto-style24" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15pt" Text="Notes" CssClass="auto-style24"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="eNotesxt" runat="server" Height="34px" Width="232px" placeholder="Notes...," CssClass="auto-style24"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Create_Employee" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="White" Height="47px" OnClick="Create_Employee_Click" Text="Create" Width="100px" />
                        <asp:Button ID="logPagebtn" runat="server" CssClass="auto-style26" Height="45px" OnClick="Return_Login" Text="Login" Width="108px" />
                    </td>
                </tr>
            </table>
        <div>
        </div>
        </div>
    </form>
</body>
</html>
