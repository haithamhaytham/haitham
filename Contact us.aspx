<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact us.aspx.cs" Inherits="homework.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/css/contactus.css" rel="stylesheet" />
    <%--<div " style="text-align: center; top: -16px; right: 0px; height: 598px; width: 525px">--%>
        <div style="height:622px; margin-right: 0px">
            <asp:Table ID="Table1" runat="server" CssClass="tablecon" Font-Bold="True" Height="533px">
                <asp:TableRow>
                    <asp:TableCell  Width="20%">
<asp:Label ID="Label5" runat="server" Text="الاسم:" style="text-align: center" BorderColor="White" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"></asp:Label>

                        </asp:TableCell>
                    <asp:TableCell HorizontalAlign="right" Width="40%">
                        <input id="TextBox1" type="text" maxlength="10" class="text1" />
   </asp:TableCell>
                    <asp:TableCell Width="40%" >
                        <h3 id="erorr1"> </h3>
                        <input id="Label9" type="text" disabled style="border:none"  />
                        </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
                    <asp:TableCell>   
    <asp:Label ID="Label1" runat="server" Text="البريد الالكتروني:" style="text-align: center" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </asp:TableCell>
    <asp:TableCell>
        <input id="TextBox2" type="text"   class="text1"/>
        </asp:TableCell>
    <asp:TableCell >
        <h3 id="erorr2"> </h3>
        <input id="Label8" type="text" disabled style="border:none" />
                        </asp:TableCell>
    </asp:TableRow>
<asp:TableRow>
                    <asp:TableCell>  
      <asp:Label ID="Label2" runat="server" Text="تاريخ الولادة:      " style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
                        </asp:TableCell>
    <asp:TableCell>
        <input id="TextBox3" type="date" class="text1"/>
        </asp:TableCell>
    <asp:TableCell >
        <h3 id="erorr3"> </h3>
        <input id="Label10" type="text" disabled style="border:none"  class:"label1"/>
                        </asp:TableCell>
    </asp:TableRow>
<asp:TableRow>
    <asp:TableCell>
      <asp:Label ID="Label3" runat="server" Text="رقم الموبايل:" style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
        </asp:TableCell>
     <asp:TableCell>
         <input id="TextBox4" type="text" class="text1" />
         </asp:TableCell>
    <asp:TableCell >
        <h3 id="erorr4"> </h3>
        <input id="Label11" type="text" disabled style="border:none" class:"label1"/>
                        </asp:TableCell>
     </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell>
      <asp:Label ID="Label4" runat="server" Text=" الرسالة:" style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <textarea id="TextArea1" rows="3" class="text2" ></textarea>
        </asp:TableCell>
        <asp:TableCell >
            <h3 id="erorr5"> </h3>
            <input id="Label12" type="text" disabled style="border:none" class:"label1" />
                        </asp:TableCell>
         </asp:TableRow>
                </asp:Table>
    <br />
            <input id="Button1" type="button" value="ارسال" class="btn-success" onclick="send()" />
            
        </div>
  <%--  </div>--%>
    <script src="Scripts/contactsus.js"></script>
    

</asp:Content>

