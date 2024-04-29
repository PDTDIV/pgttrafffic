<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventry.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.adminbookinventry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <br>
            <br>
            <br>

            <div class="card">
                <div class="card-body">




                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/Book%20PNG%20-%20Free%20Download.jpeg" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Book List</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Full Name</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control"  ID="textbox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Account status</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="textbox1" runat="server" placeholder="Account Status" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>S1</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="textbox7" runat="server" placeholder="S1" ReadOnly="false"></asp:TextBox>
                            </div>

                            <label>D2</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="textbox8" runat="server" placeholder="D2" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label>D3</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="textbox9" runat="server" placeholder="D3" ReadOnly="True"></asp:TextBox>
                            </div>

                            <label>S3</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="textbox10" runat="server" placeholder="S3" ReadOnly="True"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <label>Genre</label>
                            <div class="form-group">
                                <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" Rows="5">
                                    <asp:ListItem Text="Local" Value="Local" />
                                    <asp:ListItem Text="Local" Value="Local" />
                                    <asp:ListItem Text="Local" Value="Local" />
                                    <asp:ListItem Text="Local" Value="Local" />
                                    <asp:ListItem Text="Local" Value="Local" />
                                </asp:ListBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Book Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" textboxID="textbox2" runat="server" placeholder="book name" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Date</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" textboxID="textbox4" runat="server" placeholder="date" TextMode="SingleLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Start Date</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" textboxID="textbox5" runat="server" placeholder="Start date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>End Date</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" textboxID="textbox6" runat="server" placeholder="End date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-6">
                            <center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Issue" />
                                </div>
                            </center>
                        </div>

                        <div class="col-6">
                            <center>
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-lg" ID="Button3" runat="server" Text="Return" />
                                </div>
                            </center>
                        </div>
                    </div>

                </div>

            </div>
            <br>
            <br>
        </div>

        <div class="col-md-6">
            <br>
            <br>
            <br>

            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/users.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Auther Details</h4>


                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-striped table bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>



                </div>
                <br>
                <br>
            </div>
        </div>
    </div>
</div>
</asp:Content>
