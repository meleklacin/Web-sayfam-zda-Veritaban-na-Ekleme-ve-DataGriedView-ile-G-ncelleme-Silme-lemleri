<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="CRMDeneme.Musteriler" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="tasarim.css" rel="stylesheet" />
    
  <h2>MÜŞTERİLER</h2> 
   <div>
       <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MusteriNo" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="937px">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="MusteriNo" HeaderText="MusteriNo" ReadOnly="True" SortExpression="MusteriNo" />
                 <asp:BoundField DataField="MusteriAdı" HeaderText="MusteriAdı" SortExpression="MusteriAdı" />
                 <asp:BoundField DataField="FirmaSahibiAdı" HeaderText="FirmaSahibiAdı" SortExpression="FirmaSahibiAdı" />
                 <asp:BoundField DataField="FirmaTelefon" HeaderText="FirmaTelefon" SortExpression="FirmaTelefon" />
                 <asp:BoundField DataField="Ürün" HeaderText="Ürün" SortExpression="Ürün" />
                 <asp:BoundField DataField="Pasaport" HeaderText="Pasaport" SortExpression="Pasaport" />
             </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         </asp:GridView>
       //Silme ve Güncelleme islemleri
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString4 %>" DeleteCommand="DELETE FROM [musteriler] WHERE [MusteriNo] = @MusteriNo" InsertCommand="INSERT INTO [musteriler] ([MusteriAdı], [FirmaSahibiAdı], [FirmaTelefon], [Ürün], [Pasaport]) VALUES (@MusteriAdı, @FirmaSahibiAdı, @FirmaTelefon, @Ürün, @Pasaport)" ProviderName="<%$ ConnectionStrings:loginConnectionString4.ProviderName %>" SelectCommand="SELECT [MusteriNo], [MusteriAdı], [FirmaSahibiAdı], [FirmaTelefon], [Ürün], [Pasaport] FROM [musteriler]" UpdateCommand="UPDATE [musteriler] SET [MusteriAdı] = @MusteriAdı, [FirmaSahibiAdı] = @FirmaSahibiAdı, [FirmaTelefon] = @FirmaTelefon, [Ürün] = @Ürün, [Pasaport] = @Pasaport WHERE [MusteriNo] = @MusteriNo">
             <DeleteParameters>
                 <asp:Parameter Name="MusteriNo" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="MusteriAdı" Type="String" />
                 <asp:Parameter Name="FirmaSahibiAdı" Type="String" />
                 <asp:Parameter Name="FirmaTelefon" Type="String" />
                 <asp:Parameter Name="Ürün" Type="String" />
                 <asp:Parameter Name="Pasaport" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="MusteriAdı" Type="String" />
                 <asp:Parameter Name="FirmaSahibiAdı" Type="String" />
                 <asp:Parameter Name="FirmaTelefon" Type="String" />
                 <asp:Parameter Name="Ürün" Type="String" />
                 <asp:Parameter Name="Pasaport" Type="String" />
                 <asp:Parameter Name="MusteriNo" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
       <br />
       <asp:Button ID="Button3" runat="server" Text="Ekle" OnClick="Button3_Click" Height="51px" Width="103px"  />
       <br />
       <br />
        &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       <div class="gizle" id="div" runat="server"> 
           Müşteri Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           <asp:TextBox ID="TextBox1" runat="server">

           </asp:TextBox> <br /> <br /><br />
           Firma Sahibi Adı:<asp:TextBox ID="TextBox2" runat="server">

           </asp:TextBox><br /><br /> 
           Firma Telefon:&nbsp;&nbsp; 
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br /> <br /> <br />Ürün:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br /><br /> Pasaport&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> <br /> <asp:Button ID="Button4" runat="server" Text="Ekle" OnClick="Button4_Click"  />
           <br /> <br /> 
        </div> <br /><div /><br /><br /><br /><br />
           <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> 
    </div>

   

   </div>

   

   </asp:Content>


