<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="PGTDIVISIONTRAFFIC.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <%--Profile image homepage--%>
    <section>
     <img src="imgs/v2.jpg" class="img-fluid"/>
     </section>
    <section>
        <%--First container--%>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>DAILY REPORTS</h2>
                        <p><b>Our primary feature</b></p>
                    </center>
                </div>
            </div>
            <%--Contents in first container--%>
            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px"src="imgs/train.png" />
                        <h4>Dy Trains</h4>
                        <p class="text-justify">Interchange Forecast for PGT divison.PGT Dvision have six interchange points.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="150px" height="50%"src="imgs/cover%20imag.jpg" />
                        <h4>Freight</h4>
                        <p class="text-justify">Daily updates of freight handing of PGT division is provided here</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="150px"src="imgs/train.png" />
                        <h4>Coaching</h4>
                        <p class="text-justify">Details regarding Coaching.</p>
                    </center>
                </div>
            </div>
        </div>
    
    </section>

    <section>
                <%--First container--%>
 <div class="container">
     <div class="row">
         <div class="col-12">
             <center>
                 <h2>OTHER REPORTS</h2>
                 <p><b>Our primary feature</b></p>
             </center>
         </div>
     </div>
     <%--Contents in second container--%>
     <div class="row">
         <div class="col-md-4">
             <center>
             <img width="150px"src="imgs/train.png" />
                 <h4>CONTROLL OFFICE</h4>
                 <p class="text-justify"></p>
             </center>
         </div>

         <div class="col-md-4">
             <center>
             <img width="150px" height="50%"src="imgs/cover%20imag.jpg" />
                 <h4>OPERATING BRANCH</h4>
                 <p class="text-justify"></p>
             </center>
         </div>

         <div class="col-md-4">
             <center>
             <img width="150px"src="imgs/train.png" />
                 <h4>SWR</h4>
                 <p class="text-justify">Station Working Rule.</p>
             </center>
         </div>
     </div>
 </div>
</section>


</asp:Content>
