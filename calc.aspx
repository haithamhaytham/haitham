<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        الفاتورة
    </title>

    <link href="calc.css" rel="stylesheet" />
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" />
    <link href="Content/css/calc.css" rel="stylesheet" />
    <link href="images/power-512.png" rel="shortcut icon" type="image/x-icon" /> 
        <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/shopping.js"></script>
</head>
<body>
    <br />
         <p>  إجمالي الفاتورة</p>                      
    <form id="form1" runat="server">
    <div>
        <table  class="tab11" border="1">
            <tr>
                <td>المنتج</td>
                <td>الكمية</td>
                <td>الاجمالي</td>
            </tr>
            <tr>
                <td>خلاط</td>
                <td id="t1c"></td>
                <td id="s1c">&nbsp;</td>
            </tr>
            <tr>
                <td>محضرة طعام</td>
                <td id="t2c">&nbsp;</td>
                <td id="s2c">&nbsp;</td>
            </tr>
             <tr>
                <td>ميكرويف</td>
                <td id="t3c">&nbsp;</td>
                <td id="s3c">&nbsp;</td>
            </tr>
             <tr>
                <td>ابريق تسخين</td>
                <td id="t4c">&nbsp;</td>
                <td id="s4c">&nbsp;</td>
            </tr>
             <tr>
                <td>سخانة ليزرية</td>
                <td id="t5c">&nbsp;</td>
                <td id="s5c">&nbsp;</td>
            </tr>
            <tr>
              <td>الإجمالي:</td>
                <td id="t6c">&nbsp;</td>
                <td id="s6c" >&nbsp;</td>
                </tr>
        </table>
    </div>
    </form>
    <center>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - الشركة السورية لبيع المنتجات الكهربائية</p>
            </footer>
                </center>
</body>
</html>
