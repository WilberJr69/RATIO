package mvcMODEL;

public class Cliente {
    
    private String correoClietne;
    private String nombreCliente;
    private String celularCliente;
    private String passwordCliente;

    public Cliente(String correoClietne, String nombreCliente, String celularCliente, String passwordCliente) {
        this.correoClietne = correoClietne;
        this.nombreCliente = nombreCliente;
        this.celularCliente = celularCliente;
        this.passwordCliente = passwordCliente;
    }

    public Cliente() {
    }
    

    public String getCorreoClietne() {
        return correoClietne;
    }

    public void setCorreoClietne(String correoClietne) {
        this.correoClietne = correoClietne;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getCelularCliente() {
        return celularCliente;
    }

    public void setCelularCliente(String celularCliente) {
        this.celularCliente = celularCliente;
    }

    public String getPasswordCliente() {
        return passwordCliente;
    }

    public void setPasswordCliente(String passwordCliente) {
        this.passwordCliente = passwordCliente;
    }
    
    
    
}
