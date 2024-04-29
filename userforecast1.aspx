<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userforecast1.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.userforecast1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>





    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <br>
            <br>
            
            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>FROM FORECAST</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row ">
                        <div class="col-md-4">
                            <label>From</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="From" ></asp:TextBox>
                                    
                                </div>
                            </div>
                            <hr>
                        </div>

                        <div class="col-md-4">
                            <label>Date</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox1" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                            </div>
                            <hr>
                        </div>
                    </div>


                    <div class="row no-gutters">
                        <div class="col-md-5">
                            <label>Train Name</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="Train Name"></asp:TextBox>
                               </div>
                            </div>

                        </div>

                        <div class="col-md-3">
                            <label>Engine</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="ENGINE"></asp:TextBox>
                            </div>
                        </div>

                            <div class="col-md-2">
                                <label>Time</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control"  ID="TextBox5" runat="server" placeholder="Time" TextMode="Time"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <label>Unit</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Unit" TextMode="Number"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-success" ID="Button4" runat="server" Text="ADD" OnClick="Button4_Click"/>
                                    </div>
                                </div>
                            </div>
                        <br>
                        
                        
                            
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="100%" BorderColor="Black" BorderStyle="Solid">
                                    <Columns>
                                        <asp:BoundField DataField="train_Name" HeaderText="Train Name" />
                                        <asp:BoundField DataField="engine" HeaderText="Engine" />
                                        <asp:BoundField DataField="time" HeaderText="Time" />
                                        <asp:BoundField DataField="unit" HeaderText="Unit" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Edit" />
                                        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                                    </Columns>
                                </asp:GridView>
                            


                        <br>

                        <div class="row">
                            <div class="col">
                                
                            </div>
                        </div>

                    </div>
                    </div>
                </div>

            </div>
        <br>
        <div class="col-md-6">
    <br>
    <br>
    
    <div class="card">
        <div class="card-body">

            <div class="row">
                <div class="col">
                    <center>
                        <h4>TO FORECAST</h4>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <label>To</label>
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control"  ID="TextBox7" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="To"></asp:TextBox>
                            
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="col-md-4">
                    <label>Date</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox8" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                    </div>
                    <hr>
                </div>
            </div>


            <div class="row no-gutters">
                <div class="col-md-5">
                    <label>Train Name</label>
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control"  ID="TextBox9" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="Train Name"></asp:TextBox>
                       </div>
                    </div>

                </div>

                <div class="col-md-3">
                    <label>Engine</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control"  ID="TextBox10" runat="server" oninput="this.value = this.value.toUpperCase();" placeholder="Engine"></asp:TextBox>
                    </div>
                </div>

                    <div class="col-md-2">
                        <label>Time</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox11" runat="server" placeholder="Time " TextMode="Time"></asp:TextBox>
                           </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <label>Unit</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox12" runat="server" placeholder="Unit"></asp:TextBox>
                                <asp:Button class="btn btn-warning" ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
                           </div>
                        </div>
                    </div>
                <br>
                <br>

                <div class="col">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                    
                                    <Columns>
                                        <asp:BoundField DataField="train_name" HeaderText="Train Name" SortExpression="train_name" />
                                        <asp:BoundField DataField="engine" HeaderText="Engine" SortExpression="engine" />
                                        <asp:BoundField DataField="unit" HeaderText="Unit" SortExpression="unit" />
                                        <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

            </div>
            </div>
        </div>

    </div>    
        <br>
        


    </div>

    

    <br>
</asp:Content>
