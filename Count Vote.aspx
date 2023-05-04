<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Count Vote.aspx.vb" Inherits="Count_Vote" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
            background-color: #CCCCCC;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style4
        {
            font-size: x-large;
            color: #0000CC;
            background-color: #FF3300;
        }
        a
        {
            text-decoration:none;
        }
        a:hover
        {
            font-family:Sans-Serif;
            color:Navy;
            font-size:large;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2" style="text-align: center; background-color: #000000">
                    <strong><span class="style3">Online Voting System</span></strong></td>
            </tr>
            <tr>
                <td class="style4"><a>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Count Vote.aspx" 
                        style="font-size: large; color: #FFFF00; font-weight: 700;">CANDIDATE A</asp:HyperLink>
&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Count b.aspx" 
                        style="font-size: large; color: #FFFF00; font-weight: 700;">CANDIDATE B</asp:HyperLink></a>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                SortExpression="LastName" />
                            <asp:BoundField DataField="VerificationNo" HeaderText="VerificationNo" 
                                SortExpression="VerificationNo" />
                            <asp:BoundField DataField="Candidate" HeaderText="Candidate" 
                                SortExpression="Candidate" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RegistrationTDConnectionString1 %>" 
                        SelectCommand="SELECT [FirstName], [LastName], [VerificationNo], [Candidate] FROM [VoteTD] WHERE ([Candidate] = @Candidate)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="candidate a" Name="Candidate" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <marquee style="color: #FF0000">YOUR VOTE COUNT VOTE TODAY!!!!!!!!!</marquee></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
