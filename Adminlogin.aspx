<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
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
                                <h4>ADMIN LOGIN</h4>
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
                                
                            <div class="form-group">
                                <asp:textbox Cssclass="form-control"  id="textbox1" runat="server" placeholder="Admin ID"></asp:textbox>
                            </div>

                                
                            <div class="form-group">
                                <asp:textbox Cssclass="form-control"  id="textbox2" runat="server" placeholder="Password" TextMode="Password"></asp:textbox>
                            </div>

                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" id="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                            </div>
                           

                        </div>
                    </div>
                </div>
                    <a href="homepage.aspx"><b><< Back to Home</b></a>

            </div>
            <br><br>
        </div>

    </div>
</div>

</asp:Content>
