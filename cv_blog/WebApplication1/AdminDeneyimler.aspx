<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminDeneyimler.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
    <table class="table table-bordered">
       
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <td>ALT BAŞLIK</td>
            <th>AÇIKLAMA</th>
            <th>TARİH</th>
            <th>İŞLEMLER</th>

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <tr>
                        <td><%# Eval("ID") %>  </td>
                        <td><%# Eval("BASLIK") %>  </td>
                        <td><%# Eval("ALTBASLIK") %> </td>
                        <td><%# Eval("ACIKLAMA") %> </td>
                        <td><%# Eval("TARIH") %> </td>
                    <td>
                  <asp:HyperLink NavigateUrl='<%# "AdminDeneyimSil.aspx?ID=" + Eval("ID")  %>' ID="HyperLink1" runat="server" cssClass="btn btn-danger" >Sil</asp:HyperLink>
              <%--<asp:HyperLink NavigateUrl='<%# "AdminDeneyimGüncelle.aspx" + Eval("ID")  %>'  ID="HyperLink2" runat="server" cssClass="btn btn-warning" >Güncelle</asp:HyperLink>--%>
                  <asp:HyperLink NavigateUrl='<%# "AdminDeneyimGüncelle.aspx?ID=" + Eval("ID") %>'     ID="HyperLink4"     runat="server"     CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                    </td>
                </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
       
    </table>
    <asp:HyperLink NavigateUrl="~/AdminDeneyimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Deneyim Ekle</asp:HyperLink>
  </form>
</asp:Content>
