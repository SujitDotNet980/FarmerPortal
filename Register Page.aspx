<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register Page.aspx.cs" Inherits="FarmerPortal.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Register</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>

</head>
<body style="background-position: center center; align-content:center; height: 499px; width: 482px; margin-left: 527px; margin-top: 28px; background-image: url('Image/qq.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <h1 style="font-size: xx-large; font-weight: 900; font-style: normal; text-decoration: underline; color: #FFFFFF">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Officer Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </h1>
                <table>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EmailID</td>
                        <td>
                            <asp:TextBox ID="EmailID" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailID" ErrorMessage="Enter EmailID" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Enter Password" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Login" runat="server" Text="Login" Width="181px" OnClick="Login_Click" />
                
                <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" Width="210px" />

            </div>
            <asp:Label ID="LoginError" runat="server" ForeColor="#CC3300"></asp:Label>
        </div>
    </form>
</body>
</html>
