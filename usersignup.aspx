<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
     <div class="row">
         <div class="col-md-6 mx-auto">
             <br>
             

             <div class="card">
                 <div class="card-body">

                     <div class="row">
                         <div class="col">
                             <center>
                                 <img width="80px" src="imgs/users.png" />
                             </center>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col">
                             <center>
                                 <h4>Member singup</h4>
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
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"  placeholder="Full Name"></asp:TextBox>
                             </div>
                             <hr>
                         </div>

                         <div class="col-md-6">
                             <label>Date of Birth</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                             </div>
                             <hr>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col-md-6">
                             <label>Email</label>
                             <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  placeholder="Email" TextMode="Email"></asp:TextBox>
                             </div>
                         </div>


                         <div class="col-md-6">
                             <label>Designation</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Designation"></asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col-md-4">
                             <label>Station</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Station" TextMode="SingleLine"></asp:TextBox>
                             </div>
                         </div>

                         <div class="col-md-4">
                             <label>Department</label>
                             <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Text="Select" Value="Select" />
                                     <asp:ListItem Text="SM" Value="SM" />
                                     <asp:ListItem Text="PMAN" Value="PMAN" />
                                     <asp:ListItem Text="TNC" Value="TNC" />
                                 </asp:DropDownList>
                             </div>
                         </div>

                         
                         <div class="col-md-4">
                             <label>Office</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Office"></asp:TextBox>
                             </div>
                         </div>

                     </div>

                     <div class="row">
                         <div class="col">
                             <center>
                                 <span class="badge badge-pill badge-primary">Login Credential</span>
                             </center>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col-md-6">
                             <label>User ID</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="User ID" TextMode="SingleLine"></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-6">
                             <label>Password</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="form-group">
                         <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                     </div>

                 </div>
             </div>
             <a href="homepage.aspx"><b><< Back to Home</b></a>
         </div>
         
     </div>
     <br>
     <br>
 </div>


</asp:Content>
