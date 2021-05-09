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

/**
 *
 * @author Wendy
 */
public class control_login {
    koneksi koneksi = new koneksi();
    
    public ResultSet login(String username,String password) throws SQLException{
        ResultSet rs;
        Connection c = koneksi.getKoneksi();
        Statement s = c.createStatement();
        String sql ="SELECT * FROM tbl_user where username = '"+username+"' AND password = '"+password+"'";
        rs = s.executeQuery(sql);
        return rs;
    }
}
