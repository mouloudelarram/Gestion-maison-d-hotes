/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataBase;

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
    public void pushTableAdmin(String FirstName, String LastName, String Email, String Phone, String CIN, String Password ){
        //...
        
        
    }
}
