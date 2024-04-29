<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
 
    <div>
        <h2>FORECAST</h2>
        <div>
            <label>From:</label>
            <asp:TextBox ID="txtFrom" runat="server" oninput="this.value = this.value.toUpperCase();"></asp:TextBox>
        </div>
        <div>
            <label>Date:</label>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div>
            <label>Train Name:</label>
            <asp:TextBox ID="txtTrainName" oninput="this.value = this.value.toUpperCase();"  runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Loco:</label>
            <asp:TextBox ID="txtEngine" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Time:</label>
            <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
        </div>
        <div>
            <label>Unit:</label>
            <asp:TextBox ID="txtUnit" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        </div>
    </div>
    <hr />
    <div>
        <table id="dataTable" runat="server" class="table">
            <thead>
                <tr>
                    <th>SL No</th>
                    <th>From</th>
                    <th>Date</th>
                    <th>Train Name</th>
                    <th>Loco</th>
                    <th>Time</th>
                    <th>Unit</th>
                    <th>Ho Time</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="from" HeaderText="From" />
                <asp:BoundField DataField="date" HeaderText="Date" />
                <asp:BoundField DataField="train_name" HeaderText="Train Name" />
                <asp:BoundField DataField="engine" HeaderText="Engine" />
                <asp:BoundField DataField="time" HeaderText="Time" />
                <asp:BoundField DataField="unit" HeaderText="Unit" />
                <asp:BoundField />
                <asp:CommandField ButtonType="Button" HeaderText="Update" ShowEditButton="True" ShowHeader="False" />
                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="False" />
            </Columns>
                
                    
                
        </asp:GridView>

        







</asp:Content>
