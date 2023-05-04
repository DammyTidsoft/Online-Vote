<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 490px;
        }
        .style2
        {
            font-family: sans-serif;
            font-size: xx-large;
        }
        .style3
        {
            font-size: large;
            color: #FFFF00;
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
        .style6
        {
            color: #FFFFFF;
        }
        .style7
        {
            height: 65px;
            }
        .style8
        {
            color: #FFCC00;
        }
        a
        {
            text-decoration:none;
        }
        a:hover
        {
            color:Navy;
            font-size:large;
            display:inline;
        }
        #form1
        {
            height: 1010px;
        }
        .style9
        {
            font-size: large;
            font-family: sans-serif;
            color: #0000CC;
        }
        .style10
        {
            height: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style7" colspan="2" style="background-color: #333333">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style2"><span class="style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Voting System</strong></span>&nbsp;</span></td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #FF3300">
                    <a>
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
                        NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
                    </strong><span class="style8"><strong>&nbsp;&nbsp;&nbsp; </strong></span>
                    <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style3" 
                        NavigateUrl="~/Admin.aspx">Admin</asp:HyperLink>
                    </strong><span class="style8"><strong>&nbsp;&nbsp;&nbsp; </strong></span>
                    <strong>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style3" 
                        NavigateUrl="~/vote.aspx">Vote</asp:HyperLink>
                    </strong><span class="style8"><strong>&nbsp;&nbsp; </strong></span>
                        </a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong><span class="style4">Voting</span></strong><br />
                    <span class="style5">Method for group such as a meeting or an electorate to make 
                    a decision or express as opinion.Voting is a method or an electorate to make a 
                    decision or express an opinion, usually following discussions, debates or 
                    Election campaingns.Democracies elect holders of high office by voting.</span></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="291px" ImageUrl="~/pix/pix.gif" 
                        Width="102%" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="291px" 
                        ImageUrl="~/pix/images_3.jpeg" 
                        Width="101%" />
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    In a democracy, a government is choosen by voting in an election : a way foe an 
                    electorateto elect, i.e choose, among several candidates forrule.In a 
                    representative democracy voting in the method by which the electorate appoints 
                    its representative in its government. In a direct Democracy, voting is the 
                    method bu which the electorate directly make decisions, turnbills into laws, 
                    etc.</td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    <strong><span class="style9">Fair voting</span></strong><br />
                    <span class="style5">Result may lead at best to confusion, at worst to violence 
                    and even civil war, in the cast of political rivals. Many alternatives may fall 
                    in the latitude of indifference-they are neither accepted nor rejected. Avoiding 
                    the choice that the mostpeople strong reject may sometimes be at least as 
                    important as choosing the one that the most favor.</span></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="224px" ImageUrl="~/pix/vote.gif" 
                        Width="343px" />
                </td>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="218px" 
                        ImageUrl="~/pix/480513601.jpg" Width="299px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                  <marquee>  Every vote Count...................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Vote Today..........</marquee></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; background-color: #666666">
                    <asp:HyperLink ID="HyperLink5" runat="server">About</asp:HyperLink>
&nbsp; |
                    <asp:HyperLink ID="HyperLink6" runat="server">Privacy</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink7" runat="server">Teams</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink8" runat="server">Feedback</asp:HyperLink>
                    <br />
                    2016 TIDSOFT.com<br />
                    All rigths reserved.</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
