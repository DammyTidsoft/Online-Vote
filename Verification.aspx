<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Verification.aspx.vb" Inherits="Verification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 590px;
        }
        .style7
        {
            font-family: sans-serif;
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #666666;
        }
        .style8
        {
            font-size: x-large;
            color: #FF9933;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            font-size: large;
            color: #000000;
        }
        .style11
        {
            color: #000000;
        }
        .style13
        {
            color: #FFFF00;
            font-weight: bold;
        }
        a
        {
            text-decoration:none;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center" width="80%">
            <tr>
                <td class="style7">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Voting System</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image5" runat="server" Height="187px" 
                        ImageUrl="~/pix/images_3.jpeg" Width="45%" />
                    <asp:Image ID="Image6" runat="server" Height="185px" ImageUrl="~/pix/vote.gif" 
                        Width="54%" />
                </td>
            </tr>
            <tr>
                <td>
                    <span class="style8"><strong style="font-size: medium">VERIFICATION<br />
                    <br />
                    </strong></span><span class="style10">Enter First Name</span><span 
                        class="style8"><strong style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    </strong></span><span class="style9"><span class="style11">Enter Last Name</span><span 
                        class="style8"> </span></span><span class="style8">
                    <strong style="font-size: medium">&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    </strong></span><strong>
                    <br />
                    <br />
                    </strong><span class="style9">Phone No</span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style8"><strong style="font-size: medium">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </strong></span>
                    <br class="style8" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label3" runat="server" style="color: #FF0000"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:Button ID="Button1" runat="server" Text="Ok" />
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Height="316px" Visible="False">
                        <br />
                        <span class="style9">Depatment</span>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div style="float: right; height: 181px; width: 263px;">
                            <span class="style9">Passport</span><br />
                            <asp:Image ID="Image4" runat="server" Height="118px" Width="90px" />
                            <br />
                            <br />
                        </div>
                        <br />
                        <br />
                        <span class="style9">Gender</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="txtgender" runat="server">
                            <asp:ListItem>Enter Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <span class="style9">Date of birth</span>
                        <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <span class="style9">Matric No</span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="txtmatric" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        Your Verificatione Code is :
                        <asp:Label ID="txtverification" runat="server" style="font-weight: 700"></asp:Label>
                        <br />
                        <marquee style="color: #FF0000">Keep Your Verification code Very well</marquee><br /> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="button2" runat="server" Text="Save" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" style="color: #009933"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; background-color: #666666">
                    <asp:HyperLink ID="HyperLink9" runat="server" CssClass="style13">About</asp:HyperLink>
&nbsp; |
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style13">Privacy</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="style13">Teams</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink8" runat="server" CssClass="style13">Feedback</asp:HyperLink>
                    <br />
                    2016 TIDSOFT.com<br />
                    All rigths reserved</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
