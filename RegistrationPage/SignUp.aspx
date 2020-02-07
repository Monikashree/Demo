<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineTrainTicketBookingApp.SignUp" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 id="abc">
        <marquee>Sign Up</marquee>
    </h1>
    <table align="right">
        <tr>
            <td>First Name </td>
            <td>
                <asp:TextBox ID="txtFirstnameID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredName" ControlToValidate="txtFirstnameID" ErrorMessage="FirstName Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validateName" runat="server" ControlToValidate="txtFirstnameID" ErrorMessage="Enter valid name" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtLastnameID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="validateLastName" runat="server" ControlToValidate="txtLastnameID" ErrorMessage="Enter valid name" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>

        </tr>
        <tr>
            <td>Age</td>
            <td>
                <asp:TextBox ID="txtAgeID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredAge" ControlToValidate="txtAgeID" ErrorMessage="Age Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <%--<asp:CustomValidator ID="customAge" runat="server" OnServerValidate="ServerValidation" ControlToValidate="ageID" Style="color: palevioletred"></asp:CustomValidator>                --%>

            </td>


        </tr>
        <tr>
            <td>Sex</td>
            <td>
                <asp:RadioButtonList ID="rbtSex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Gmail</td>
            <td>
                <asp:TextBox ID="txtGmailID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredGmail" ControlToValidate="txtGmailID" ErrorMessage="Gmail Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="regexGmail" runat="server" Style="color: royalblue" ErrorMessage="Invalid emailID" ControlToValidate="txtGmailID"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td>
                <asp:TextBox ID="txtPhoneID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredPhone" ControlToValidate="txtPhoneID" ErrorMessage="Phone Number Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validatePhone" runat="server" ControlToValidate="txtPhoneID" ErrorMessage="Enter valid mobile number" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtPasswordID" runat="server"></asp:TextBox></td>

            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredPassword" ControlToValidate="txtPasswordID" ErrorMessage="Password Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="txtCpasswordID" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ControlToValidate="txtCpasswordID" ControlToCompare="txtPasswordID" ErrorMessage="Password and Confirm password Mismatch" ID="cmpPassword" runat="server" Style="color: palevioletred"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="btn" runat="server" Text="Submit" rowspan="2" colspan="2" align="center"
            OnClick="Button_Click" ></asp:Button>
            </td>
        </tr>

    </table>
   
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />
    

</asp:Content>

