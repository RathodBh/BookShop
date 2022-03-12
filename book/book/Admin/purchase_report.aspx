<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_menu.Master" AutoEventWireup="true" CodeBehind="purchase_report.aspx.cs" Inherits="book.Admin.WebForm10" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Admin\Report3.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource18" Name="DataSet3" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource18" runat="server" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="book.libraryDataSet4TableAdapters.purchase_mstTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="isbn" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="dt" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
