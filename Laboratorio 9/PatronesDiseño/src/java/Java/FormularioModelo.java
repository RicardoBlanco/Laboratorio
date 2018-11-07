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
public class FormularioModelo {
    private String nombre;
    private String primer;
    private String segundo;
    private String fecha;
    private String correo;
    private String password;
    private boolean nombreC;
    private boolean primerC;
    private boolean segundoC;
    private boolean fechaC;
    private boolean correoC;
    private boolean passwordC;
    
    Configurador miConfig = Configurador.getMiConfiguracion();
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        if(miConfig.getNombre().equals(nombre)){
            nombreC = true;
            this.nombre = nombre;
        }else{
            nombreC = false;
        }
    }

    public String getPrimer() {
        return primer;
    }

    public void setPrimer(String primer) {
        if(miConfig.getPrimer().equals(primer)){
            primerC = true;
            this.primer = primer;
        }else{
            primerC = false;
        }
    }
    public String getSegundo() {
        return segundo;
    }

    public void setSegundo(String segundo) {
        if(miConfig.getSegundo().equals(segundo)){
            segundoC = true;
            this.segundo = segundo;
        }else{
            segundoC = false;
        }
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        if(miConfig.getFecha().equals(fecha)){
            fechaC = true;
            this.fecha = fecha;
        }else{
            fechaC = false;
        }
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        if(miConfig.getCorreo().equals(correo)){
            correoC = true;
            this.correo = correo;
        }else{
            correoC = false;
        }
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        if(miConfig.getPassword().equals(password)){
            passwordC = true;
            this.password = password;
        }else{
            passwordC = false;
        }
    }
    
    public boolean comparar(){
      if(nombreC==true && primerC==true && segundoC==true && fechaC==true && correoC==true && passwordC==true){
        return true;
      }else{ 
        return false;
      }
    }
}
