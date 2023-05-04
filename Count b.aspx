<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Count b.aspx.vb" Inherits="Count_b" %>

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
        .style3
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .style4
        {
            color: #0000CC;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td style="text-align: center; background-color: #000000">
                    <strong><span class="style3">Online Voting System</span></strong></td>
            </tr>
            <tr>
                <td class="style4" style="font-size: large; background-color: #FF3300">
                    <strong>CANDIDATE B&nbsp;&nbsp;&nbsp;&nbsp; VOTE</strong></td>
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
                            <asp:Parameter DefaultValue="CANDIDATE B" Name="Candidate" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <marquee style="color: #FF0000">YOUR VOTE COUNT VOTE TODAY!!!!!!!!!!!!!</marquee></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
