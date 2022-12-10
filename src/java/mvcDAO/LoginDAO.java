package mvcDAO;
    
import java.awt.HeadlessException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import mvcMODEL.ConnexionDB;
import seguridadRatioWeb.EncriptacionAES;

public class LoginDAO {
    
    public boolean validarLoginCliente(String correoCliente, String passwordCliente) 
        throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeyException, 
        NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException{
        
        
        ConnexionDB ConnexionDB = new ConnexionDB();
        
        PreparedStatement       sqlConsultaPasswordClienteDBEncriptada;
        ResultSet               resultadoConsultaPasswordClienteDBEncriptada;
        
        try{
            
            Connection conn;
            conn = ConnexionDB.coneccionRatioDB();
            
            final String claveEncriptacion = "Ratio@Reg_Cli";
            EncriptacionAES encriptador = new EncriptacionAES();
            
            
            sqlConsultaPasswordClienteDBEncriptada = 
            conn.prepareStatement("SELECT passwordCliente FROM Clientes where correoCliente = '"+correoCliente+"';");
            
            resultadoConsultaPasswordClienteDBEncriptada = sqlConsultaPasswordClienteDBEncriptada.executeQuery();
            
            if (resultadoConsultaPasswordClienteDBEncriptada.next()) {
                String PasswordClienteDBEncriptada = resultadoConsultaPasswordClienteDBEncriptada.getString("passwordCliente");

                /*Desencriptación de PasswordClienteDBEncriptada*/
                String PasswordClienteDBDesencriptada = encriptador.desencriptar(PasswordClienteDBEncriptada, claveEncriptacion);   

                if (passwordCliente.equals(PasswordClienteDBDesencriptada)) {
                    return true;
                }else{
                    return false;
                }
                
            }else{
                return false;
            }
            
            
        }catch(HeadlessException | SQLException e){
            return false;
        }
        
    }
    
    
}
