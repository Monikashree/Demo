

<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="TrainDetailsAdmin.aspx.cs"
    Inherits="OnlineTrainTicketBookingApp.TrainDetailsAdmin" %>

<asp:Content ID="cntHead" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <link rel="stylesheet" type="text/css" href="Style.css" />
    <div id="Content" style="resize: horizontal">
        <table align="center">
            <tr>
                <td>
                    <div>
                        <asp:GridView ID="gdView" runat="server" AutoGenerateColumns="False" ShowFooter="True"
                            DataKeyNames="TrainNo" ShowHeaderWhenEmpty="True" OnRowCommand="gdView_RowCommand"
                            OnRowUpdating="gdView_RowUpdating" OnRowEditing="gdView_RowEditing"
                            OnRowCancelingEdit="gdView_RowCancelingEdit" OnRowDeleting="gdView_RowDeleting"
                            OnSelectedIndexChanged="gdView_SelectedIndexChanged"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                            <Columns>
                                <asp:TemplateField HeaderText="TrainNo">
                                    <ItemTemplate>
                                        <asp:Label ID="lblNo" runat="server" Text='<%# Eval("TrainNo") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtNo" runat="server" Text='<%# Eval("TrainNo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtNoFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TrainName">
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("TrainName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("TrainName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtNameFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Source">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSource" runat="server" Text='<%# Eval("SourceStation") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSource" runat="server" Text='<%# Eval("SourceStation") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtSourceFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Destination">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDestination" runat="server" Text='<%# Eval("DestinationStation") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDestination" runat="server" Text='<%# Eval("DestinationStation") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtDestinationFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DepartureTime">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDepartTime" runat="server" Text='<%# Eval("DepartureTime") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDepartTime" runat="server" Text='<%# Eval("DepartureTime") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtDepartTimeFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ArrivalTime">
                                    <ItemTemplate>
                                        <asp:Label ID="lblArrivalTime" runat="server" Text='<%# Eval("ArrivalTime") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtArrivalTime" runat="server" Text='<%# Eval("ArrivalTime") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtArrivalTimeFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TrainkM">
                                    <ItemTemplate>
                                        <asp:Label ID="lblKM" runat="server" Text='<%# Eval("TrainKM") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtKM" runat="server" Text='<%# Eval("TrainKM") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtKMFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Total Seats">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSeat" runat="server" Text='<%# Eval("TotalSeats") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSeat" runat="server" Text='<%# Eval("TotalSeats") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtSeatFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Per Ticket Cost">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("PerTicketCost") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCost" runat="server" Text='<%# Eval("PerTicketCost") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtCostFooter" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/images/Edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                        <asp:ImageButton ImageUrl="~/images/Delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:ImageButton ImageUrl="~/images/Save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                        <asp:ImageButton ImageUrl="~/images/Cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:ImageButton ImageUrl="~/images/Add.png" runat="server" CommandName="Add" ToolTip="Add" Width="20px" Height="20px" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSuccessMsg" Text="" runat="server" ForeColor="Green" />
                    <asp:Label ID="lblErrorMsg" Text="" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>       
    </div>
   </asp:Content>
