/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Empleos;

/**
 *
 * @author ADMIN
 */
public class FabricaEmpleos {
    
    public Empleos getEmpleo(String empleo){

      if(empleo == null){
         return null;
      }		
      if(empleo.equalsIgnoreCase("Cocinero")){
         return new Cocinero();
         
      } else if(empleo.equalsIgnoreCase("Medico")){
         return new Medico();
         
      } else if(empleo.equalsIgnoreCase("Programador")){
         return new Programador();
      }
      
      return null;
   }
    
}
