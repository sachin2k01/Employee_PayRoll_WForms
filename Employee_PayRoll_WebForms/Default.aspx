<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Employee_PayRoll_WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <table class="w-100">
            <tr>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <td class="text-center" colspan="4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Text="Employee Pay Roll Web Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="height: 18px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 92px; height: 61px"></td>
                <td style="height: 61px; width: 217px"><strong>
                    <asp:Label ID="EIDlbl" runat="server" Font-Size="14pt" Text="Employee ID"></asp:Label>
                    </strong></td>
                <td style="height: 61px; width: 341px">
                    <asp:TextBox ID="eIdtxt" runat="server" Height="36px" Width="249px"></asp:TextBox>
                </td>
                <td style="height: 61px"><strong>
                    <asp:Button ID="searchbtn" runat="server" Font-Bold="True" Height="40px" style="background-color: #0099FF" Text="Search" Width="97px" OnClick="Search_Employee" />
                    </strong></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 55px"></td>
                <td style="width: 217px; height: 55px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="Employee Name"></asp:Label>
                </td>
                <td style="height: 55px; width: 341px">
                    <asp:TextBox ID="eNametxt" runat="server" Height="36px" Width="250px"></asp:TextBox>
                </td>
                <td style="height: 55px"></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 54px"></td>
                <td style="width: 217px; height: 54px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="Gender"></asp:Label>
                </td>
                <td style="height: 54px; width: 341px">
                    <asp:TextBox ID="eGendertxt" runat="server" Height="37px" Width="248px"></asp:TextBox>
                </td>
                <td style="height: 54px"></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 54px"></td>
                <td style="width: 217px; height: 54px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" Text="Department"></asp:Label>
                </td>
                <td style="height: 54px; width: 341px">
                    <asp:TextBox ID="eDep" runat="server" Height="37px" Width="246px"></asp:TextBox>
                </td>
                <td style="height: 54px"></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 52px"></td>
                <td style="width: 217px; height: 52px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="14pt" Text="Salary"></asp:Label>
                </td>
                <td style="height: 52px; width: 341px">
                    <asp:TextBox ID="eSalary" runat="server" Height="35px" Width="244px"></asp:TextBox>
                </td>
                <td style="height: 52px"></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 52px">&nbsp;</td>
                <td style="width: 217px; height: 52px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="14pt" Text="StartDate"></asp:Label>
                </td>
                <td style="height: 52px; width: 341px">
                    <asp:TextBox ID="eDatetxt" runat="server" Height="37px" Width="239px"></asp:TextBox>
                </td>
                <td style="height: 52px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 92px; height: 50px"></td>
                <td style="width: 217px; height: 50px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="14pt" Text="profile Image"></asp:Label>
                </td>
                <td style="height: 50px; width: 341px">
                    <asp:FileUpload ID="eImageUp" runat="server" Height="35px" />
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="width: 92px; height: 50px"></td>
                <td style="width: 217px; height: 50px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="14pt" Text="Notes"></asp:Label>
                </td>
                <td style="height: 50px; width: 341px">
                    <asp:TextBox ID="eNotestxt" runat="server" Height="35px" Width="242px"></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 341px"><strong>
                    <asp:Button ID="updatebtn" runat="server" Font-Bold="True" Height="37px" style="background-color: #00FF00" Text="Update" Width="118px" OnClick="Update_Employee" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="deletebtn" runat="server" Font-Bold="True" Height="38px" style="background-color: #FF0000" Text="Delete" Width="115px" OnClick="Delete_Employee" />
                    </strong></td>
                <td>
                    <asp:Button ID="Listbtn" runat="server" Font-Bold="True" Height="34px" style="background-color: #FFCC00" Text="ListAll" Width="101px" OnClick="GetAll_Employee" />
                </td>
            </tr>
            <tr>
                <td style="width: 92px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 341px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

</asp:Content>
