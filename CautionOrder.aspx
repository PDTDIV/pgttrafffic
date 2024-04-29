<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CautionOrder.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.Caution_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





<head runat="server">
    <title>Speed Data Entry</title>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
</head>
<body>
    <form id="speedForm" runat="server">
        <h1>Speed Data Entry</h1>
        <!-- Form for data entry -->
        <div>
            <asp:TextBox ID="textboxDate" runat="server" TextMode="Date" required></asp:TextBox>
            <asp:TextBox ID="textbox1" runat="server" TextMode="Number" required></asp:TextBox>
            <asp:TextBox ID="textbox2" runat="server" TextMode="Number" required></asp:TextBox>
            <asp:TextBox ID="textbox3" runat="server" TextMode="Number" required></asp:TextBox>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
        <!-- Chart -->
        <div id="chart"></div>
    </form>
    <script>
        // JavaScript code for the chart goes here
        // ...
    </script>
</body>





</asp:Content>
