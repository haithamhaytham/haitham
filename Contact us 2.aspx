<%@ Page Title="Contact us2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact us 2.aspx.cs" Inherits="homework.Contact" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/css/contactus2.css" rel="stylesheet" />
  <div style="height: 663px; margin-right: 0px">
            <script runat="server">
                int q1 = 0;
                int q2 = 0;
                int q3 = 0;
                int q4 = 0;
                int q5 = 0;
                  
                public Boolean Validatename(String name)
                    
                { var letters = @"^[A-Za-z ضصثقفغعهخحجدطكمنتالبيسشئءؤرلاىةوزظلآألإإ]+$";
                    Regex r = new Regex(letters);
                    if (r.IsMatch(name))
                        return true;
                    q1 = 1;
                    return false;
                }

                public Boolean Validateemail(String email)
                {
                    var letters = @"^\w+([\.-]?\w+)*@\w+([\.-]?\\w+)*(\.\w{2,3})+$";
                    Regex r = new Regex(letters);
                    if (r.IsMatch(email))
                        return true;
                    q2 = 1;
                    return false;
                }
                public Boolean Validatedatee(String datee)
                {

                    DateTime dd = Convert.ToDateTime(DateTime.Now.ToString());
                    DateTime dt = Convert.ToDateTime(t3.Text);
                    DateTime dtt = Convert.ToDateTime("1930-01-01");
                    int res = DateTime.Compare(dt,dd);
                    int ress = DateTime.Compare(dt, dtt);
                    if ((res < 0  ) & ( ress > 0 ))
                    { q3 = 1;
                        return true;

                    }
                    else

                        return false;
                }

                public Boolean Validatenumber(String number)
                {
                    var phoneno =@"^0{1}9{1}\d{8}$";
                    Regex z = new Regex(phoneno);
                    if (z.IsMatch(number))
                    {   q4 = 1;
                        return true;
                    }
                    else
                    {

                        return false;
                    }
                }

                public Boolean Validatemass(String mass)
                {
                    if (!String.IsNullOrEmpty(mass))
                    {    q5 = 1;
                        return true;
                    }
                    else {
                        return false;

                    }

                }

                protected void btn1_Click(object sender, EventArgs e)
                {
                  
                    String name = t1.Text;
                    Boolean checkele1 = Validatename(name);
                    if (!checkele1)
                        Label7.Text = "لا يحوي الاسم محارف خاصة";
                    else
                        Label7.Text = "";

                    String email = t2.Text;
                    Boolean checkele2 = Validateemail(email);
                    if (!checkele2)
                        Label82.Text = "البريد الالكتروني غير صالح";
                    else
                        Label82.Text = "";

                    String datee = t3.Text;
                    Boolean checkele3 = Validatedatee(datee);
                    if (!checkele3)
                        Label92.Text = "التاريخ غير مقبول";
                    else
                        Label92.Text = "";

                    String number = t4.Text;
                    Boolean checkele4 = Validatenumber(number);
                    if (!checkele4)
                        Label102.Text = "الرقم غير صالح";
                    else
                        Label102.Text = "";

                    String mass = t5.Text;
                    Boolean checkele5 = Validatemass(mass);
                    if (!checkele5)
                        Label112.Text = "لا يمكن أن يكون فارغ";
                    else
                        Label112.Text = "";


                    if (checkele1 && checkele2 && checkele4 && checkele3 && checkele5)
                    {
                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = "workstation id=haithamdb.mssql.somee.com;packet size=4096;user id=haitham12345db;pwd=147852369;data source=haithamdb.mssql.somee.com;persist security info=False;initial catalog=haithamdb";

                        String sql = "insert into cutomer values (@name,@date,@email,@massage,@mobile)";
                        SqlCommand cmd_add = new SqlCommand(sql, con);
                        cmd_add.CommandType = CommandType.Text;
                        cmd_add.Parameters.AddWithValue("@name", t1.Text);
                        cmd_add.Parameters.AddWithValue("@email", t2.Text);
                        cmd_add.Parameters.AddWithValue("@date", t3.Text);
                        cmd_add.Parameters.AddWithValue("@mobile", t4.Text);
                        cmd_add.Parameters.AddWithValue("@massage", t5.Text);
                        con.Open();
                        cmd_add.ExecuteNonQuery();
                        con.Close();
                        t1.Text = "";
                        t2.Text = "";
                        t3.Text = "01/01/1900";
                        t4.Text = "";
                        t5.Text = "";
                    }
                }

           </script>

            <asp:Table ID="Table11" runat="server" CssClass="tablecon" Font-Bold="True">
            <asp:TableRow>
            <asp:TableCell  Width="20%">
            <asp:Label ID="Label52" runat="server" Text="الاسم:" style="text-align: center" BorderColor="White" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" ></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="right" Width="40%">
            <asp:TextBox ID="t1" runat="server" BorderColor="Black" BorderStyle="Outset" Height="50px" Width="300px" MaxLength="10"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell Width="40%" >
            <asp:Label ID="Label7" runat="server" Text="" style="text-align: right"  Font-Size="14px" ForeColor="red"></asp:Label>
            </asp:TableCell>
             </asp:TableRow>
            <asp:TableRow>
             <asp:TableCell>   
            <asp:Label ID="Label12" runat="server" Text="البريد الالكتروني:" style="text-align: center" Font-Size="Large" ForeColor="Black"></asp:Label>
            </asp:TableCell>
             <asp:TableCell>
              <asp:TextBox ID="t2" runat="server"  BorderColor="Black" BorderStyle="Outset" Height="50px" Width="300px"></asp:TextBox>
             </asp:TableCell>
              <asp:TableCell >
              <asp:Label ID="Label82" runat="server" Text="" style="text-align:center"  Font-Size="14px" ForeColor="red">  </asp:Label>
              </asp:TableCell>
               </asp:TableRow>
                <asp:TableRow>
                 <asp:TableCell>  
                 <asp:Label ID="Label22" runat="server" Text="تاريخ الولادة:      " style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
                   </asp:TableCell>
                  <asp:TableCell>
            
                      <asp:TextBox ID="t3" runat="server"  BorderColor="Black" BorderStyle="Outset" Height="50px" Width="300px" Text="01/01/1900" > 
                      </asp:TextBox>
                 </asp:TableCell>
                <asp:TableCell >
                 <asp:Label ID="Label92" runat="server" Text="" style="text-align: center"  Font-Size="14px" ForeColor="red"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
    <asp:TableCell>
      <asp:Label ID="Label32" runat="server" Text="رقم الموبايل:" style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
        </asp:TableCell>
     <asp:TableCell>
<asp:TextBox ID="t4" runat="server" BorderColor="Black" BorderStyle="Outset" Height="50px" Width="300px" TextMode="Phone"></asp:TextBox>

         </asp:TableCell>
    <asp:TableCell >
<asp:Label ID="Label102" runat="server" Text="" style="text-align: center"  Font-Size="14px" ForeColor="red"></asp:Label>
                        </asp:TableCell>
     </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell>
      <asp:Label ID="Label42" runat="server" Text=" الرسالة:" style="text-align: center" Font-Size="Large" ForeColor="Black" ></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            
            <asp:TextBox ID="t5" runat="server" Height="150px" Rows="3" Width="500px" BorderColor="Black" BorderStyle="Outset"  BackColor="White" Columns="4" Font-Italic="False" Font-Size="14pt" TextMode="MultiLine"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell >
<asp:Label ID="Label112" runat="server" Text="" style="text-align:center"  Font-Size="14px" ForeColor="red"></asp:Label>
                        </asp:TableCell>
         </asp:TableRow>
                </asp:Table>
             
            <asp:Button ID="btn1" runat="server" Text="send" OnClick="btn1_Click" Width="146px" Height="52px" />
     </div>      
</asp:Content>
