﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register vote.aspx.vb" Inherits="register_vote" %>

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
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style9
        {
            text-align: left;
        }
        .style10
        {
            font-size: x-large;
            color: #FF9900;
        }
        .style4
        {
            font-size: large;
            color: #0000CC;
        }
        .style5
        {
            font-size: medium;
            font-family: sans-serif;
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
    
        <table align="center" class="style1">
            <tr>
                <td class="style2" colspan="2" 
                    style="text-align: center; background-color: #000000">
                    <strong>Online Voting System</strong></td>
            </tr>
            <tr>
                <td class="style9" width="30%">
                    <asp:Image ID="Image2" runat="server" Height="408px" ImageUrl="~/pix/vote.gif" 
                        Width="310px" />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="388px" ImageUrl="~/pix/pix.gif" 
                        Width="310px" />
                </td>
                <td width="60%">
                    <strong><span class="style10">STUDNET REGISTRATION</span></strong><br />
                    First Name&nbsp;
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
&nbsp;&nbsp;<div style="float: right; height: 181px; width: 98px;">
                        Passport<br />
                        <asp:Image ID="Image4" runat="server" Height="118px" Width="90px" />
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="87px" />
                    </div>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    Last Name&nbsp;
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Depatment&nbsp;
                    <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="txtgender" runat="server">
                        <asp:ListItem>Enter Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Date of birth<asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    State of origin
                    <asp:TextBox ID="txtorigin" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Matric No&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtmatric" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Level&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtlevel" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    HOD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txthod" runat="server"></asp:TextBox>
                    <br />
                    <br />
                   School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="txtschool" runat="server">
                        <asp:ListItem>Choose School</asp:ListItem>
                        <asp:ListItem>Technology</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Phone No.&nbsp;&nbsp;
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="color: #009933"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                    <br />
                    <br />
                    <strong><span class="style4">Voting</span></strong><br />
                    <span class="style5">Method for group such as a meeting or an electorate to make 
                    a decision or express as opinion.Voting is a method or an electorate to make a 
                    decision or express an opinion, usually following discussions, debates or 
                    Election campaingns.Democracies elect holders of high office by voting.</span></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; background-color: #CCCCCC">
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
