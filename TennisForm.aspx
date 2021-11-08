<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TennisForm.aspx.cs" Inherits="Lab04.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 434px;
        }
        .auto-style2 {
            width: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> The Tennis Court Company 
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1" style="font-family: Arial; font-size: medium; color: #0099CC">       
        <asp:Label runat="server" Text="Enter Date:"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtDate" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="Please enter date !!!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter date between 01/11/2021 and 31/12/2021" MaximumValue="31/12/2021" MinimumValue="01/11/2021" Type="Date">Date</asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="font-family: Arial; font-size: medium; color: #3399FF">       
        <asp:Label runat="server" Text="Number Of Ticket Required:" ID="Label3"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtNumber" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNumber" ErrorMessage="Please enter the number" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvTickets" runat="server" ControlToValidate="txtNumber" ErrorMessage="Number of tickets must be &gt;= 2" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="2"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="font-family: Arial; font-size: medium; color: #3399FF">       
        <asp:Label runat="server" Text="Email :" ID="Label2"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </h2>
        </div>       
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit " />
        </p>
    </form>
   
</body>
</html>
