 <%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="FarmerPortal.Design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Farmer Portal</title>
    <style type="text/css">
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div align="center" style="background-image: url('image/Farmer.jpg')">
            <div style="height:720px">
                
            <h1>Farmer portal India</h1>
            <table style="vertical-align:central">
                <tr>
                    <td>
                        FarmFarmFarmer Name
                        
                    </td>
                    <td>
                        <asp:TextBox ID="FarmerName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FarmerName" ErrorMessage="Reqiure farmer Name" Display="Dynamic" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        </td>
                   <tr>
                    <td>
                        Father Name
                    <td>
                        <asp:TextBox ID="FatherName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FatherName" ErrorMessage="Require Father Name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age
                    </td>
                    <td>
                        <asp:DropDownList ID="Age" runat="server">
                            <asp:ListItem Text="----Select----" Value=" "></asp:ListItem>
                            <asp:ListItem Text="50" Value="50"></asp:ListItem>
                            <asp:ListItem Text="51" Value="51"></asp:ListItem>
                            <asp:ListItem Text="52" Value="52"></asp:ListItem>
                            <asp:ListItem Text="53" Value="53"></asp:ListItem>
                            <asp:ListItem Text="54" Value="54"></asp:ListItem>
                            <asp:ListItem Text="55" Value="55"></asp:ListItem>
                            <asp:ListItem Text="56" Value="56"></asp:ListItem>
                            <asp:ListItem Text="57" Value="57"></asp:ListItem>
                            <asp:ListItem Text="58" Value="58"></asp:ListItem>
                            <asp:ListItem Text="59" Value="59"></asp:ListItem>
                            <asp:ListItem Text="60" Value="60"></asp:ListItem>
                            <asp:ListItem Text="61" Value="61"></asp:ListItem>
                            <asp:ListItem Text="62" Value="62"></asp:ListItem>
                            <asp:ListItem Text="63" Value="63"></asp:ListItem>
                            <asp:ListItem Text="64" Value="64"></asp:ListItem>
                            <asp:ListItem Text="65" Value="65"></asp:ListItem>
                            <asp:ListItem Text="66" Value="66"></asp:ListItem>
                            <asp:ListItem Text="67" Value="67"></asp:ListItem>
                            <asp:ListItem Text="68" Value="68"></asp:ListItem>
                            <asp:ListItem Text="69" Value="69"></asp:ListItem>
                            <asp:ListItem Text="70" Value="70"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Age" ErrorMessage="Select Age" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender
                    </td>
                    <td>
                        <asp:RadioButtonList ID="Gender" runat="server">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="FeMale" Value="FeMale"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Gender" runat="server" ErrorMessage="Select Gender" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Village
                    </td>
                    <td>
                        <asp:TextBox ID="Village" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Village" runat="server" ErrorMessage="Enter Village name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Panchayat
                    </td>
                    <td>
                        <asp:TextBox ID="Panchayat" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Panchayat" runat="server" ErrorMessage="Enter Panchayat Name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        Total Acers
                    </td>
                    <td>
                        <asp:TextBox ID="Acers" runat="server"></asp:TextBox>
             
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Submit"  runat="server" Text="Submit" OnClick="Submit_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                    </td>
                    <td>
                        <asp:Button ID="View" runat="server" Text="View"  OnClick="View_Click"/>
                    </td>

                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
            </div>
    </form>
</body>
</html>
