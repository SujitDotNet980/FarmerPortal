<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FarmerPortal.Login" %>

<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Officer Login</h1>

                <table>
                    <tr>
                        <td>
                            User Name
                        </td>
                        <td>
                            <asp:TextBox ID="UserName" runat="server" Width="217px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Login" runat="server" Text="Login" />
                <asp:Button ID="Forgot" runat="server" Text="Forgot" />
                <asp:Button ID="Register" runat="server" Text="Register" />
            </div>
        </div>
    </form>
</body>
</html>
