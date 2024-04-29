<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.adminauthormanagement" %>

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
                                    <img width="100px" src="imgs/users.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" textbox ID="textbox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" />
                                    </div>
                                </div>
                                <hr>
                            </div>

                            <div class="col-md-8">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" textbox ID="textbox1" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Update" />
                                    </div>
                                </center>
                            </div>
                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-warning btn-lg" ID="Button2" runat="server" Text="Add" />
                                    </div>
                                </center>
                            </div>

                            <div class="col-4">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-danger btn-lg" ID="Button3" runat="server" Text="Delete" />
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
