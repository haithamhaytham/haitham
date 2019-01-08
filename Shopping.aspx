
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="homework.Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <link href="Content/css/shopping.css" rel="stylesheet" />
    
   <div class="col-md-12"> 
        
    <asp:Table ID="Table1" runat="server" Width="70%"  CssClass="table-bordered table-hover table-responsive" Font-Size="Large"  Height="550px">
        
        <asp:TableHeaderRow HorizontalAlign="Center">
            <asp:TableHeaderCell >
                اسم المنتج
            </asp:TableHeaderCell>
             <asp:TableHeaderCell>
                 السعر
            </asp:TableHeaderCell>
             <asp:TableHeaderCell>
                 الصورة
            </asp:TableHeaderCell>
             <asp:TableHeaderCell >
                 الكمية
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow  HorizontalAlign="Center">
            <asp:TableCell >
                خلاط
            </asp:TableCell>
             <asp:TableCell>
                 1500
            </asp:TableCell>
             <asp:TableCell>
<img src="images/khalat.png" class="image" />
             </asp:TableCell>
             <asp:TableCell>
                 <input id="Text1" type="text" />
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                محضرة طعام
            </asp:TableCell>
             <asp:TableCell>
                 5000
            </asp:TableCell>
             <asp:TableCell>
<img src="images/readtfood.jpg"  class="image" />
             </asp:TableCell>
             <asp:TableCell>
                 <input id="Text2" type="text" />
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
               ميكرويف
            </asp:TableCell>
             <asp:TableCell>
                 10000
            </asp:TableCell>
             <asp:TableCell>
<img src="images/micro.jpg" class="image" />
             </asp:TableCell>
             <asp:TableCell>
                 <input id="Text3" type="text" />
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                ابريق تسخين
            </asp:TableCell>
             <asp:TableCell>
                 2000
            </asp:TableCell>
             <asp:TableCell>
<img src="images/brek.jpg" class="image" />
             </asp:TableCell>
             <asp:TableCell>
                 <input id="Text4" type="text" />
            </asp:TableCell>
        </asp:TableRow>
          <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                سخانة ليزرية
            </asp:TableCell>
             <asp:TableCell>
                 4000
            </asp:TableCell>
             <asp:TableCell>
<img src="images/ghas.jpg" class="image" />
             </asp:TableCell>
             <asp:TableCell>
                 <input id="Text5" type="text" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
           <input id="Button1" type="button" value="شراء" onclick="calc()" />

   </div>   
    <script src="Scripts/shopping.js"></script>
</asp:Content>
