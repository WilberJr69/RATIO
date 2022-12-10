package mvcDAO;

import java.awt.HeadlessException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import mvcMODEL.ConnexionDB;
import seguridadRatioWeb.EncriptacionAES;

public class RegisterDAO {
    
    
        public void registrarClienteDB(String correoCliente, String nombreCliente, String celularCliente,  String passwordCliente) 
                throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException, 
                NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException{
            
            ConnexionDB ConnexionDB = new ConnexionDB();
        
        try {
            
            Connection conn;
            conn = ConnexionDB.coneccionRatioDB();
            
            final String claveEncriptacion = "Ratio@Reg_Cli";
            EncriptacionAES encriptador = new EncriptacionAES();
            String passwordClietnEncriptada = encriptador.encriptar(passwordCliente, claveEncriptacion);
            
            String sql = "INSERT clientes (correoCliente, nombreCliente, celularCliente, passwordCliente) values "
                    + "('"+correoCliente+"','"+nombreCliente+"','"+celularCliente+"','"+passwordClietnEncriptada+"');";
                
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
                
            preparedStmt.execute();
                
            //conn.close();

            } catch (HeadlessException | SQLException e) {
                //JOptionPane.showMessageDialog(null,"ERROR AL REALIZAR SOLICITUD CON DATABASE");
                
            }
        
        
    }
        
        
        public boolean validarRegistroClienteDB(String correoCliente, String nombreCliente, String celularCliente,  String passwordCliente) 
                throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException, 
                NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException{
            
            ConnexionDB ConnexionDB = new ConnexionDB();
        
        try {
            
            Connection conn;
            conn = ConnexionDB.coneccionRatioDB();
            
            final String claveEncriptacion = "Ratio@Reg_Cli";
            EncriptacionAES encriptador = new EncriptacionAES();
            String passwordClietnEncriptada = encriptador.encriptar(passwordCliente, claveEncriptacion);
            
            String sql = "INSERT clientes (correoCliente, nombreCliente, celularCliente, passwordCliente) values "
                    + "('"+correoCliente+"','"+nombreCliente+"','"+celularCliente+"','"+passwordClietnEncriptada+"');";
                
            PreparedStatement preparedStmt = conn.prepareStatement(sql);
                
            preparedStmt.execute();
            
            return true;

            } catch (HeadlessException | SQLException e) {
                return false;
            }
        
        
    }
        
        
        
        
        
        
        
        
        
        
    
}
