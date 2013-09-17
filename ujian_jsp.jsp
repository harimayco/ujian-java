<%-- 
    Document   : ujianJSP
    Created on : Sep 15, 2013, 1:27:43 PM
    Author     : Nama Kamu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form method="post">
                KODE BUS : <input type="text" name="kodebus"><br>
                JUMLAH PENUMPANG : <input type="text" name="jumlah"><br>
                <input type="submit" name="proses" value="PROSES !">
         </form>
        
                   <% 
                       if(request.getParameter("proses")!=null){
                           String kodebus = request.getParameter("kodebus");
                           int jumlah = Integer.parseInt(request.getParameter("jumlah"));
                           String kodenamabus = kodebus.substring(3,5);
                           String jam = kodebus.substring(7,12);
                           String namabus;
                          
                           //kodenamabus = "BB";
                           if ( kodenamabus.equals("AA")){
                               namabus = "ADI ANUGERAH";           
                           }else if(kodenamabus.equals("AB")){
                               namabus = "ASRI BUANA";
                               
                           }else if(kodenamabus.equals("BB")){
                               namabus = "BINTANG BARU";
                              
                           }else if(kodenamabus.equals("SC")){
                               namabus = "SANJAYA";  
                              
                           }else if(kodenamabus.equals("TR")){
                               namabus = "TRIGAYA";
                               
                           }else{
                               namabus = "Tidak diketahui";
                              
                           }
                           
                           
                          String kodetujuan = kodebus.substring(6,7);
                          //String tujuan;
                          String tujuan;
                          //kodetujuan = "B";
                           int hargatiket;
                           if (kodetujuan.equals("B")){
                               tujuan = "BANDUNG";
                               hargatiket = 300000; 
                           }else if(kodetujuan.equals("J")){
                               tujuan = "JAKARTA";
                               hargatiket = 250000;
                           }else if(kodetujuan.equals("N")){
                               tujuan = "BANYUWANGI";
                               hargatiket = 120000;
                           }else if(kodetujuan.equals("S")){
                               tujuan = "SOLO";
                               hargatiket = 85000;
                           }else{
                               tujuan = "Tidak Diketahui";
                               hargatiket = 0;
                           }
                           
                           
                           int total = hargatiket*jumlah;
                           
                           out.print("<hr>Kode Bus : "+kodebus+"<br>");
                           out.print("Jumlah Penumpang : "+jumlah+"<br>");
                           out.print("Nama Bus Malam : "+namabus+"<br>");
                           out.print("Tujuan : "+tujuan+"<br>");
                           out.print("Harga Tiket : "+hargatiket+"<br>");
                           out.print("Jam Berangkat : "+jam+"<br>");
                           out.print("Total : "+total+"<br>");
                           }
                       
                           
                        
                    %>
    </body>
</html>
