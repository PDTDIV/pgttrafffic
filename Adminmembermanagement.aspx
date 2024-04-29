<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminmembermanagement.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.Adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <br><br><br>
            
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
                               <h4>Book List</h4>                                 
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:textbox Cssclass="form-control" textbox id="textbox3" runat="server" placeholder="Full Name"></asp:textbox>
                                            <asp:Button class="btn btn-primary" id="Button4" runat="server" Text="Go"/>    
                                    </div>
                                </div>
                            <hr>
                        </div>
                                        
                        <div class="col-md-6">
                                    <label>Account status</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                           

                                        <asp:textbox Cssclass="form-control" textbox id="textbox1" runat="server" placeholder="book id" TextMode="SingleLine"></asp:textbox>
                                            <asp:LinkButton class="btn btn-primary mr-1"  ID="LinkButton1" runat="server"><i class="fa-solid fa-check"></i></asp:LinkButton>        
                                            <asp:LinkButton class="btn btn-success mr-1"  ID="LinkButton3" runat="server"><i class="fa-solid fa-xmark"></i></asp:LinkButton>
                                            <asp:LinkButton class="btn btn-danger mr-1"  ID="LinkButton2" runat="server"><i class="fa-solid fa-pen"></i></asp:LinkButton>
                                        </div>
                                        
                                        </div>
                                      <hr>
                            </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:textbox Cssclass="form-control" textbox id="textbox2" runat="server" placeholder="book name" ReadOnly="True"></asp:textbox>
                                </div>
                        </div>
                    
                        <div class="col-md-6">
                                    <label>Date</label>
                                    <div class="form-group">
                                        <asp:textbox Cssclass="form-control" textbox id="textbox4" runat="server" placeholder="date" TextMode="SingleLine"></asp:textbox>
                                    </div>    
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:textbox Cssclass="form-control" textbox id="textbox5" runat="server" placeholder="Start date" TextMode="Date"></asp:textbox>
                                </div>
                        </div>

                        <div class="col-md-6">
                                    <label>End Date</label>
                                    <div class="form-group">
                                        <asp:textbox Cssclass="form-control" textbox id="textbox6" runat="server" placeholder="End date" TextMode="Date"></asp:textbox>
                                    </div>    
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-6">
                            <center>
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-lg" id="Button1" runat="server" Text="Issue"/>
                            </div>
                            </center>
                        </div>
                                            
                        <div class="col-6">
                            <center>
                            <div class="form-group">
                                <asp:Button class="btn btn-danger btn-lg" id="Button3" runat="server" Text="Return"/>
                            </div>
                            </center>
                        </div>
                    </div>
                    
                </div>
                          
            </div>
            <br><br>
        </div>

            <div class="col-md-6">
            <br><br><br>
            
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
            <br><br>
        </div>
    </div>
</div>
</div>

</asp:Content>
