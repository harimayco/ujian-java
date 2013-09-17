/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 
//NAMA PACKAGE GANTI DENGAN NAMA PACKAGE MASING2...
package ujjian.rendy;

import java.io.*;
/**
 *
 * @author odhier
 */
 
 
 
 //NAMA CLASS SILAHKAN GANTI DENGAN NAMA FILE MASING2...
public class UjjianRendy {  

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws IOException {
        
        System.out.print("Masukkan Kode Bus : ");
        String kodebus;
        InputStreamReader isr = new InputStreamReader(System.in);
        BufferedReader kode = new BufferedReader(isr);
        String kodebis = kode.readLine();
                
        System.out.print("Masukkan Jumlah Penumpang : ");
        String temp;
        int jumlah = 0;
        
        
        BufferedReader br = new BufferedReader(isr);
        
        temp = br.readLine();
        
        try{
            //konversi dari string ke integer
            jumlah = Integer.parseInt(temp);
        }catch (NumberFormatException nfe){
            System.out.println("data yang dimasukkan bukan bilangan bulat...");
            System.exit(1);
        }
        // TODO code application logic here
        String kodenamabus = kodebis.substring(3,5);
        String jam = kodebis.substring(7,12);
        String kodetujuan = kodebis.substring(6,7);
        String namabus;
        String tujuan;
        int hargatiket;
        
        switch (kodenamabus) {
            case "AA":
                namabus = "ADI ANUGERAH";
                break;
            case "AB":
                namabus = "ASRI BUANA";
                break;
            case "BB":
                namabus = "BINTANG BARU";
                break;
            case "SC":
                namabus = "SANJAYA";
                break;
            case "TR":
                namabus = "TRIGAYA";
                break;
            default:
                              
                namabus = "Tidak diketahui";
                break;
        }
        
       
        switch (kodetujuan) {
            case "B":
                tujuan = "BANDUNG";
                hargatiket = 300000;
                break;
            case "J":
                tujuan = "JAKARTA";
                hargatiket = 250000;
                break;
            case "N":
                tujuan = "BANYUWANGI";
                hargatiket = 120000;
                break;
            case "S":
                tujuan = "SOLO";
                hargatiket = 85000;
                break;
            default:
                tujuan = "Tidak Diketahui";
                hargatiket = 0;
                break;
        }
        
        int total = hargatiket*jumlah;
        
        //CETAK SEMUA
        System.out.println("Kode Bus : "+kodebis);
        System.out.println("Jumlah Penumpang : "+jumlah);
        System.out.println("Nama Bus Malam : "+namabus);
        System.out.println("Tujuan : "+tujuan);
        System.out.println("Harga Tiket : "+hargatiket);
        System.out.println("Jam Berangkat : "+jam);
        System.out.println("Total : "+total);
    }
}
