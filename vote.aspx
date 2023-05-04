<%@ Page Language="VB" AutoEventWireup="false" CodeFile="vote.aspx.vb" Inherits="vote" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style2
        {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style3
        {
            font-size: large;
            color: #FFFF00;
            font-weight: bold;
        }
        a
        {
            text-decoration:none;
        }
        a:hover
        {
            color:Navy;
            font-size:large;
        }
        .style9
        {
            font-size: large;
            font-family: sans-serif;
            color: #0000CC;
        }
        .style5
        {
            font-size: medium;
            font-family: sans-serif;
        }
        .style10
        {
            font-size: x-large;
            color: #FFCC00;
            background-color: #FF0000;
        }
        #form1
        {
            height: 1327px;
        }
        .style11
        {
            font-size: large;
            color: #0000CC;
            background-color: #FFFFFF;
            text-align: left;
        }
        .style12
        {
            font-size: x-large;
        }
        .style13
        {
            color: #0000CC;
        }
        .style14
        {
            font-size: large;
            color: #FFCC00;
            background-color: #FF0000;
        }
        .style15
        {
            color: #FF9933;
        }
        .style16
        {
            color: #000000;
        }
        .style17
        {
            text-decoration: underline;
        }
        .style18
        {
            font-size: large;
            color: #0000CC;
            background-color: #FFFFFF;
            text-align: left;
            height: 355px;
        }
        .style19
        {
            font-size: large;
            color: #FFCC00;
            background-color: #FFFFFF;
        }
        .style20
        {
            font-size: large;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style21
        {
            font-size: x-large;
            color: #0000CC;
            background-color: #FFCC00;
            text-align: left;
        }
        .style22
        {
            font-size: large;
            color: #0000CC;
            background-color: #FFCC00;
            text-align: left;
        }
    </style>
</head>
<body style="background-color: #CCCCCC">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center" width="90%">
            <tr>
                <td class="style2" style="text-align: center; background-color: #333333" 
                    colspan="2">
                    <strong>Online Voting System</strong></td>
            </tr>
            <tr>
                <td style="background-color: #FF0000" colspan="2">
                    <a><asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
                        NavigateUrl="~/vote.aspx">Vote</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style3" 
                        NavigateUrl="~/register vote.aspx">Registration</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style3" 
                        NavigateUrl="~/Verification.aspx">Verification</asp:HyperLink></a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="164px" ImageUrl="~/pix/sniit.JPG" 
                        Width="39%" />
                    <asp:Image ID="Image2" runat="server" Height="161px" ImageUrl="~/pix/vote.gif" 
                        Width="60%" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong><span class="style9">Fair voting</span></strong><br />
                    <span class="style5">Result may lead at best to confusion, at worst to violence 
                    and even civil war, in the cast of political rivals. Many alternatives may fall 
                    in the latitude of indifference-they are neither accepted nor rejected. Avoiding 
                    the choice that the mostpeople strong reject may sometimes be at least as 
                    important as choosing the one that the most favor.</span></td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    <strong>Candidates</strong></td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #FFCC00">
                    <asp:Image ID="Image3" runat="server" Height="356px" 
                        ImageUrl="~/passport/2009_09_19_23_31_14_568.jpg" Width="50%" />
                    <asp:Image ID="Image4" runat="server" Height="354px" 
                        ImageUrl="~/passport/m0rufat 001.png" Width="49%" />
                    <br />
                    <strong><span class="style12"><span class="style13">CANDIDATE A</span> </span>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style22">&nbsp;</span><span class="style21">CANDIDATE B</span></strong></td>
            </tr>
            <tr>
                <td style="background-color: #FFFFFF" width="50%">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RegistrationTDConnectionString %>" 
                        SelectCommand="SELECT [FirstName], [LastName], [OtheName], [Post] FROM [CandidateTD] ORDER BY [FirstName]">
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" 
                                Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:TextBox ID="OtheNameTextBox" runat="server" 
                                Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox0" runat="server" 
                                Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox0" runat="server" 
                                Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:TextBox ID="OtheNameTextBox0" runat="server" 
                                Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:TextBox ID="PostTextBox0" runat="server" Text='<%# Bind("Post") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            FirstName:
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:Label ID="OtheNameLabel" runat="server" Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:Label ID="PostLabel" runat="server" Text='<%# Bind("Post") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td style="background-color: #FFFFFF" width="50%">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RegistrationTDConnectionString %>" 
                        SelectCommand="SELECT [FirstName], [LastName], [OtheName], [Post] FROM [CandidateTD] WHERE ([Sn] = @Sn)">
                        <SelectParameters>
                            <asp:FormParameter DefaultValue="2" FormField="2" Name="Sn" Type="Byte" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" 
                                Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:TextBox ID="OtheNameTextBox" runat="server" 
                                Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:TextBox ID="PostTextBox" runat="server" Text='<%# Bind("Post") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox0" runat="server" 
                                Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox0" runat="server" 
                                Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:TextBox ID="OtheNameTextBox0" runat="server" 
                                Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:TextBox ID="PostTextBox0" runat="server" Text='<%# Bind("Post") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            FirstName:
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                            <br />
                            LastName:
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                            <br />
                            OtheName:
                            <asp:Label ID="OtheNameLabel" runat="server" Text='<%# Bind("OtheName") %>' />
                            <br />
                            Post:
                            <asp:Label ID="PostLabel" runat="server" Text='<%# Bind("Post") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td class="style14" colspan="2">
                    <strong>VOTE FOR YOUR UPCOMING HOD</strong></td>
            </tr>
            <tr>
                <td class="style18" colspan="2">
                    Enter Verification No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtverification" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Retrieve" />
&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Height="294px" Visible="False">
                        Enter Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        Enter first Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Phone No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15"><strong><span class="style17">Vote 
                        For Your Candidate</span><br />
                        <br />
                        </strong></span><span class="style16">Candidate&nbsp; Name</span><span 
                            class="style15"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="txtcandidate" runat="server">
                            <asp:ListItem>CHOOSE CANDIDATE</asp:ListItem>
                            <asp:ListItem>CANDIDATE A</asp:ListItem>
                            <asp:ListItem>CANDIDATE B</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Submit" />
                        </strong></span>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style11" colspan="2">
                    <marquee style="color: #FF0000"> Fill With Care</marquee></td>
            </tr>
            <tr>
                <td class="style11" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink9" runat="server" CssClass="style13">About</asp:HyperLink>
&nbsp; |
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style13">Privacy</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="style13">Teams</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink8" runat="server" CssClass="style13">Feedback</asp:HyperLink>
                    <br />
                    <span class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <span class="style20">2 016 TIDSOFT.com</span><br class="style20" />
                    <span class="style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All rigths reserved</span>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
