<%@ Page Language="C#"  MasterPageFile="~/admin.Master"  AutoEventWireup="true" CodeBehind="AdminEgitimler.aspx.cs" Inherits="WebApplication1.AdminEgitimler" %>
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
          <th>GNO</th>
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
                      <td><%# Eval("GNO") %></td>
                      <td><%# Eval("TARİH") %> </td>                      
                  <td>
                <asp:HyperLink NavigateUrl='<%# "AdminEgitimSil.aspx?ID=" + Eval("ID")  %>' ID="HyperLink1" runat="server" cssClass="btn btn-danger" >Sil</asp:HyperLink>
                <asp:HyperLink NavigateUrl='<%# "AdminEgitimGüncelle.aspx?ID=" + Eval("ID") %>'     ID="HyperLink4"     runat="server"     CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                  </td>
              </tr>
              </ItemTemplate>
          </asp:Repeater>
      </tbody>
     
  </table>
  <asp:HyperLink NavigateUrl="~/AdminEgitimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Eğitim Ekle</asp:HyperLink>
</form>

    </asp:Content>
