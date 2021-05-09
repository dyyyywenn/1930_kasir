/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasir;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Wendy
 */
public class DataBrg {
    koneksi koneksi = new koneksi();
     public DefaultTableModel modelBarang = new  DefaultTableModel();
    public void simpan(String kode,String nama,int stok,int harga) throws SQLException{
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "INSERT INTO tbl_barang VALUES('"+kode+"','"+nama+"','"+stok+"','"+harga+"')";
        s.executeUpdate(sql);
    }
    
     public void edit(String kode,String nama,int stok,int harga) throws SQLException{
         Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "UPDATE tbl_barang set nama_barang = '"+nama+"', stok = '"+stok+"', harga = '"+harga+"' WHERE kode_barang = '"+kode+"' ";
        s.executeUpdate(sql);
    }
     public void hapus(String kode) throws SQLException{
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "DELETE FROM tbl_barang WHERE kode_barang = '"+kode+"'";
        s.executeUpdate(sql);
    }
     
     public void tampil() throws SQLException{
          ResultSet rs;
          Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        try {
//            String sql = "SELECT * FROM masterbarang WHERE nama_barang LIKE '%" + nama + "%'";
           String sqli= "SELECT * FROM tbl_barang" ;
            String[] kolom = {"Kode Barang","Nama Barang","Stok","Harga"};
            modelBarang.setColumnIdentifiers(kolom);
            rs = s.executeQuery(sqli);
            while(rs.next()){
            Object[] data = new Object[4];
            data[0] = rs.getString("kode_barang");
            data[1] = rs.getString("nama_barang");
            data[2] = rs.getString("stok");
            data[3] = rs.getString("harga");
          
            modelBarang.addRow(data);
            
            
        }
        } catch (SQLException ex) {
            Logger.getLogger(DataBrg.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
