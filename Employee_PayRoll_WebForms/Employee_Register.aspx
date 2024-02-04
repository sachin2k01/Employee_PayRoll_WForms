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
        .auto-style8 {
            width: 264px;
            height: 43px;
        }
        .auto-style9 {
            height: 43px;
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
                        <asp:Label ID="eName" runat="server" Text="Employee Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style14">
                        <asp:TextBox ID="eNametxt" runat="server" Height="34px" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Gender</strong></td>
                    <td class="auto-style16" rowspan="1">
                        <asp:CheckBox ID="MaleCB" runat="server" Font-Bold="True" Font-Size="Medium" Text="Male" />
                        <asp:CheckBox ID="FemaleCB" runat="server" Font-Bold="True" Font-Size="Medium" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Department</strong></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="eDepartment" runat="server">
                            <asp:ListItem>Others</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Sales</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>Salary</strong></td>
                    <td class="auto-style19">
                        <asp:TextBox ID="eSalarytxt" runat="server" Height="34px" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>StartDate</strong></td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Profile Image</strong></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Notes</strong></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Create_Employee" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="White" Height="47px" OnClick="Create_Employee_Click" Text="Create" Width="100px" />
                    </td>
                </tr>
            </table>
        <div>
        </div>
        </div>
    </form>
</body>
</html>
