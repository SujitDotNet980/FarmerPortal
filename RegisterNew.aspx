<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterNew.aspx.cs" Inherits="FarmerPortal.RegisterNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Registration</title>
    <style type="text/css">
        .auto-style1 {
            height: 322px;
            margin-top: 22px;
        }
        .auto-style2 {
            height: 49px;
            margin-top: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2" style="background-position: center center; font-size: xx-large; font-weight: 900; text-decoration: underline; text-transform: capitalize; background-color: #00FFFF; background-image: inherit; background-attachment: fixed;">Registration page</h1>
            <div class="auto-style1">
                <table>
                    <tr>
                        <td>
                            Name
                        </td>
                        <td>
                            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            EmailID
                        </td>
                        <td>
                            <asp:TextBox ID="EmailID" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="password" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="Confirmpassword" ControlToCompare="Password" ErrorMessage="Password Must Be same" ForeColor="#CC3300"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm Password
                        </td>
                        <td>
                            <asp:TextBox ID="Confirmpassword" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confirmpassword" ErrorMessage="Password Must Be same" ForeColor="#CC3300"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
