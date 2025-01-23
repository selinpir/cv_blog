<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cv_blog_home.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My CV Blog</title>

    <!-- Bootstrap core CSS -->
    <link href="dosyalar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="dosyalar/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dosyalar/css/resume.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">zoonpolitikion</span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="dosyalar/img/profile.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#education">Education</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#cerifications">Certifications</a>
          </li>
        </ul>
      </div>
    </nav>

<%--about--%>
    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <div class="my-auto">
          <h1 class="mb-0"> 
              <asp:Label ID="Label1" runat="server" Text='<%#Eval("AD")%>'></asp:Label>
            <span class="text-primary"> <asp:Label ID="Label2" runat="server" Text='<%#Eval("SOYAD")%>'></asp:Label> </span>
          </h1>
          <div class="subheading mb-5">
   &bull;  <asp:Label ID="Label3" runat="server" Text='<%#Eval("ADRES")%>'></asp:Label>
        <p></p>
   &bull;  <asp:Label ID="Label4" runat="server" Text='<%#Eval("TELEFON")%>'></asp:Label>
        
   &bull;  <a href="mailto:name@email.com"> <asp:Label ID="Label5" runat="server" Text='<%#Eval("MAIL")%>'></asp:Label></a>
          </div>
          <p class="lead mb-5">
        <asp:Label ID="Label6" runat="server" Text='<%#Eval("ACIKLAMA")%>'></asp:Label> </p>
          <div class="social-icons">
            <a href="#">
              <i class="fab fa-linkedin-in"></i>
            </a>
            <a href="#">
              <i class="fab fa-github"></i>
            </a>
            <a href="#">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#">
              <i class="fab fa-facebook-f"></i>
            </a>
          </div>
        </div>
      </ItemTemplate>
     </asp:Repeater>
   </section>

<%--  --%>   

<%--experience--%>
           <hr class="m-0">
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
          <h2 class="mb-5">Experience</h2>
           <asp:Repeater ID="Repeater2" runat="server">
           <ItemTemplate>
        <div class="my-auto">
           <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">
            <asp:Label ID="Label7" runat="server" Text='<%#Eval("BASLIK")%>'></asp:Label></h3>
              <div class="subheading mb-3">
                <asp:Label ID="Label8" runat="server" Text='<%#Eval("ALTBASLIK")%>'></asp:Label></div>
              <p>
                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("ACIKLAMA")%>'></asp:Label></p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">
                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("TARIH")%>'></asp:Label></span>
            </div>
          </div>             
        </div>
      </ItemTemplate>
  </asp:Repeater>
      </section>
<%--  --%>
      
<%--education--%>
     <hr class="m-0">
        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
        <h2 class="mb-5">Education</h2>
        <div class="my-auto">        
            <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
          <div class="resume-item d-flex flex-column flex-md-row mb-5">
            <div class="resume-content mr-auto">
              <h3 class="mb-0">
                  <asp:Label ID="Label11" runat="server" Text='<%#Eval("BASLIK")%>'></asp:Label></h3>
              <div class="subheading mb-3">
                  <asp:Label ID="Label12" runat="server" Text='<%#Eval("ALTBASLIK")%>'></asp:Label></div>
              <div>
                  <asp:Label ID="Label13" runat="server" Text='<%#Eval("ACIKLAMA")%>'></asp:Label></div>
              <p>
                  <asp:Label ID="Label14" runat="server" Text='<%#Eval("GNO")%>'></asp:Label></p>
            </div>
            <div class="resume-date text-md-right">
              <span class="text-primary">
                  <asp:Label ID="Label15" runat="server" Text='<%#Eval("TARİH")%>'></asp:Label></span>
           </div>
          </div>
         </ItemTemplate>
        </asp:Repeater>
       </div>
      </section>
<%--  --%>

<%--skills--%>
      <hr class="m-0">
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
        <div class="my-auto">
          <h2 class="mb-5">Skills</h2>

               <ul class="list-inline dev-icons" style="font-size: 1.5rem; margin: 0; padding: 0;">
               <li class="list-inline-item" style="font-size: 0.85rem; margin: 0.4rem;">  
               <li class="list-inline-item">  <i class="fas fa-code"></i> Programming Languages &amp; Tools  <i class="fas fa-code"></i>  </li>  <p></p>
              
               <li class="list-inline-item">  <i class="fas fa-code"></i> C#   </li>  <p></p>
               <li class="list-inline-item">  <i class="fas fa-code"></i> C   </li>  <p></p>
               <li class="list-inline-item">  <i class="fas fa-database"></i> SQL (MySQL)   </li>  <p></p>
               <li class="list-inline-item">  <i class="fab fa-css3-alt"></i> CSS   </li>  <p></p>
               <li class="list-inline-item">  <i class="fab fa-html5"></i> HTML5   </li>  <p></p>
               <li class="list-inline-item">  <i class="fas fa-table"></i> VBA   </li>  <p></p>
               <li class="list-inline-item">  <i class="fas fa-file-alt"></i> Microsoft Office   </li>  <p></p>
               <li class="list-inline-item">  <i class="fab fa-wordpress"></i> WordPress   </li>  <p></p>
               </ul>

        </div>
      </section>
<%--  --%>

<%--interests--%>
      <hr class="m-0">
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
        <div class="my-auto">
         <asp:Repeater ID="Repeater5" runat="server">
            <ItemTemplate>
          <h2 class="mb-5">Interests</h2>
          <p><asp:Label ID="Label16" runat="server" Text='<%#Eval("hobi")%>'></asp:Label></p>
           <p class="mb-0"> <a href="https://selinpir.github.io/leda-analog/" target="_blank">The site I developed with my analog photos.</a></p>
           <p class="mb-0"> <a href="https://letterboxd.com/selinpir/" target="_blank">My letterboxd account if you want to talk about movies or browse my favorites.</a></p>
        </div>
        </ItemTemplate>
        </asp:Repeater>
      </section>
<%--  --%>

<%--cerifications--%>
      <hr class="m-0">
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="cerifications">
       <h2 class="mb-5">Certifications</h2>
       <asp:Repeater ID="Repeater4" runat="server">
        <ItemTemplate>
        <div class="my-auto">
  
          <ul class="fa-ul mb-0">
            <li>
              <i class="fa-li fa fa-certificate text-warning"></i>
              <asp:Label ID="Label17" runat="server" Text='<% #Eval("setifika") %>'></asp:Label></li>           
          </ul>
        </div>
       </ItemTemplate>
      </asp:Repeater>
     </section>
    </div>
<%--  --%>
    <!-- Bootstrap core JavaScript -->
    <script src="dosyalar/vendor/jquery/jquery.min.js"></script>
    <script src="dosyalar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="dosyalar/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="dosyalar/js/resume.min.js"></script>

  </body>

</html>
