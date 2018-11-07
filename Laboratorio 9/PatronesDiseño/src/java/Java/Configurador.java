/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

/**
 *
 * @author ADMIN
 */
public class Configurador {
    private final String url="jdbc:derby://localhost:1527/Formulario";
    private final String sql= "SELECT Nombre, Primer, Segundo, Fecha, Correo, Password FROM Formulario";
    private final String usuario= "Ricardo";
    private final String nombre="Ricardo";
    private final String primer="Blanco";
    private final String segundo="Escobedo";
    private final String fecha="01/04/99";
    private final String correo="Ricardo_gbe@hotmail.com";
    private final String password="8661718098";
    
    private Configurador(){}
    
    private static final Configurador miConfiguracion = new Configurador();

    public String getUrl() {
        return url;
    }

    public String getSql() {
        return sql;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getPrimer() {
        return primer;
    }


    public String getSegundo() {
        return segundo;
    }

    public String getFecha() {
        return fecha;
    }

    public String getCorreo() {
        return correo;
    }

    public String getPassword() {
        return password;
    }

    public static Configurador getMiConfiguracion() {
        return miConfiguracion;
    }
}
