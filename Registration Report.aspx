<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration Report.aspx.vb" Inherits="Registration_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style3
        {
            color: #FFFFFF;
            font-size: xx-large;
            text-align: left;
        }
        .style4
        {
            height: 37px;
            color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td style="text-align: center; background-color: #000000">
                    <strong><span class="style3">Online Voting System</span></strong></td>
            </tr>
            <tr>
                <td class="style4" style="font-size: x-large; background-color: #FF3300">
                    <strong>Registered Student</strong></td>
            </tr>
            <tr>
                <td>
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                        Font-Size="8pt" Height="612px" InteractiveDeviceInfos="(Collection)" 
                        style="margin-right: 97px" WaitMessageFont-Names="Verdana" 
                        WaitMessageFont-Size="14pt" Width="1477px">
                        <LocalReport ReportPath="Report1.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        SelectMethod="GetData" 
                        TypeName="RegistrationTDDataSetTableAdapters.RegisterTDTableAdapter">
                    </asp:ObjectDataSource>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
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
