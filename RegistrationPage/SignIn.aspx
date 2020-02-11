<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlineTrainTicketBookingApp.SignIn" %>

<asp:Content ID="cntHead" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 id="abc"><marquee>Never Rush & Push for train ticket</marquee></h1>
   <h2 id="h2">SignIn</h2>
    <table align="right">
        <tr>
            <td>Username </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtPassword" Type="password" runat="server"></asp:TextBox>
            </td>

        </tr>        
        <tr>           
            <td>
                <asp:Button ID="btnLogIn" runat="server" Text="Sign In" Style="height: 26px" rowspan="2" align="right"
        OnClick="SignIn_Click"></asp:Button>
            </td>
            <td>
                 <asp:Button ID="btnRegister" runat="server" Text="Sign Up" Style="height: 26px" row span="2" align="right"
                OnClick="SignUp_Click"></asp:Button>
            </td>
        </tr>

    </table>
    
    
           




</asp:Content>



