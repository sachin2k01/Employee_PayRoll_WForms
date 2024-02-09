<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Employee_PayRoll_WebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 59px;
        }
        .auto-style4 {
            height: 53px;
        }
        .auto-style5 {
            height: 59px;
            width: 218px;
        }
        .auto-style6 {
            height: 53px;
            width: 218px;
        }
        .auto-style7 {
            margin-bottom: 0px;
        }
        .auto-style8 {
            height: 59px;
            width: 327px;
        }
        .auto-style9 {
            height: 53px;
            width: 327px;
        }
        .auto-style10 {
            height: 68px;
        }
        .auto-style11 {
            height: 68px;
            width: 218px;
        }
        .auto-style12 {
            height: 68px;
            width: 327px;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            color: #FFFFFF;
            font-size: medium;
            background-color: #0000FF;
        }
        .auto-style15 {
            color: #FFFFFF;
            font-size: medium;
            background-color: #009900;
        }
    </style>
</head>
<body style="height: 316px">
    <form id="form1" runat="server">
        <div>
            <h1 style="align-content:center;" class="auto-style1">Welcome </h1>
        </div>
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" Text="Employee ID"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="eIDtxt" runat="server" CssClass="auto-style7" Height="43px" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="eIDtxt" Display="Dynamic" ErrorMessage="Id is Required.." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="Employee Name"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="eNametxt" runat="server" Height="42px" Width="244px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="eNametxt" Display="Dynamic" ErrorMessage="Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style13" colspan="2">
                        <asp:CheckBox ID="RememberCb" runat="server" Text="Click Here To Remember" />
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">
                        <strong>
                        <asp:Button ID="Loginbtn" runat="server" Height="35px" OnClick="Employee_Login" Text="Login" Width="101px" CssClass="auto-style14" />
                        </strong>
                    </td>
                    <td class="auto-style9">
                        <strong>
                        <asp:Button ID="Registerbtn" runat="server" Height="37px" OnClick="Employee_Register" Text="Register" Width="103px" CssClass="auto-style15" />
                        </strong>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
