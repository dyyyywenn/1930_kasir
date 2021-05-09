/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasir;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Wendy
 */
public class User {
    koneksi koneksi = new koneksi();
    public DefaultTableModel model = new DefaultTableModel();
    
    public void simpan(String id,String user,String pass,String name) throws SQLException{
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "INSERT INTO tbl_user VALUES ('"+id+"','"+user+"','"+pass+"','"+name+"')";
        s.executeUpdate(sql);
    }
    public void edit(String id,String user,String pass,String name) throws SQLException{
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "UPDATE tbl_user set username = '"+user+"', password = '"+pass+"', name = '"+name+"' where id = '"+id+"'";
        s.executeUpdate(sql);
    }
    public void hapus(String id) throws SQLException{
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql = "DELETE FROM tbl_user where id = '"+id+"'";
        s.executeUpdate(sql);
    }
    public void tampil(){
        ResultSet rs;
        String sql = "SELECT * FROM tbl_user order by id";
        String[] kolom = {"ID","Username","Password","Name"};
       
        try {
           Connection c = koneksi.getKoneksi();
            Statement s = c.createStatement();
            rs = s.executeQuery(sql);
            model.setColumnIdentifiers(kolom);
           while(rs.next()){
                Object[] data = new Object[5];
                data[0] = rs.getString("id");
                data[1] = rs.getString("username");
                data[2] = rs.getString("password");
                data[3] = rs.getString("name");
                
                model.addRow(data);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
