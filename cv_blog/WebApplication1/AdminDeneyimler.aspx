<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminDeneyimler.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered">
       
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <td>ALT BAŞLIK</td>
            <th>AÇIKLAMA</th>
            <th>TARİH</th>

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
                </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
       
    </table>

</asp:Content>
