<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.Userlogin" %>
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
                                <h4>MEMBER LOGIN</h4>
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
                                <label>Members ID</label>
                            <div class="form-group">
                                <asp:textbox Cssclass="form-control" ID="TextBox1" runat="server" placeholder="Members ID" ></asp:textbox>
                            </div>

                                <label>Password</label>
                            <div class="form-group">
                                <asp:textbox Cssclass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" ></asp:textbox>
                            </div>

                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" id="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                            </div>
                            <div class="form-group">
                                <a href="usersignup.aspx">
                                    <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Signup" />
                                </a>
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
