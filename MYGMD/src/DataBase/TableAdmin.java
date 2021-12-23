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
    public void pushTableAdmin(String FirstName, String LastName, String Email, String Phone, String CIN, String Password ) throws Exception{
        try{
            statementAdmin.executeUpdate("INSERT INTO `admin` (`FirstName`, `LastName`, `Username`, `Email`, `Phone`, `CIN`, `Password`, `HireDate`) VALUES\n" +
            "('"+FirstName+"', '"+LastName+"', '"+FirstName.replaceAll("\\s+","")+"."+LastName.replaceAll("\\s+","")+"', '"+Email+"', '"+Phone+"', '"+CIN+"', '"+Password+"', '"+LocalDateTime.now()+"'); ");
        }catch(Exception e){
            System.out.println("Error pushTableAdmin table admin : "+e);
            throw new Exception("Error pushTableAdmin table admin : "+e); 
        }finally{
            super.colse();
        }
    }
    public int removeTableAdmin(String username, String CIN){
        try{
            statementAdmin.executeUpdate("delete from demande where Idadmin="+getIdclientTableAdmin(username));
            //return 1 if admin deleted;
            return statementAdmin.executeUpdate("delete from admin where Username='"+username+"' AND CIN='"+CIN+"'");
        }catch(Exception e){
            System.out.println("Error removeTableAdmin table admin :"+e);
            return 0;
        }        
    }
    public boolean ChercherData(String Username, String Password){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT * FROM Admin WHERE username = '"+Username+"' AND Password = '"+Password+"';");
            //return true if there is a data
            return ResultAdmin.next();
        }catch(Exception e){
            System.out.println("Error ChercherData table admin  :  " + e);
            return false;
        }finally{
            super.colse();
        }
    }
     public int getIdclientTableAdmin(String username){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Idadmin FROM admin WHERE Username = '"+username+"' ;");
            this.IdAdmin =0;
            while(ResultAdmin.next()) this.IdAdmin = ResultAdmin.getInt("Idadmin");
            return this.IdAdmin;
        }catch(Exception e){
            System.out.println("Error getIdclientTableAdmin table admin  :  " + e);
            return 0;
        }
    }
}
