/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataBase;

/**
 *
 * @author mouloud
 */
public class TableOwner extends ConnectionGMHDB {
    public String FirstName;
    public String LastName;
    public String Password;
    
    public TableOwner(){
        super();
    }
    public boolean ChercherData(String FirstName,String LastName, String Password ){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT * FROM OWNER WHERE FirstName = '"+FirstName+"' AND LastName = '"+LastName+"' AND Password = '"+Password+"';");
            return ResultAdmin.next();
            
            
        }catch(Exception e){
            System.out.println("Erreur table owner  :  " + e);
            return false;
        }
    }
}
