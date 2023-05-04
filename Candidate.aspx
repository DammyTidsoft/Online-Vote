<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Candidate.aspx.vb" Inherits="Candidate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style9
        {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style10
        {
            font-size: x-large;
            color: #FFCC00;
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
        .style14
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style9" style="text-align: center; background-color: #666666">
                    <strong>Online Voting System</strong></td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Image ID="Image1" runat="server" Height="258px" ImageUrl="~/pix/sniit.JPG" 
                        Width="45%" />
                    <asp:Image ID="Image2" runat="server" Height="256px" ImageUrl="~/pix/voter.gif" 
                        Width="53%" />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <strong>Candidate Form</strong></td>
            </tr>
            <tr>
                <td>
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="float: right; width: 354px; height: 208px;">
                        Passport<br />
                        <br />
                        <asp:Image ID="Image3" runat="server" Height="117px" Width="164px" />
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                    <br />
                    <br />
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Other Name&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtother" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Residencial Address
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Phone No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Nationality&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtnationality" runat="server" ReadOnly="True">Nigeria</asp:TextBox>
                    <br />
                    <br />
                    Date Of Birth&nbsp;&nbsp;
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Post Being Contested For
                    <asp:DropDownList ID="txtpost" runat="server">
                        <asp:ListItem>Choose Post</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                        <asp:ListItem>SUG</asp:ListItem>
                        <asp:ListItem>HOE</asp:ListItem>
                        <asp:ListItem>CLASS REP</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="color: #009933"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="OK" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                   <marquee style="color: #FF0000"> Fill With Care</marquee></td>
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
                    <span class="style14">2016 TIDSOFT.com</span><br class="style14" />
                    <span class="style14">All rigths reserved</span></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
