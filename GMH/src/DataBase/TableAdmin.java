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
            System.out.println("Erreur table admin : "+e);
            throw new Exception("Sql erreur in Table admin pushTableAdmin function"+e);
            
        }
    }
    public int removeTableAdmin(String username, String CIN){
        try{
            statementAdmin.executeUpdate("delete from demande where Idadmin="+getIdclientTableAdmin(username));
            return statementAdmin.executeUpdate("delete from admin where Username='"+username+"' AND CIN='"+CIN+"'");
        }catch(Exception e){
            System.out.println("Erreur Remove table admin :"+e);
            return 0;
        }
    }
    public boolean ChercherData(String Username, String Password){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT * FROM Admin WHERE username = '"+Username+"' AND Password = '"+Password+"';");
            return ResultAdmin.next();
            
            
        }catch(Exception e){
            System.out.println("Erreur table admin  :  " + e);
            return false;
        }
    }
     public int getIdclientTableAdmin(String username){
        try{
            ResultAdmin = statementAdmin.executeQuery("SELECT Idadmin FROM admin WHERE Username = '"+username+"' ;");
            int idadmin =0;
            while(ResultAdmin.next()) idadmin = ResultAdmin.getInt("Idadmin");
            return idadmin;
        }catch(Exception e){
            System.out.println("Erreur table admin  :  " + e);
            return 0;
        }
    }
//     public boolean checkIfAdminExist(String Username, String CIN){
//        try{
//            //System.out.println("id :"+id_offer);
//            ResultAdmin = statementAdmin.executeQuery("SELECT type FROM `admin` WHERE Username = '"+Username+"' and CIN = ''; ");
//            //System.out.println("status :"+ResultAdmin.getBoolean("status"));
//            String var = "";
//            while(ResultAdmin.next()) var=ResultAdmin.getString("type");
//            System.out.println("var :"+var);
//            if (var.equals(Type)){
//                return true;
//            }
//            else
//                return false;
//           
//        }catch(Exception e){
//            System.out.println("erreur check if id exist  offer :"+e);
//            return true;
//        }
//    } 
}
