/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataBase;

import java.time.LocalDateTime;

/**
 *
 * @author mouloud
 */
public class TableAdmin extends ConnectionGMHDB {
    public int IdAdmin;
    public String FirstName;
    public String LastName;
    public String Username;
    public String Email;
    public String Phone ;
    public String CIN;
    public String Password;
    public String HireDate;   
    
    public TableAdmin(){
        super();
    }
    public void pushTableAdmin(String FirstName, String LastName, String Email, String Phone, String CIN, String Password ) {
        try{
            statementAdmin.executeUpdate("INSERT INTO `admin` (`FirstName`, `LastName`, `Username`, `Email`, `Phone`, `CIN`, `Password`, `HireDate`) VALUES\n" +
            "('"+FirstName+"', '"+LastName+"', '"+FirstName.replaceAll("\\s+","")+"."+LastName.replaceAll("\\s+","")+"', '"+Email+"', '"+Phone+"', '"+CIN+"', '"+Password+"', '"+LocalDateTime.now()+"'); ");
        }catch(Exception e){
            System.out.println("Erreur : "+e);
        }
    }
    public boolean ChercherData(String Username, String Password){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT * FROM Admin WHERE username = '"+Username+"' AND Password = '"+Password+"';");
            return ResultAdmin.next();
            
            
        }catch(Exception e){
            System.out.println("Erreur owner  :  " + e);
            return false;
        }
    }
}
